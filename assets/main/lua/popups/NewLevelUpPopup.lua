--NewLevelPopup.lua
bindModule("Analytics")
bindModule("AppConfig")
bindModule("GrantCollector")
bindModule("Alerts")
require("popupUtils")

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
    log("in NewLevelUpPopup script")
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
	self.initParamsTable = initParamsTable
	self.level = initParamsTable.level
	self.bonusCoins = initParamsTable.bonusCoins;
	self.nextLevelMaxBet = initParamsTable.nextLevelMaxBet
	self.balance = initParamsTable.balance;
    self.balanceVersion = initParamsTable.balanceVersion
    self.chequeId = initParamsTable.chequeId
	
	print("LevelUp level " .. tostring(self.level))
	print("LevelUp bonusCoins " .. tostring(self.bonusCoins))
	print("LevelUp nextLevelMaxBet " .. tostring(self.nextLevelMaxBet))
	print("LevelUp balance " .. tostring(self.balance))
	print("LevelUp balanceVersion " .. tostring(self.balanceVersion))

	------------------------------------------------------------------------------------

	self.scene:addEventListener("closeBtn", self, self.onClose)
	self.scene:addEventListener("collectBtn", self, self.onClose)
	
	local lvlLabel = self.scene:get("levelText")
    local spacer = 0
    if (lvlLabel ~= nil) then
        spacer = self.scene:getCharSpacingByEntity("levelText")
        lvlLabel:setNumberWithParams(tonumber(self.level), true, spacer, false)
    end
	
	local btmPart = self.scene:get("btmPart")
	local levelBonusLabel;
	local maxBetLabel;
	
	if (btmPart) then
		if (tonumber(self.nextLevelMaxBet) == nil or tonumber(self.nextLevelMaxBet) == 0) then
			btmPart:setState("withoutMaxBet")
		else
			btmPart:setState("withMaxBet")
			maxBetLabel = btmPart:get("maxBet")
		end
	end
	
	levelBonusLabel = btmPart:get("levelBonus")
	
	if (levelBonusLabel) then
        spacer = self.scene:getCharSpacingByEntity("levelBonus")
		levelBonusLabel:setNumberWithParams(tonumber(self.bonusCoins), true, spacer, false)
	end
	
	if (maxBetLabel) then
        spacer = self.scene:getCharSpacingByEntity("maxBet")
		maxBetLabel:setNumberWithParams(tonumber(self.nextLevelMaxBet), true, spacer, false)
	end
	
    --[[if tonumber(initParamsTable.totalWin) == 0 then
        print("0 totalWin, cancelling...")
        self.cancelLoad = true
        return
    else
        self.cancelLoad = false
    end]]--
    -- listen for collect
    
    -- set the racer picture
end

function Module:onClose(eventParamsTable)
    print("onClose")

    -- get startingPoint and scale for the dobbers
    local startingPoint, scale = onCollectGetDobbersMarker(self.scene, self.initParamsTable)

    if (AppConfig.getBoolean("levelupBonusInCheque")) then
        -- If we have a chequeId we will use the acceptCheque api
        if (self.chequeId) then
            print("accepting cheque", self.chequeId)
            GrantCollector.acceptCheque(self.chequeId, { startingPoint = startingPoint , scale = scale } )
        else
        	-- Show developer only alert that we don't have a chequeId at this point
        	Alerts.showSimpleAlert("Level up","Collect level up with no chequeId", "OK", true)

        	-- report analytic error that we don't have a chequeId
        	Analytics.reportAnalytics("error", "onLevelup", "noChequeId")
        end
    end

    closePopup(_module.this)
end

