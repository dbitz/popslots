local classes = require("classes")
local Command = require("Command")

local SequenceCmd = classes.class(Command)

SequenceCmd.init = function(self, params)
    --log(self, "SequenceCmd:init")
    Command.init(self, params)
    self.commandFactory = params.commandFactory or self.context.factory
    self.originalEvent = nil    
    self.commands = params.commands or {}
    self.catch = params.catch
    self.currentIndex = -1
    self.currentCommand = nil
    self.backgroundCommands = {}
    self.completedBGCommands = {}
end

SequenceCmd.execute = function(self, event)
    --log(self, "SequenceCmd:execute")
    self.originalEvent = event
    self.currentIndex = 0
    -- register catch event listeners
    if (self.catch ~= nil) then
        for eventName, eventData in pairs(self.catch) do
            self:addListener(eventName, 
                {
                    selfReference = self, 
                    callback = self.onException                    
                }
            )
        end
        
    end
    
    self:executeNext(event)
end

SequenceCmd.kill = function(self)
    if (self.catch ~= nil) then
        for eventName, eventData in pairs(self.catch) do
            self:removeListener(eventName, 
                {
                    selfReference = self, 
                    callback = self.onException                    
                }
            )
        end
        self.catch = nil
     end
    
    if (self.backgroundCommands) then
        for command, tag in pairs(self.backgroundCommands) do
            self:removeListener(Command.COMMAND_COMPLETE, 
            {
                selfReference = self, 
                callback = SequenceCmd.onBGCommandComplete, 
                dispatcher = command
            }
            )
        
            self:removeListener(Command.COMMAND_ERROR, 
                {
                    selfReference = self, 
                    callback = SequenceCmd.onBGCommandComplete, 
                    dispatcher = command
                }
            )
        
            command:kill()
        end
        self.backgroundCommands = nil
    end
    
    
    if (self.currentCommand ~= nil) then
        self:removeListener(Command.COMMAND_COMPLETE, 
        {
            selfReference = self, 
            callback = self.completeCallback ,
            dispatcher = self.currentCommand -- the current command
        }
        )
        
        --log("removing listener", tostring(self),  tostring(self.executeNext), tostring(self.currentCommand))
        
        self:removeListener(Command.COMMAND_ERROR, 
            {
                selfReference = self, 
                callback = self.error,
                dispatcher = self.currentCommand -- the current command
            }
        )
        self.currentCommand:kill()
        local currClass = self.currentCommand.class
        self.currentCommand = nil
    end
    Command.kill(self)
end


SequenceCmd.complete = function(self)
     
     SequenceCmd.kill(self)
     Command.complete(self)
end

SequenceCmd.onBGCommandComplete = function (self, event)
    
    local command = event.dispatcher
	if (self.backgroundCommands ~= nil) then
		local tag = self.backgroundCommands[command]
		self.backgroundCommands[command] = nil
		self.completedBGCommands[tag] = true
	end
    
    
    self:removeListener(Command.COMMAND_COMPLETE, 
        {
            selfReference = self, 
            callback = SequenceCmd.onBGCommandComplete, 
            dispatcher = command
        }
    )
    
    self:removeListener(Command.COMMAND_ERROR, 
        {
            selfReference = self, 
            callback = SequenceCmd.onBGCommandComplete, 
            dispatcher = command
        }
    )
    
    if (self.currentCommand and self.currentCommand.waiting) then
        self:executeNext()
    end
    
    
end


SequenceCmd.executeCommand = function (self, command, completeCallback, runInBackground, bgCommandTag)
    self.currentCommand = command
    self.completeCallback = completeCallback
        
    if (runInBackground == true) then
        -- add command to the background commands map
        self.backgroundCommands[command] = bgCommandTag
        self:addListener(Command.COMMAND_COMPLETE, 
            {
                selfReference = self, 
                callback = SequenceCmd.onBGCommandComplete, 
                dispatcher = command
            }
        )
        
        self:addListener(Command.COMMAND_ERROR, 
            {
                selfReference = self, 
                callback = SequenceCmd.onBGCommandComplete, 
                dispatcher = command
            }
        )
        command:execute(self.originalEvent)
        
        completeCallback(self)
    else
    
        self:addListener(Command.COMMAND_COMPLETE, 
            {                
                selfReference = self, 
                callback = completeCallback, 
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
        
        command:execute(self.originalEvent)
    end
end

SequenceCmd.error = function (self, event)
    
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

SequenceCmd.onException = function (self, event)
    --log(self, "onException")
    
    
        
    if (self.catch ~= nil) then
        for eventName, eventData in pairs(self.catch) do
            self:removeListener(eventName, 
                {
                    selfReference = self, 
                    callback = self.onException                    
                }
            )
        end
        
    end
    
    if (self.backgroundCommands) then
        for command, tag in pairs(self.backgroundCommands) do
            self:removeListener(Command.COMMAND_COMPLETE, 
            {
                selfReference = self, 
                callback = SequenceCmd.onBGCommandComplete, 
                dispatcher = command
            }
            )
        
            self:removeListener(Command.COMMAND_ERROR, 
                {
                    selfReference = self, 
                    callback = SequenceCmd.onBGCommandComplete, 
                    dispatcher = command
                }
            )
        
            command:kill()
        end
        self.backgroundCommands = nil
    end
    
    if (self.currentCommand ~= nil) then
        self:removeListener(Command.COMMAND_COMPLETE, 
        {
            selfReference = self, 
            callback = self.executeNext,
            dispatcher = self.currentCommand -- the previous command
            
        }
        )
        self:removeListener(Command.COMMAND_ERROR, 
            {
                selfReference = self, 
                callback = self.error,
                dispatcher = self.currentCommand -- the previous command
            }
        )
        self.currentCommand:kill()        
        self.currentCommand = nil
    end
    
        
    -- TODO - remove event handlers to all execeptions here - dont wait till command is over
    if (self.catch) then
        local eventId = event.eventId
        local commandData = self.catch[eventId]
        if (commandData ~= nil) then
            local command = self.commandFactory:getCommand(commandData.name, self.context, commandData.params)
            self.currentCommand = command
            self:executeCommand(command, self.complete, false)
            
        end
    end
    
    --self:complete()
    --Command.error(self)
    --self:kill()
    
end

SequenceCmd.executeNext = function(self, event)
    if (self.context.isDestroyed == true) then
        return
    end
    
    if (event) then
      
        self:removeListener(Command.COMMAND_COMPLETE, 
            {
                selfReference = self, 
                callback = self.executeNext,
                dispatcher = event.dispatcher -- the previous command
            }
        )
        self:removeListener(Command.COMMAND_ERROR, 
            {
                selfReference = self, 
                callback = self.error,
                dispatcher = event.dispatcher -- the previous command
            }
        )
    end
    
    -- check if this command needs to wait for BG commands
    if (self.currentCommand and self.currentCommand.waitForBGCommands) then
        local waitForCommands = self.currentCommand.waitForBGCommands
        for i, tag in ipairs(waitForCommands) do
            if (self.completedBGCommands[tag] ~= true) then
                -- mark command as waiting for bg commands to complete
                self.currentCommand.waiting = true
                return
            end
            
        end
        
    end
    
    
    -- proceed to the next command
    self.currentIndex = self.currentIndex + 1
    local commandData = self.commands[self.currentIndex]
    --print("SequenceCmd:executeNext", self.currentIndex, tostring(command), tostring(self.params[self.currentIndex]))
    local command = nil
    if commandData then
        if (commandData.try ~= nil) then
            local params = commandData.try
            params.context = self.context
            params.catch = commandData.catch
            params.commandFactory = self.commandFactory
            command  = SequenceCmd.new(params)
        else  
            command = self.commandFactory:getCommand(commandData.name, self.context, commandData.params)                        
        end
        local runInBackground = (commandData.params and commandData.params.runInBG) or false
        local bgCommandTag = nil
        if (runInBackground) then
            bgCommandTag = commandData.params.tag
        end
        if (commandData.params and commandData.params.waitForBGCommands) then
            command.waitForBGCommands = commandData.params.waitForBGCommands
        end
        
        
        self:executeCommand(command, self.executeNext, runInBackground, bgCommandTag)
    else
        if self.loop then
            if #(self.commands) == 0 then
                -- empty loop!!!
                self:error()
                return
            end
            log(self, "SequenceCmd:executeNext", "Looping")
            self.currentIndex = 0
            self:executeNext(event)
        else
--            log(self, "SequenceCmd:executeNext", "Complete")
            self:complete()
        end        
    end
end

return SequenceCmd