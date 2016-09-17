-- FloatersManager
bindModule("Events")
bindModule("SmartAsset")
bindModule("Floaters")
bindModule("Users")

local SHOW_TREAT_EVENT = "TreatsManager_showingTreat"  -- this event is fired whenever a ballooon is shared

local SLOTS_WIN_CALLOUT_EVENT = "SLOTS_WIN_CALLOUT_EVENT"
local SLOTS_SHARED_BALLOON_EVENT = "SLOTS_SHARED_BALLOON_EVENT"
local SLOTS_JOINED_EVENT = "SLOTS_JOINED_EVENT"

local FLOATER_TYPE_SHARED_BALLOONS = "sharedBalloons"
local FLOATER_TYPE_BROKE_RECORD = "brokeRecord"
local FLOATER_TYPE_HUGE_WIN = "hugeWin"
local FLOATER_TYPE_BIG_WIN = "bigWin"
local FLOATER_TYPE_EPIC_WIN = "epicWin"
local FLOATER_TYPE_MEGA_WIN = "megaWin"
local FLOATER_TYPE_RACE_OBSTACLE = "raceObstacle"

FloatersManager = classes.class()

function FloatersManager:init(initParamsTable)
    print("-----------------------FloatersManager Init---------------------------")

    Events.listenTo(SHOW_TREAT_EVENT, self, self.onShowTreat, self.listenerId)
    Events.listenTo(SLOTS_WIN_CALLOUT_EVENT, self, self.onWinCallout, self.listenerId)
    Events.listenTo(FLOATER_TYPE_RACE_OBSTACLE, self, self.onRaceObstacle, self.listenerId)
    Events.listenTo("SHOW_FLOATERS", self, self.onFLoaterCalled, self.listenerId)
end

function FloatersManager:onFLoaterCalled(event)
	local arr = event.floaters
	if (arr) then
		for k, v in pairs(arr) do
			print("FloatersManager:onFLoaterCalled " .. tostring(v.userId) .. " state " .. v.state .. " amount " ..  tostring(v.amount) .. " shortNumber " .. tostring(v.shortNumber))
			self:showFloater(v.userId, v.state, tonumber(v.amount), v.shortNumber)
		end
	end
end

function FloatersManager:addFormFactorToTemplates()
end

function FloatersManager:destroy()
end

--------------------------------------specific functions--------------------

function FloatersManager:onShowTreat(event)
    print("onShowTreat")
    local userId = event.initiator.stringUserId
    self:showFloater(userId, FLOATER_TYPE_SHARED_BALLOONS)
end

--[[ onRaceObstacle -
--   payload for event is a dictionary holding id,amount pairs: { amount = amount, userIds = { userId1 , userId2 } }
--]]
function FloatersManager:onRaceObstacle(event)
    print("onRaceObstacle")
    local amount = event.amount
    local userIdsDic = event.userIds

    if(userIdsDic)then
        for k,v in pairs(userIdsDic) do
            self:showFloater(tostring(v), FLOATER_TYPE_RACE_OBSTACLE, amount)
        end
    end
end

--when i win
function FloatersManager:onWinCallout(event)

    local userId = Users.getMyShakerId()
    local amount = event.amount
    local type = event.type

    print("onWinCallout", tostring(type), tostring(event.brokeRecord))

    if (event.brokeRecord == true) then
        type = FLOATER_TYPE_BROKE_RECORD
    else
        if (type == "HUGE_WIN") then
            type = FLOATER_TYPE_HUGE_WIN
        end
        if (type == "BIG_WIN") then
            type = FLOATER_TYPE_BIG_WIN
        end	
        if (type == "BROKE_RECORD") then
            type = FLOATER_TYPE_BROKE_RECORD
        end
        if (type == "EPIC_WIN") then
            type = FLOATER_TYPE_EPIC_WIN
        end
        if (type == "MEGA_WIN") then
            type = FLOATER_TYPE_MEGA_WIN
        end
    end

    if (type ~= "WIN1" and type ~= "WIN2" and type ~= "WIN3") then
        self:showFloater(userId, type, amount)
    end
end

------
function FloatersManager:showFloater(userId , eventType , amount, useMBK)

    if (amount == nil) then
        Floaters.showFloater(userId , eventType)
    else
    
    	if(useMBK == true)then
        	Floaters.showFloater(userId , eventType, amount, true)
        else
        	Floaters.showFloater(userId , eventType, amount)
        end
    end
end

return FloatersManager