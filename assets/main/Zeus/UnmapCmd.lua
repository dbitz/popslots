--[[
Command subclass that unmaps another command. Can be used as part of sequences of commands
--]]

local classes = require("classes")
local Command = require("Command")

local UnmapCmd = classes.class(Command)

UnmapCmd.init = function(self, params)
    Command.init(self, params)
    self.eventId = params.eventId
    self.command = params.command
end

UnmapCmd.execute = function(self, event)
    local eventId = self.eventId
    local command = self.command
    local dispatcher = nil
    if event.payload then
        if not eventId then eventId = event.payload.eventId end
        if not command then command = event.payload.command end
        dispatcher = event.payload.dispatcher
    end
    log(self, "UnmapCmd:execute", tostring(eventId), tostring(command), tostring(dispatcher))
    self.context.controller:unmapCommand(eventId, command, dispatcher)
    self:complete()
end

return UnmapCmd