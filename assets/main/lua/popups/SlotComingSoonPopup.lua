--SlotCommingSoon.lua
bindModule("Analytics")

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

function moduleInit(initParamsTable)
    _module = Module.new(initParamsTable)
    log("in SlotComingSoonPopup script")
    local retVal = "success"
    if _module.cancelLoad == true then
        retVal = "fail"
    end
    return retVal
end
function moduleRelease()
    _module = nil
end

---------------------------------------------------------------------ACTUAL CODE-----------------------------------------------
function Module:init(initParamsTable)
    print("Module Init")
    -- store the popup instance
    self.this = initParamsTable.this
    self.gameBrand = initParamsTable.gameBrand
    self.scene = GameScene.getSceneById(initParamsTable.sceneName)

    Analytics.reportAnalytics("comingSoonSlot", "iso", "viewDialog", {gameBrand=self.gameBrand})

	self.scene:addEventListener("cancelBtn", self, self.onClose)
	self.scene:addEventListener("okBtn", self, self.onShowMe)
	
end

function Module:onClose(eventParamsTable)
    print("onClose")
    Analytics.reportAnalytics("comingSoonSlot", "dialog", "closeDialog", {gameBrand=self.gameBrand})
    closePopup(_module.this)
end

function Module:onShowMe(eventParamsTable)
    print("onShowMe")
    Analytics.reportAnalytics("comingSoonSlot", "dialog", "showMe", {gameBrand=self.gameBrand})
    closePopup(_module.this)
end

