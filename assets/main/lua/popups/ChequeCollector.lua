--ChequeCollector.lua

bindModule("GrantCollector")

require('popupUtils')

local CHEUQUE_TYPE_COINS = "coins"
local CHEUQUE_TYPE_LOYALTY = "lp"

local FLA_LOYALTY_STATE = "loyaltyState"
local FLA_COINS_STATE = "animateIdleState"


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

function Module:collect()
	-- get startingPoint and scale for the dobbers
	local startingPoint, scale = onCollectGetDobbersMarker(self.scene, self.initParamsTable)

	-- If we have a chequeId we will use the acceptCheque api
	if (self.chequeId) then
        log("accepting cheque. chequeId=" .. tostring(self.chequeId) .. " chequeType=" .. self.chequeType)

		GrantCollector.acceptCheque(self.chequeId, { startingPoint = startingPoint , scale = scale, chequeType=self.chequeType } )

    -- other wise we will user the acceptGrant api
	else
		log("accepting grant with dobbers grantType=" .. tostring(self.grantType))
		GrantCollector.acceptGrant(self.grantType, { startingPoint = startingPoint , scale = scale } )
	end

	closePopup(_module.this)
end

function Module:init(initParamsTable)
	log("Module Init")
	-- cheque collector the popup instance
	self.this = initParamsTable.this
	self.scene = GameScene.getSceneById(initParamsTable.sceneName)

	-- saving the data
	self.grantType = initParamsTable.grantType
	self.giftAmount = initParamsTable.giftAmount
	-- This is optional, used in cheques api
	self.chequeId = initParamsTable.chequeId
	self.initParamsTable = initParamsTable

	self.chequeType = initParamsTable.chequeType

	log("sceneId=" .. self.scene:id() .. " chequeType=".. tostring(initParamsTable.chequeType))

    -- because of backward compatability - server cant send chequeType always, so it sends chequeType=lp for lp cheques. we will assign a default value of coins when we didn't get it.
    if (self.chequeType) then
        if (self.chequeType == CHEUQUE_TYPE_LOYALTY) then
            local giftTypeEnt = self.scene:get("giftTypeEnt")
            giftTypeEnt:setState(FLA_LOYALTY_STATE)
        end
    else
        self.chequeType = "coins"
    end

	local bonusSum = self.scene:get("bonusSum")

	if (bonusSum) then
		local bonusSumSpacer = self.scene:getCharSpacingByEntity("bonusSum")
		bonusSum:setNumberWithParams(self.giftAmount, true, bonusSumSpacer)
		centerTextOnPopUp(self.scene, "bonusSum")
	end

	self.scene:addEventListener("closeBtn", self, self.collect)
	self.scene:addEventListener("collectBtn", self, self.collect)
end

function moduleInit(initParamsTable)
	_module = Module.new(initParamsTable)
	log("in ChequeCollector script")

	return "success"
end

function moduleRelease()
	_module = nil
end