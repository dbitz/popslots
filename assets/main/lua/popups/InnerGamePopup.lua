--InnerGamePopup.lua
bindModule("Events")
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
    log("in InnerGamePopup script")
    log("InnerGamePopup gameId="..initParamsTable.gameId)
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
    self.scene = GameScene.getSceneById(initParamsTable.sceneName)
    self.gameId = initParamsTable.gameId

    -- saving the data
    self.flowId = initParamsTable.flowId
    self.sourceName = initParamsTable.sourceName
    self.ruleId = initParamsTable.ruleId
    self.mainResourceName = initParamsTable.mainResourceName
    self.id = initParamsTable.id
    self.contentType = initParamsTable.contentType

    print(self.scene:id())
    self.scene:addEventListener("close", self, self.onClose)
    self.scene:addEventListener("ok", self, self.onOK)

    Analytics.reportAnalytics("CDS", "playSlot", "viewPopup", {xp = Analytics.getXP(),
                                                               balance = Analytics.getBalance(),
                                                               casinoLevel = Analytics.getCasinoLevel(),
                                                               stars = self.rate,
                                                               flowId = self.flowId,
                                                               sourceName = self.sourceName,
                                                               ruleId = self.ruleId,
                                                               asset = self.mainResourceName,
                                                               cName = self.id,
                                                               cType = self.contentType,
                                                               gameBrand = self.gameId
                                })


end

function Module:onClose(eventParamsTable)
    print("onClose")
    closePopup(_module.this)
end

function Module:onOK(eventParamsTable)
    print("onOK")
    Analytics.reportAnalytics("CDS", "playSlot", "clickPlay", {xp = Analytics.getXP(),
                                                               balance = Analytics.getBalance(),
                                                               casinoLevel = Analytics.getCasinoLevel(),
                                                               stars = self.rate,
                                                               flowId = self.flowId,
                                                               sourceName = self.sourceName,
                                                               ruleId = self.ruleId,
                                                               asset = self.mainResourceName,
                                                               cName = self.id,
                                                               cType = self.contentType,
                                                               gameBrand = self.gameId
                                })

    Events.dispatch("NAVIGATE_TO_MACHINE_EVENT", {gameId = self.gameId, clickFrom = "slotPromoOnPortal"})
    closePopup(_module.this)
end

