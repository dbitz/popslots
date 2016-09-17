--[[
Base class for Commands in the MVC framework.
--]]

local classes = require("classes")
local Actor = require("Actor")
local Event = require("Event")

local Command = classes.class(Actor)

-- complete/error event ids
Command.COMMAND_COMPLETE = "COMMAND_COMPLETE_EVENT"
Command.COMMAND_ERROR = "COMMAND_ERROR_EVENT"

--[[
@memberof Command
@brief Initialized the command
@param [table] Initialization table. This corresponds to the params object in the controller configuration file.
--]]
Command.init = function(self, params)
    Actor.init(self, params)
end

--[[
@memberof Command
@brief Executes the command. The default implementation does nothing and calls complete(). Subclasses MUST override this if they want their command to do anything interesting.
@param [table] The event that fired this command
--]]
Command.execute = function(self, event)
    --log(self, "Command:execute")
    self:complete()
end

--[[
@memberof Command
@brief Called when the command is complete. Posts an event used by the sequence command to know when to move on to the next command
--]]
Command.complete = function(self, event)
    --log(self, "Command:complete", tostring(event))
    self:postEvent(Event.new(
            {
                eventId = Command.COMMAND_COMPLETE,
                payload = 
                {
                    command = self
                }
            }
        )
    )
end

--[[
@memberof Command
@brief
--]]
Command.kill = function(self)
 -- log(self, "Command:kill")
end


--[[
@memberof Command
@brief Called when there is an error executing this command. Posts an event used by the sequence command to know how to handle more complex commands
--]]
Command.error = function(self, event)
   -- log(self, "Command:error", tostring(event))
    self:postEvent(Event.new(
            {
                eventId = Command.COMMAND_ERROR,
                payload = 
                {
                    command = self
                }
            }
        )
    )
end

return Command