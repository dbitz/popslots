--PurchaseSuccess.lua
bindModule("Analytics")
require('popupUtils');

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
    Analytics.reportFinanceAnalytics("sale", "complete", "buyCoinsComplete", {xp = Analytics.getXP(),
                                                                        balance = Analytics.getBalance(),
                                                                        casinoLevel = Analytics.getCasinoLevel(),
                                                                        flowId = self.flowId,
                                                                        ruleId = self.ruleId,
                                                                        asset = self.storeAsset,
                                                                        cName = self.cName,
                                                                        cType = self.cType,
                                                                        sourceName = self.sourceName,
                                                                        priceInUSD = self.priceInUSD,
                                                                        itemId = self.itemId,
                                                                        coinAmount = self.coinAmount,
                                                                        aType = self.aType
                                                                        })
	print("onClose")
    closePopup(_module.this)
end

function Module:init(initParamsTable)
    print("PurchaseSuccess Init")
    -- cheque collector the popup instance
    self.this = initParamsTable.this
    self.scene = GameScene.getSceneById(initParamsTable.sceneName)
    print(self.scene:id())

    -- saving the data
    self.coinAmount = initParamsTable.itemAmount
    self.itemId = initParamsTable.itemId
    self.priceInUSD = initParamsTable.priceInUSD
    self.storeAsset = initParamsTable.asset
    self.cName = initParamsTable.cName
    self.cType = initParamsTable.cType
    self.ruleId = initParamsTable.ruleId
    self.flowId = initParamsTable.flowId
    self.sourceName = initParamsTable.sourceName
    self.aType = initParamsTable.aType

    local itemAmountEnt = self.scene:get("itemAmount")
    if (itemAmountEnt) then
      local itemAmountSpacer = self.scene:getCharSpacingByEntity("itemAmount")
      itemAmountEnt:setNumberWithParams(initParamsTable.itemAmount, true, itemAmountSpacer)
      centerTextOnPopUp(self.scene, "itemAmount")
    end

    self.scene:playRandomSound("bgMusic")
    self.scene:addEventListener("okBtn", self, self.onClose)
end

function moduleInit(initParamsTable)
	_module = Module.new(initParamsTable)
	log("in PurchaseSuccess script")

    return "success"
end

function moduleRelease()
	_module = nil
end