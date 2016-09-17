--CDSRewardCoupon.lua
bindModule("Analytics")
bindModule("GrantCollector")
bindModule("CDSHandler")
bindModule("Events")
bindModule("ServerTimeManager")
require("popupUtils")

local Module = classes.class()

-- BI constants
local BI_FEATURE_COUPON = "coupon"

local BI_CONTEXT_LOGIN = "login"

local BI_ACTION_VIEW = "viewCoupon"
local BI_ACTION_CLICK = "clickCoupon"

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

-- when the popup is actually viewed
function Module:onLoaded(eventParams)
  
  -- checking if we are the dispatchers
  if (eventParams.popupId == self.uId) then
    print("onLoaded")
    Analytics.reportAnalytics(BI_FEATURE_COUPON, BI_CONTEXT_LOGIN, BI_ACTION_VIEW, {xp = Analytics.getXP(),
                                                                  balance = Analytics.getBalance(),
                                                                  casinoLevel = Analytics.getCasinoLevel(),
                                                                  flowId = self.flowId,
                                                                  sourceName = self.sourceName,
                                                                  asset = self.mainResourceName,
                                                                  cName = self.id,
                                                                  cType = self.contentType,
                                                                  fallBack = tostring(self.fallBack),
                                                                  couponId = self.couponId,
                                                                  couponType = self.couponType,
                                                                  couponParams = self.couponParams
                                                                })
  end
end

-- currently we don't have a close button
--function Module:onClose(eventParamsTable)
--	print("onClose")
--  self:closePopup()
--end

-- recognition of coupon collecting failed - just close the popup
function Module:onOk(eventParamsTable)
  print("onOK")
  self:closePopup()
end

-- collcet the coupon amount and close popup
function Module:onCollect(eventParamsTable)
  print("accepting coupon")
  -- get startingPoint and scale for the dobbers
  local startingPoint, scale = onCollectGetDobbersMarker(self.scene, self.initParamsTable)
  
  -- Updating the server and the CDS about collecting the coupon
  GrantCollector.acceptCoupon(self.token, { startingPoint = startingPoint , scale = scale } )
  CDSHandler.callCDSUpdate({couponUsed = self.couponId})
  self:closePopup()
end

function Module:closePopup()
  Analytics.reportAnalytics(BI_FEATURE_COUPON, BI_CONTEXT_LOGIN, BI_ACTION_CLICK, {xp = Analytics.getXP(),
                                                                  balance = Analytics.getBalance(),
                                                                  casinoLevel = Analytics.getCasinoLevel(),
                                                                  flowId = self.flowId,
                                                                  sourceName = self.sourceName,
                                                                  asset = self.mainResourceName,
                                                                  cName = self.id,
                                                                  cType = self.contentType,
                                                                  fallBack = tostring(self.fallBack),
                                                                  couponId = self.couponId,
                                                                  couponType = self.couponType,
                                                                  couponParams = self.couponParams
                                                                  })
  closePopup(_module.this)
end

function Module:init(initParamsTable)
  print("CDSRewardCoupon Init")
  
  -- store the popup instance
  self.this = initParamsTable.this
  self.scene = GameScene.getSceneById(initParamsTable.sceneName)
  self.initParamsTable = initParamsTable
  
  -- saving the data
  self.flowId = initParamsTable.flowId
  self.sourceName = initParamsTable.sourceName
  self.ruleId = initParamsTable.ruleId
  self.mainResourceName = initParamsTable.mainResourceName
  self.id = initParamsTable.id
  self.uId = initParamsTable.uId
  self.contentType = initParamsTable.contentType
  self.rewardAmount = initParamsTable.amount
  self.token = initParamsTable.token
  
  -- coupon data
  self.fallBack = initParamsTable.fallBack
  self.couponId = initParamsTable.couponId
  self.couponType = initParamsTable.couponType
  self.couponParams = tostring(initParamsTable.amount) -- should be initialized from coupon params when will be added in future
  print("couponType:"..self.couponType)
  print("couponParams:"..self.couponParams)
  print("couponParams2:"..initParamsTable.couponParams)

  self.listenerId = self.id .. tostring(ServerTimeManager.getServerTime())
  
  print(self.scene:id())
  self.scene:addEventListener("collectBtn", self, self.onCollect)
  self.scene:addEventListener("okBtn", self, self.onOk)
--  self.scene:addEventListener("closeBtn", self, self.onClose)
  
  local rewardAmount = self.scene:get("itemAmount")
  if (rewardAmount) then
    rewardAmount:setNumberWithParams(self.rewardAmount, true)
  end
  
  Events.listenTo("POPUP_LOADED", self, self.onLoaded, self.listenerId)
end

function moduleInit(initParamsTable)
	_module = Module.new(initParamsTable)
	log("in Coupon script")

  return "success"
end

function moduleRelease()
	_module = nil
end