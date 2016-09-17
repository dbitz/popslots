-- Actor
--[[
Base class for any context-aware object. The Actor class is just an object with the context as a member, and a few convenience methods to help you type less
--]]

local classes = require("classes")

local Actor = classes.class()

--[[
@memberof Actor
@brief initializes the Actor
@param [table] This table should have a field called context with the active context
--]]
Actor.init = function(self, params)
    --log(self, "Actor:init")
    local Context = require("Context")
    self.context = Context.ensure(params.context)
    if not self.context then
        log(self, "Actor:init - bad context")
    end    
end

--[[
@memberof Actor
@brief Posts an event to the context's event manager
@param [table] The event to be posted
--]]
Actor.postEvent = function(self, event)
    --log(self, "Actor:postEvent", event.eventId)
    if self.context then
        event.dispatcher = self
        event.context = self.context
        self.context.eventManager:postEvent(event)
    else
        log(self, "Actor:postEvent - bad context")
    end
end

--[[
@memberof Actor
@brief Pushes an event to the context's event manager
@param [table] The event to be pushed
--]]
Actor.pushEvent = function(self, event)
    --log(self, "Actor:pushEvent", event.eventId)
    if self.context then
        event.dispatcher = self
        self.context.eventManager:pushEvent(event)
    else
        log(self, "Actor:pushEvent - bad context")
    end
end

--[[
@memberof Actor
@brief Add a listener on the context's event manager
@param [string] The event id
@params [table] The listener is a table that looks like:
        {
            selfReference = [table|optional] the self reference if our callback is an instance method (leave nil for static methods, ie)
            callback = [function] the callback function (the event will be passed as it's parameter)
            dispatcher = [table|optional] If not nil the callback will be called only for events with this dispatcher
        }
--]]
Actor.addListener = function (self, eventId, listener)
    --log(self, "Actor:addListener", eventId, tostring(listener.selfReference))
    if self.context then
        self.context.eventManager:addListener(eventId, listener)
    else
        log(self, "Actor:addListener - bad context")
    end    
end

--[[
@memberof Actor
@brief Remove a listener on the context's event manager
@param [string] The event id
@params [table] The listener
--]]
Actor.removeListener = function (self, eventId, listener)
    --log(self, "Actor:removeListener", eventId, tostring(listener.selfReference))
    if self.context then
        self.context.eventManager:removeListener(eventId, listener)
    else
        log(self, "Actor:removeListener - bad context")
    end    
end

--[[ 
@memberof Actor
@brief Get's the base model object for the active context
@return The model
--]]
Actor.getModel = function (self)
    --log(self, "Actor:getModel", eventId, tostring(listener.selfReference))
    if self.context then
        return self.context:getModel()
    else
        log(self, "Actor:getModel - bad context")
    end
    return nil
end

--[[ 
@memberof Actor
@brief Get's the base view object for the active context
@return The view
--]]
Actor.getView = function (self, eventId, listener)
    --log(self, "Actor:getView", eventId, tostring(listener.selfReference))
    if self.context then
        return self.context:getView()
    else
        log(self, "Actor:getView - bad context")
    end    
    return nil
end

--[[ 
@memberof Actor
@brief report bi in debug level
--]]
Actor.biDebug = function (self, context, action, params)
    if self.context then
        return self.context:biDebug(context, action, params)
    else
        log(self, "Actor:getView - bad context")
    end    
    return nil
end

--[[ 
@memberof Actor
@brief report bi in usage level
--]]
Actor.biUsage = function (self, context, action, params)
    if self.context then
        return self.context:biUsage(context, action, params)
    else
        log(self, "Actor:getView - bad context")
    end    
    return nil
end

--[[ 
@memberof Actor
@brief report kpi in usage level
--]]
Actor.biKpi = function (self, context, action, params)
    if self.context then
        return self.context:biKpi(context, action, params)
    else
        log(self, "Actor:getView - bad context")
    end    
    return nil
end

--[[ 
@memberof Actor
@brief report error in usage level
--]]
Actor.biError = function (self, action, params)
    if self.context then
        return self.context:biError(action, params)
    else
        log(self, "Actor:getView - bad context")
    end    
    return nil
end

return Actor