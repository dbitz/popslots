--LPEntrancePopup.lua

bindModule("Analytics")

local LP_ENTRANCE_STATE_APP_CONFIG = "LPEntranceState"
local LP_ENTRANCE_WELCOME_BACK_STATE = "welcomeBackState"
local LP_ENTRANCE_WELCOME_STATE = "welcomeState"

local Module = classes.class()

function Module:basePerform(funcName, ...)
	local func = self[funcName]
	if type(func) == "function" then
		return func(self, ...)
	else
		print("no such function: ".. funcName)
		return nil
	end
end

function Module:perform(memberId, funcName, ...)
	print("Module:perform")
	print(memberId)
	
	if memberId == nil or memberId == "" then
		return self:basePerform(funcName, ...)
	else
		local member = self[memberId]
		return member:perform(funcName, ...)
	end
end

function modulePerformFunction(memberId, funcName, ...)	
	print(memberId)
	return _module:perform(memberId, funcName, ...)
end

function __FILE__() return debug.getinfo(2,'S').short_src end
function __LINE__() return debug.getinfo(2, 'l').currentline end

function log(...)
    print(debug.getinfo(2,'S').short_src, debug.getinfo(2, 'l').currentline, ...)
end

function ASSERT(cond, ...)
    if cond == false then
        print(debug.getinfo(2,'S').short_src, debug.getinfo(2, 'l').currentline, ...)
        error(...)
    end
end

function Module:onClose()
	print("onClose")
    closePopup(_module.this)
end

function Module:init(initParamsTable)
    log("LPEntrancePopup")
    -- cheque collector the popup instance
    self.this = initParamsTable.this
    self.scene = GameScene.getSceneById(initParamsTable.sceneName)
    self.LPEntranceState = initParamsTable.LPEntranceState
    self.fbName = initParamsTable.fbName

    print("sceneId=" .. self.scene:id() .. " LPEntranceState=" .. tostring(self.LPEntranceState) .. " fbName=".. tostring(self.fbName))

    if (self.LPEntranceState == LP_ENTRANCE_WELCOME_BACK_STATE) then
        local bgEnt = self.scene:get("bg")
        bgEnt:setState(LP_ENTRANCE_WELCOME_BACK_STATE)
    end

    local txt

    if (self.fbName) then
        txt = string.upper(tostring(self.fbName))
    else
        txt = "ANON"
    end

    local nameAreaEnt = self.scene:get("nameArea")
    if (nameAreaEnt) then
        nameAreaEnt:setStringWithParams(txt, true, -7)
    end

    -- saving the data
    self.scene:addEventListener("okBtn", self, self.onClose)

    -- send analytics

    Analytics.reportAnalytics("LP", "lpBalanceSynced", "viewPopup", { lpBalance = Analytics.getLPBalance() })
end

function moduleInit(initParamsTable)
	_module = Module.new(initParamsTable)

    return "success"
end

function moduleRelease()
	_module = nil
end