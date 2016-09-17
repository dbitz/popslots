local classes = require("classes")
local Command = require("Command")

local SwitchCmd = classes.class(Command)

SwitchCmd.init = function(self, params)
    log(self, "SwitchCmd:init")
    Command.init(self, params)
    
    self.path = params.path
    self.commands = params.commands
    self.default = params.default -- if no command satisfies the switch condition we default to this
end

SwitchCmd.execute = function(self, event)
    log(self, "SwitchCmd:execute")
    -- find the switch var
    local data = self.context:getModel()
    for i, v in pairs(self.path) do
        data = data[v]
        if data == nil then
            break
        end        
    end
    log(self, "SwitchCmd:execute, data = ", tostring(data))
    
    -- adjust for boolean data
    if type(data) == "boolean" then
        if data then
            data = "trueCmd"
        else
            data = "falseCmd"
        end
    end
    
    -- choose the command to fire
    local command = nil
    if data ~= nil and self.commands[data] ~= nil then    
        -- we found the appropiate command
        local commandData = self.commands[data]
        command = self.context.factory:getCommand(commandData.name, self.context, commandData.params)
    elseif self.default then
        -- we don't have a command that satisfies the switch condition, use the default command if it exists
        local commandData = self.default
        command = self.context.factory:getCommand(commandData.name, self.context, commandData.params)
    end    
    
    if command then
        -- fire the command
        self:addListener(Command.COMMAND_COMPLETE, 
            {
                selfReference = self, 
                callback = self.onCommandComplete, 
                dispatcher = command
            }
        )
        
        self:addListener(Command.COMMAND_ERROR, 
            {
                selfReference = self, 
                callback = self.error, 
                dispatcher = command
            }
        )
        command:execute(event)
         
    else
        -- no commands to fire, post the complete event
        self:complete()
    end
end

SwitchCmd.onCommandComplete = function(self, event)
    self:removeListener(Command.COMMAND_COMPLETE, 
        {
            selfReference = self, 
            callback = self.executeNext, 
            dispatcher = event.dispatcher
        }
    )
    
    self:removeListener(Command.COMMAND_ERROR, 
        {
            selfReference = self, 
            callback = self.error, 
            dispatcher = event.dispatcher
        }
    )
    self:complete()
end

SwitchCmd.error = function (self, event)
    
    self:removeListener(Command.COMMAND_COMPLETE, 
        {
            selfReference = self, 
            callback = self.executeNext, 
            dispatcher = event.dispatcher
        }
    )
    
    self:removeListener(Command.COMMAND_ERROR, 
        {
            selfReference = self, 
            callback = self.error, 
            dispatcher = event.dispatcher
        }
    )
    Command.error(self,event)
end


return SwitchCmd