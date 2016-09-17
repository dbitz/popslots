local classes = require("classes")

local Actor = require("Actor")

local Proxy = classes.class(Actor)

Proxy.UPDATE_EVENT = "PROXY_UPDATE_EVENT"
Proxy.LOCK_ERROR = "PROXY_LOCK_ERROR_EVENT"

Proxy.init = function(self, params)
    Actor.init(self, params)
    
    self.vo = params.vo or {}    
    
    self.notifyAll = params.notifyAll or false
    self.notifyTable = params.notifyTable or {}
    
    self.lockAll = params.lockAll or false
    self.lockTable = params.lockTable or {}
    
    -- create closures for getter and setter
    local get = function(self, key)
        return self.vo[key]
    end
    
    local set = function(self, key, value)
        if self.lockAll or self.lockTable[key] then
            self:postEvent(Event.new(
                    {
                        eventId = self.LOCK_ERROR, 
                        payload = {
                            selfReference = self,  
                            key = key, 
                            oldValue = self.vo[key], 
                            newValue = value
                        }
                    }                    
                ))
            return
        end
        
        if self.notifyAll or self.notifyTable[key] then
            selfReference:postEvent(Event.new(
                    {
                        eventId = self.UPDATE_EVENT, 
                        payload = {
                            selfReference = self,  
                            key = key, 
                            oldValue = self.vo[key], 
                            newValue = value
                        }
                    }
                    ))
        end
        self.vo[key] = value
    end
    
    -- set the closures as instance methods
--[[
@memberof Proxy
@brief Closure that gets a value from the vo. 
@param [string] The name of the key to get.
@return The value vo[key]
--]]
    self.get = get
--[[
@memberof Proxy
@brief Closure that sets a value in the vo. 
@param [string] The name of the key to get.
@param The value to set.
--]]
    self.set = set
    
    -- metatable magic to allow normal table syntax instead of using the previous instance methods
    local meta = getmetatable(self) or {}
    
    local oldIndex = meta.__index or {}
    meta.__index = function(table, key)
        return self._vo[key] or oldIndex[key]
    end
    
    meta.__newindex = function(table, key, value)
        set(self, key, value)
    end
end

return Proxy