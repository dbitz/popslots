local classes = require("classes")

--[[
@class EventManager
@brief Maps events to listeners and manages the listeners.
--]]
local EventManager = classes.class()

--[[
@memberof EventManager
@brief Initializes the event manager
--]]
EventManager.init = function(self, params)
    --log(self, "EventManager:init ")
    self.processing = false
    self.eventQueue = {}
    self.listeners = {}
    self.newListeners = {}
    self.deadListeners = {}
end

-- adds a listener to the event id's listener list if it isn't already there.
local addListener = function(listeners, eventId, listener)
    --log(listeners, "EventManager._addListener", eventId)
    if not listeners[eventId] then
        listeners[eventId] = {}
    end
    for i, l in ipairs(listeners[eventId]) do
        -- listener already exists - no doubles
        if listener.callback == l.callback and listener.dispatcher == l.dispatcher and l.selfReference == listener.selfReference then
            --log(listeners, "EventManager._addListener : listener already exists", tostring(listener.selfReference), tostring(listener.callback), tostring(listener.dispatcher))
            return
        end
    end
    table.insert(listeners[eventId], listener)
    --log(listeners, "EventManager._addListener : adding listener", tostring(listener.selfReference), tostring(listener.callback), tostring(listener.dispatcher), " Count", #(listeners[eventId]))
end

-- removes a listener from the event id's listener list if it's there.
local removeListener = function(listeners, eventId, listener)
    --log(listeners, "EventManager._removeListener", eventId)
    if listeners[eventId] then
        for i, l in ipairs(listeners[eventId]) do            
            if listener.callback == l.callback and listener.dispatcher == l.dispatcher and listener.selfReference == l.selfReference then                
                table.remove(listeners[eventId], i)
                --log(listeners, "EventManager._removeListener : removing listener", tostring(listener.selfReference), tostring(listener.callback), tostring(listener.dispatcher), " Count", #(listeners[eventId]))
            end
        end
    end
end

--[[
@memberof EventManager
@brief Adds a listener for the event id.
@param [string] The event id to listen for.
@param [table] Named param table: {selfReference, callback[function], dispatcher}
--]]
EventManager.addListener = function(self, eventId, listener)
    if not self.processing then
        addListener(self.listeners, eventId, listener)
    else
        table.insert(self.newListeners, {eventId = eventId, listener = listener})
    end
end

--[[
@memberof EventManager
@brief Removes a listener for the event id.
@param [string] The event id to listen for.
@param [table] Named param table: {selfReference, callback[function], dispatcher}
--]]
EventManager.removeListener = function(self, eventId, listener)
    if not self.processing then
        removeListener(self.listeners, eventId, listener)
    else
        table.insert(self.deadListeners, {eventId = eventId, listener = listener})
        -- check the newListeners list for listeners and remove them
        for index, listenerData in ipairs(self.newListeners) do
            if (listenerData.eventId == eventId) then
                local newListener = listenerData.listener
                if (newListener.selfReference == listener.selfReference and 
                    newListener.callback == listener.callback and
                    newListener.dispatcher == listener.dispatcher) then
                    table.remove(self.newListeners, index)
                    break
                end
                
            end
            
        end
        
    end
end

-- dispatches the callbacks for an event
local isListenerDead = function(manager, eventId, listenerCheck)
    local found = false
    for i, listenerData in ipairs(manager.deadListeners) do
        if (listenerData.eventId == eventId) then
            local listener = listenerData.listener
            if (listener.selfReference == listenerCheck.selfReference and
                listener.callback == listenerCheck.callback and
                listener.dispatcher == listenerCheck.dispatcher) then
                found = true
                break
            end
                                    
        end
        
    end
    
    return found
end

-- dispatches the callbacks for an event
local dispatchEvent = function(manager, event)
    local listeners = manager.listeners[event.eventId]
    --log(self, "EventManager:dispatchEvent ", event.eventId)
    if listeners then
        for i, listener in ipairs(listeners) do
            --log("\t", event.eventId, tostring(listener.selfReference), tostring(listener.dispatcher), tostring(listener.dispatcher), " -- ", tostring(event.dispatcher))
            
            if ((not listener.dispatcher or listener.dispatcher == event.dispatcher) and isListenerDead(manager, event.eventId, listener) == false) then
                --log("calling listener", event.eventId, tostring(listener.selfReference), tostring(listener.callback), tostring(event.dispatcher))
                if listener.selfReference then
                    -- callback to an instance method
                    listener.callback(listener.selfReference, event)
                else
                    -- static callback
                    listener.callback(event)
                end
            end            
        end
    end    
end

--[[
@memberof EventManager
@brief Push an event. The event will be dispatched immediately bypassing the queue.
@param [Event] The event to be pushed. 
--]]
EventManager.pushEvent = function(self, event)
    --log(self, "EventManager:pushEvent event:"..tostring(event))
    dispatchEvent(self, event)
end

--[[
@memberof EventManager
@brief Post an event. The event will be added to a queue and processed in the next frame.
@param [Event] The event to be posted. 
--]]
EventManager.postEvent =  function(self, event)
    table.insert(self.eventQueue, event)   
    --log(self, "EventManager:postEvent event: "..tostring(event.eventId), #(self.eventQueue))
end

--[[
@memberof EventManager
@brief Processes the event queue. Called on every update.
--]]
EventManager.processEvents = function(self)
    
    self.processing = true
    
    local eventQueue = self.eventQueue
    if (self.eventQueue[1] ~= nil) then
        self.eventQueue = {}
    end
    for i, event in ipairs(eventQueue) do
        dispatchEvent(self, event)
    end
    
    self.processing = false
    
    for i, deadListener in pairs(self.deadListeners) do
        --log("Removing dead listener: ", deadListener.eventId, tostring(deadListener.listener.selfReference), tostring(deadListener.listener.callback), tostring(deadListener.listener.dispatcher))
        removeListener(self.listeners, deadListener.eventId, deadListener.listener)
    end
    if (self.deadListeners[1] ~= nil) then
        self.deadListeners = {}
    end
    
    for i, newListener in pairs(self.newListeners) do
        --log("Adding new listener: ", newListener.eventId, tostring(newListener.listener.selfReference), tostring(newListener.listener.callback), tostring(newListener.listener.dispatcher))
        addListener(self.listeners, newListener.eventId, newListener.listener)
    end
    if (self.newListeners[1] ~= nil) then
        self.newListeners = {}
    end
    

end

--[[
@memberof EventManager
@brief Clear All Events
--]]
EventManager.clearAllEvents = function(self)
    self.eventQueue = {}
end


return EventManager