local classes = require("classes")
local myparser = require("myparser")
local componentbuilder = require("componentbuilder")
local Event = require("Event")

local Factory = classes.class()

Factory.MISSING = "FACTORY_MISSING_EVENT"
Factory.OVERRIDE = "FACTORY_OVERRIDE_EVENT"

--[[
@memberof Factory
@brief Initializes the factory. Parses the configuration files and initialized the factory so that it's ready to create instances of this module's actors.
--]]
Factory.init = function(self, params)
    log(self, "Factory:init", tostring(params.modelFile), tostring(params.viewFile), tostring(params.controlFile), tostring(params.serviceFile))
    
    self.context = params.context    
    --self.objects = {}    
    log(self, "Factory:init model", params.modelFile, params.modelPath)
    self.model = myparser.get(params.modelFile, params.modelPath) or {}       
    log(self, "Factory:init model", tostring(self.model))
    
    local viewParams = myparser.get(params.viewFile, params.viewPath) or {}
    self.views = componentbuilder.build(viewParams)
    log(self, "Factory:init views", tableLength(self.views))
    
    local commandParams = myparser.get(params.controlFile, params.controlPath) or {}
    self.commands = componentbuilder.build(commandParams)
    log(self, "Factory:init commands", tableLength(self.commands))
    
    local serviceParams = myparser.get(params.serviceFile, params.servicePath) or {}
    self.services = componentbuilder.build(serviceParams)
    log(self, "Factory:init services", tableLength(self.services))
end

local get = function(self, table, name)
    --log(self, "Factory:_get", name)
    local value = table[name]
    if value then
        return value
    else
        log(self, "Factory:_get, no value for " .. name)
        self:postEvent(Factory.MISSING,
            {
                name = name
            }
        )
    end
    return nil
end

--[[local register = function(self, table, name, registered)
    log(self, "Factory:_register", name, tostring(registered))
    local old = table[name]
    if old then
        log(self, "Factory:_register", name,"Replacing " .. tostring(old))
        self:postEvent(Factory.OVERRIDE, 
            {
                name = name,
                old = old,
                new = registered
            }            
        )
    end
    table[name] = registered
end--]]

--[[
@memberof Factory
@brief Returns the model (a table that looks just like the model configuration file)
@return The model
--]]
Factory.getModel = function(self)
    return self.model
end

Factory.getComponent = function(self, componentTable, name, context, params, addParams)
    local componentData = get(self, componentTable, name)
    if (componentData == nil) then
        return nil
    end
    
    local componentParams = params or componentData.params or {}
    if (addParams) then
        for k,v in pairs(addParams) do
            if componentParams[k] == nil then
                componentParams[k] = v
            end
        end
    end
    
    componentParams.context = context
    return componentData.class.new(componentParams)
end

--[[
@memberof Factory
@brief Returns a new instance of a specific view
@param [string] The name of the view (as defined in the configuration file)
@param [table] The active context instance
@param [table] The initialization parameters for the view
@return [table] The new view instance
--]]
Factory.getView = function(self, name, context, params)
    return self:getComponent(self.views, name, context, params)
end

--[[
@memberof Factory
@brief Returns a new instance of a specific command
@param [string] The name of the command (as defined in the configuration file)
@param [table] The active context instance
@param [table] The initialization parameters for the command
@return [table] The new command instance
--]]
Factory.getCommand = function(self, name, context, params)
    local addParams = {}
    addParams.commandFactory = self
    return self:getComponent(self.commands, name, context, params, addParams)
end

--[[
@memberof Factory
@brief Returns a new instance of a specific service
@param [string] The name of the service (as defined in the configuration file)
@param [table] The active context instance
@param [table] The initialization parameters for the service
@return [table] The new service instance
--]]
Factory.getService = function(self, name, context, params)
    return self:getComponent(self.services, name, context, params)
end

Factory.setService = function(self, name, class, params)
    self.services[name] = nil
    self.services[name] = {class = class, params = params}
end

-- convenience method used internally
Factory.postEvent = function(self, eventId, payload)
    if self.context then
        self.context.eventManager:postEvent(Event.new
            (
                {
                    eventId = eventId,
                    payload = payload
                }
            )
        )
    end
end

return Factory