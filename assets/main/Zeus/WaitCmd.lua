--[[
Special command to add a delay
--]]

local classes = require("classes")
local Command = require("Command")

bindModule("Timer")

local WaitCmd = classes.class(Command)

WaitCmd.WAIT = "WAITCMD_WAIT_EVENT"
WaitCmd.COMPLETE = "WAITCMD_WAIT_COMPLETE_EVENT"

WaitCmd.init = function(self, params)
    Command.init(self, params)
    --self.seconds = params.seconds
    --self.repeatCount = params.repeatCount or 1
    self.params = params
    self.timer = nil
end

WaitCmd.execute = function(self, event)
    if (self.params.timer) then
        local seconds = self.params.timer.seconds
        local repeatCount = self.params.timer.repeatCount or 1
        
        -- if we didn't receive the data in the constructor, take it from the event
        if not seconds then seconds = event.payload.seconds end
        if not repeatCount then repeatCount = event.payload.repeatCount end
        
        log(self, "WaitCmd:execute", tostring(seconds), tostring(repeatCount))
        self.timer = Timer.createTimer(seconds, repeatCount, self, self.onComplete)        
    end
    if (self.params.events) then      
      for index, eventName in ipairs(self.params.events) do
          log(self, "adding listenr to", eventName)
          self:addListener(eventName, 
            {
                selfReference = self, 
                callback = self.onEvent                    
            }
        )
      end
      
    end    
end

WaitCmd.kill = function(self)
  if (self.timer ~= nil) then
    self.timer:kill()
    self.timer = nil
  end
  
  if (self.params.events) then
    for index, eventName in ipairs(self.params.events) do
        self:removeListener(eventName, 
          {
              selfReference = self, 
              callback = self.onEvent                    
          }
      )
    end
    
  end
  
end


WaitCmd.onEvent = function(self, event)
  log(self, "WaitCmd:onEvent")
    self:kill()
    self:complete()
end


WaitCmd.onComplete = function(self, event)
    log(self, "WaitCmd:onComplete")
    self.timer = nil
    local Event = require("Event")
    self:postEvent(Event.new(
            {
                eventId = WaitCmd.WAIT_COMPLETE
            }            
        )
    )
    self:kill()
    self:complete()
end

return WaitCmd