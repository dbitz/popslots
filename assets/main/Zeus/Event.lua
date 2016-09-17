-- Event
local classes = require("classes")

--[[
@class Event
@brief Context event.
--]]
local Event = classes.class()

local EVENT_ID = "EVENT"

--[[
@memberof Event
@brief Initializes the event
@param [table] Named param table: {eventId[string], dispatcher[table], payload[table]}
--]]
Event.init = function(self, params)
    --log(self, "Event:init id", tostring(params.eventId or EVENT_ID))        
    self.eventId = params.eventId or EVENT_ID;
    self.dispatcher = params.dispatcher;
    self.payload = params.payload or {};
end

return Event