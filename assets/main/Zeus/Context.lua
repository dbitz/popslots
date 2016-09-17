--[[
Main class of the MVC framework.

The Context class should be subclassed for each new MVC module. It serves as a hub that gives access to the eventmanager, factory, as well as all of the context's actors.
--]]

local classes = require("classes")
local mytable = require("mytable")

local EventManager = require("EventManager")
local Factory = require("Factory")
local View = require("View")
local Controller = require("Controller")
local AnalyticsReporter = require("AnalyticsReporter")

bindModule("Events")

local Context = classes.class()


--[[
@memberof Context
@brief Initializes the Context base class.
@param [table] A table with initilization parameters (see BootStrap)
--]]
Context.init = function(self, params)
    log(self, "Context:init")
    self.feature = params.feature or ""
    self.biLevel = params.biLevel or AnalyticsReporter.BI_LEVELS.DEBUG
    -- init the event manager
    self.eventManager = EventManager.new()
    self.analyticsReporter = AnalyticsReporter.new({ feature = self.feature, biLevel = self.biLevel })
    
    -- init the factory
    self.factory = Factory.new(
        {
            context = self,
            modelFile = params.modelFile,
            modelPath = params.modelPath,
            viewFile = params.viewFile,
            viewPath = params.viewPath,
            controlFile = params.controlFile,
            controlPath = params.controlPath,
            serviceFile = params.serviceFile,
            servicePath = params.servicePath
        }
    )
    
    self.updateables = {}
    
    -- init the model
    self.model = self.factory:getModel() or {}
    mytable.override(self.model, params.serverModel)
    self.basePath = params.basePath
    log(self, "", "base path", tostring(self.basePath))
    
    local componentParams = 
    {
        context = self
    }
    
    -- create the base view
    self.view = View.new(componentParams)    
    
    -- create the controller
    self.controller = Controller.new(componentParams)    
    
    -- call overriden initialization functions (these functions are implemented in the Context subclasses)
    self:initModel()
    self:initView()
    self:initController()
end

--[[
@memberof Context
@brief Destroys the context
--]]
Context.destroy = function(self)
    -- clear updatetables
    self.updateables = {}
    self.eventManager:clearAllEvents()
    self.isDestroyed = true
end

--[[
@memberof Context
@brief Gets the base model object
@return The model
--]]
Context.getModel = function(self)
    return self.model
end

--[[
@memberof Context
@brief Gets the base view object
@return The view
--]]
Context.getView = function(self)
    return self.view
end

--[[
@memberof Context
@brief Add an updateable component. The context will call an update() function on it on every frame
@param [table] The updateable object. Must have an update() member function
--]]
Context.addUpdateable = function(self, updateable)
    self.updateables[updateable] = true
end

--[[
@memberof Context
@brief Removes an updateable component.
@param [table] The updateable object
--]]
Context.removeUpdateable = function(self, updateable)
    self.updateables[updateable] = nil
end

--[[
@memberof Context
@brief This function is called by Bootstrap on every frame. It updates the event manager and calls update() on any objects added with addUpdateable()
@param [number] The time since the last update
--]]
Context.update = function(self, dt)
    --log(self, "Context:update")
    for updateable, active in pairs(self.updateables) do
        if active then 
            updateable:update(dt)
        end        
    end
    
    self.eventManager:processEvents(dt)
end

-- override these to initialize Context subclasses

--[[
@memberof Context
@brief Default implementation. Should be overriden by subclasses
--]]
Context.initModel = function()
end

--[[
@memberof Context
@brief Default implementation. Should be overriden by subclasses
--]]
Context.initView = function()
end

--[[
@memberof Context
@brief Default implementation. Should be overriden by subclasses
--]]
Context.initController = function()
end

Context.listenToExternalEvent = function(self, eventId, commandId)    
    if (self.externalEventsIds == nil) then
        self.externalEventsIds = {}
    end
    local listenerId
    if self.listenerId then
        listenerId = self.listenerId .. "_" .. eventId
    else
        listenerId = eventId
    end
    
    Events.listenTo(eventId, self, self.onExternalEvent, listenerId)
    if (commandId ~= nil) then
        self.controller:mapCommand(eventId, commandId)
    end

    table.insert(self.externalEventsIds, eventId)
end

Context.onExternalEvent = function(self, event)
    --if (self.isDestroyed ~= true) then
        -- execute the command binded to this event
        local Event = require("Event")
        self.eventManager:postEvent(
            Event.new(
                {
                    eventId = event.eventId,
                    dispatcher = self,
                    payload = event
                }
            )        
        )

    --end
end

Context.removeExternalEventListeners = function(self)
    if (self.externalEventsIds) then
        for index, eventId in ipairs(self.externalEventsIds) do
            Events.removeEventListener(eventId, eventId)
        end

        self.externalEventsIds = nil
    end
end

Context.biDebug = function (self, context, action, params)
    return self.analyticsReporter:biDebug(context, action, params)
end

Context.biUsage = function (self, context, action, params)
    return self.analyticsReporter:biUsage(context, action, params)
end

Context.biKpi = function (self, context, action, params)
    return self.analyticsReporter:biKpi(context, action, params)
end

Context.biError = function (self, action, params)
    return self.analyticsReporter:biError(action, params)
end

return Context