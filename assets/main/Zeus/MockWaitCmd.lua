local classes = require("classes")
local Command = require("Command")

local WaitCmd = classes.class(Command)

WaitCmd.init = function(self, params)
    Command.init(self, params)
    self.seconds = params.seconds
end

WaitCmd.execute = function(self, event)
    local seconds = self.seconds
    if not seconds then seconds = event.payload.seconds end
    log(self, "WaitCmd:execute", tostring(seconds))
    self:complete()
end

return WaitCmd