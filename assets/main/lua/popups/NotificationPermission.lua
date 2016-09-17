--NotificationPermissions.lua
bindModule("CDSHandler")
bindModule("PlatformAppData")
bindModule("Analytics")

local BI_FEATURE = "notification"
local BI_CONTEXT_CDS_DIALOG = "cdsDialog"

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

function Module:onIgnore(eventParamsTable)
	print("onIgnore")
    closePopup(_module.this)
end

function Module:onAccept(eventParamsTable)
	print("onAccept")
  CDSHandler.callCDSUpdate({npp = "DONE"})
  PlatformAppData.requestPushNotificationPermission();
  
  -- Send analytics that the user clicked "yes"
  Analytics.reportAnalytics(BI_FEATURE, BI_CONTEXT_CDS_DIALOG, "approve", {xp=Analytics.getXP(), 
                                                                              balance=Analytics.getBalance(), 
                                                                              casinoLevel=Analytics.getCasinoLevel(),
                                                                              --cView = self.cView,
                                                                              --flowId = self.flowId, 
                                                                              asset = self.mainResourceName, 
                                                                              cName = self.id, 
                                                                              cType="iOSNotification"})
                                                                          
  closePopup(_module.this)
end

function Module:init(initParamsTable)
    print("init")
    -- store the popup instance
    self.this = initParamsTable.this
    self.scene = GameScene.getSceneById(initParamsTable.sceneName)
    
    -- saving the data
    self.flowId = initParamsTable.flowId
    self.ruleId = initParamsTable.ruleId
    self.mainResourceName = initParamsTable.mainResourceName
    self.id = initParamsTable.id
    self.contentType = initParamsTable.contentType
    self.cView = initParamsTable.cView

    print(self.scene:id())
    
    -- Notify the CDS that the popup was displayed
    CDSHandler.callCDSView({saleId = self.id})
    
    -- Send analytics that the popup was displayed
    Analytics.reportAnalytics(BI_FEATURE, BI_CONTEXT_CDS_DIALOG, "viewPopup", {xp=Analytics.getXP(), 
                                                                              balance=Analytics.getBalance(), 
                                                                              casinoLevel=Analytics.getCasinoLevel(),
                                                                              --cView = self.cView, 
                                                                              --flowId = initParamsTable.flowId, 
                                                                              asset = initParamsTable.mainResourceName, 
                                                                              cName = initParamsTable.id, 
                                                                              cType="iOSNotification"})
    
    self.scene:addEventListener("ignoreButton", self, self.onIgnore)
    self.scene:addEventListener("acceptBtn", self, self.onAccept)
end

function moduleInit(initParamsTable)
	_module = Module.new(initParamsTable)
	log("in pushNotification script")

    return "success"
end

function moduleRelease()
	_module = nil
end