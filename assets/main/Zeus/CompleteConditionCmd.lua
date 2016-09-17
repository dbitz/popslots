local classes = require("classes")
local Command = require("Command")

local CompleteConditionCmd = classes.class(Command)

CompleteConditionCmd.init = function(self, params)
    log(self, "CompleteConditionCmd:init", tostring(params.command), tostring(params.complete), tostring(params.error))
    Command.init(self, params)
    
    self.commandData = params.command
    self.completeConditions = params.complete or 
    {
        eventId = Command.COMMAND_COMPLETE, 
        dispatcher = self.command
    }
    self.errorConditions = params.error or 
    {
        eventId = Command.COMMAND_ERROR, 
        dispatcher = self.command
    }
    self.command = nil
end

CompleteConditionCmd.execute = function(self, event)
    log(self, "CompleteConditionCmd:execute")
    local waitForComplete = false
    local command = self.context.factory:getCommand(self.commandData.name, self.context, self.commandData.params)
    self.command = command
    
    for i , condition in ipairs(self.completeConditions) do
        log(self, "CompleteConditionCmd:execute", "complete on", tostring(condition.eventId))
        waitForComplete = true
        self:addListener(condition.eventId, 
            {
                selfReference = self, 
                callback = self.complete, 
                dispatcher = condition.dispatcher
            }
        )
    end
    
    for i, condition in ipairs(self.errorConditions) do
        log(self, "CompleteConditionCmd:execute", "error on", tostring(condition.eventId))
        self:addListener(condition.eventId, {selfReference = self, callback = self.error, dispatcher = condition.dispatcher})
        if not waitForComplete then
            -- we have error conditions but no complete conditions: the command's complete becomes the complete condition
            log(self, "CompleteConditionCmd:execute", "Adding default complete listener")
            waitForComplete = true
            self:addListener(condition.eventId, 
                {
                    selfReference = self, 
                    callback = self.error, 
                    dispatcher = command
                }
            )
        end
    end
    
    command:execute(event)
    
    if not waitForComplete then 
        log(self, "CompleteConditionCmd:execute", "no conditions, completing")
        -- no conditions, complete immediately
        self:complete() 
    end
end

CompleteConditionCmd.complete = function(self, event)
    log(self, "CompleteConditionCmd:complete", tostring(event.dispatcher))
    Command.complete(self, message)
    self:removeListeners()
end

CompleteConditionCmd.error = function(self, event)
    log(self, "CompleteConditionCmd:error", tostring(event.dispatcher))
    Command.error(self, message)
    self:removeListeners()
end

CompleteConditionCmd.removeListeners = function(self)  
    --log(self, "CompleteConditionCmd:removeListeners")
    local hadCompleteListener = false
    for i , condition in ipairs(self.completeConditions) do
        hadCompleteListener = true
        self:removeListener(condition.eventId, 
            {
                selfReference = self, 
                callback = self.complete, 
                dispatcher = condition.dispatcher
            }
        )
    end
    
    for i, condition in ipairs(self.errorConditions) do
        self:removeListener(condition.eventId, 
            {
                selfReference = self, 
                callback = self.error, 
                dispatcher = condition.dispatcher
            }
        )
        if not hadCompleteListener then
            -- we have error conditions but no complete conditions: the command's complete becomes the complete condition
            waitForComplete = true
            self:removeListener(Command.COMMAND_COMPLETE, 
                {
                    selfReference = self, 
                    callback = self.complete, 
                    dispatcher = self.command
                }
            )
        end
    end  
end

return CompleteConditionCmd