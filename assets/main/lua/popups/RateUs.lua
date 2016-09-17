--RateUs.lua
bindModule("Analytics")
bindModule("CDSHandler")
bindModule("PlatformAppData")
bindModule("AppConfig")
bindModule("ScriptUtils")

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

function Module:onClose(eventParamsTable)
	print("onClose")
  closePopup(_module.this)
end

function Module:onRate()
  Analytics.reportAnalytics("rating", "submitRate", "submitRate", {xp = Analytics.getXP(),
                                                                  balance = Analytics.getBalance(),
                                                                  casinoLevel = Analytics.getCasinoLevel(),
                                                                  stars = self.rate,
                                                                  flowId = self.flowId,
                                                                  sourceName = self.sourceName,
                                                                  ruleId = self.ruleId,
                                                                  asset = self.mainResourceName,
                                                                  cName = self.id,
                                                                  cType = self.contentType
                                                                  })
  CDSHandler.callCDSUpdate({rateStars = self.rate, rateAppVersion = PlatformAppData.getAppVersion()})

  -- the rateUsRange is a string separated by a comma, defining the feedback max rate and the appstore min rate
  -- e.g "2,4" will result with <=2 goes to feedback >=4 goes to appStore, 3 closes the popup
  local feedbackRate, appStoreRate = tostring(self.rateUsRange):match("([^,]+),([^,]+)")
  if tonumber(self.rate) >= tonumber(appStoreRate) then
    local rateURL = AppConfig.getString("rateUsUrl")
    if rateURL then
        print(rateURL)
        WebUtils.launchUrl(rateURL)
    end
    closePopup(_module.this)
  elseif tonumber(self.rate) <= tonumber(feedbackRate) then
    self.scene:setChildVisible("thankYouPopup", true)
    self.scene:setChildVisible("rateUsPopup", false)
    self.scene:addEventListener("submitBtn", self, self.onSubmit)
    self:addRadioListeners()
    Analytics.reportAnalytics("rating", "thanks", "viewPopup", {xp = Analytics.getXP(),
                                                                    balance = Analytics.getBalance(),
                                                                    casinoLevel = Analytics.getCasinoLevel(),
                                                                    flowId = self.flowId,
                                                                    sourceName = self.sourceName,
                                                                    ruleId = self.ruleId,
                                                                    asset = self.mainResourceName,
                                                                    cName = self.id,
                                                                    cType = self.contentType
                                                                    })
  else
    closePopup(_module.this)
  end
end

function Module:onSubmit()
  Analytics.reportAnalytics("rating", "servey", "submitAnswer", {xp = Analytics.getXP(),
                                                                  balance = Analytics.getBalance(),
                                                                  casinoLevel = Analytics.getCasinoLevel(),
                                                                  answer = self:getAnswerString(),
                                                                  flowId = self.flowId,
                                                                  sourceName = self.sourceName,
                                                                  ruleId = self.ruleId,
                                                                  asset = self.mainResourceName,
                                                                  cName = self.id,
                                                                  cType = self.contentType
                                                                  })
  closePopup(_module.this)
end


function Module:getAnswerString()
  local answer = ""
  for i = 1,5 do
  local radioEnt = self.scene:get("radio" .. i)
  if (radioEnt:getChildState("radio") == "unchecked") then
    answer = answer .. tostring(0)
    else
      answer = answer .. tostring(1)
    end
    
    if (i ~= 5) then
      answer = answer .. "_"
    end
  end
  return answer
end

function Module:addStarsListeners()
  for i = 1,5 do
  local starEnt = self.scene:get("star" .. i)
    starEnt:addEventListener("starBtn", self, self.onStarClicked)
  end
end

function Module:onStarClicked(eventParamsTable)
  self.rate = string.sub(eventParamsTable.parentId, 5)
  self:markStars(self.rate)
  
  -- only send the pickStar once
  if not self.starClicked then
    self.scene:setButtonState("rateBtn", "normal")
    self.scene:setChildVisible("starsAnim", false)
    self.starClicked = true;
    Analytics.reportAnalytics("rating", "pickStar", "pickStar", {xp = Analytics.getXP(),
                                                                balance = Analytics.getBalance(),
                                                                casinoLevel = Analytics.getCasinoLevel(),
                                                                stars = self.rate,
                                                                flowId = self.flowId,
                                                                sourceName = self.sourceName,
                                                                ruleId = self.ruleId,
                                                                asset = self.mainResourceName,
                                                                cName = self.id,
                                                                cType = self.contentType
                                                                })
    end
end

function Module:markStars(selectedIndex)
  for i = 1, selectedIndex do
    local starEnt = self.scene:get("star" .. i)
    starEnt:setChildState("star", "starOn")
  end
      
  for i = selectedIndex + 1, 5 do
    local starEnt = self.scene:get("star" .. i)
    starEnt:setChildState("star", "starOff")
  end
end

function Module:addRadioListeners()
  for i = 1,5 do
  local radioEnt = self.scene:get("radio" .. i)
  radioEnt:setChildState("radio", "unchecked")
    radioEnt:addEventListener("radioBtn", self, self.onRadioClicked)
  end
end

function Module:onRadioClicked(eventParamsTable)
  local radioIndex = string.sub(eventParamsTable.parentId, 6)
	local radioEnt = self.scene:get("radio" .. radioIndex)
	if (radioEnt:getChildState("radio") == "unchecked") then
		radioEnt:setChildState("radio", "checked")
	else
		radioEnt:setChildState("radio", "unchecked")
	end
end

function Module:init(initParamsTable)
  print("Module Init")
  -- store the popup instance
  self.this = initParamsTable.this
  self.scene = GameScene.getSceneById(initParamsTable.sceneName)
  
  -- saving the data
  self.flowId = initParamsTable.flowId
  self.sourceName = initParamsTable.sourceName
  self.ruleId = initParamsTable.ruleId
  self.mainResourceName = initParamsTable.mainResourceName
  self.id = initParamsTable.id
  self.contentType = initParamsTable.contentType
  self.rateUsRange = initParamsTable.rateUsRange
  if self.rateUsRange == nil then
    self.rateUsRange = "2,4"
  end

  print(self.scene:id())
  self.scene:setChildVisible("thankYouPopup", false)
  self.scene:addEventListener("rateCloseBtn", self, self.onClose)
  self.scene:addEventListener("thanksCloseBtn", self, self.onClose)
  self.scene:addEventListener("rateBtn", self, self.onRate)
  self.scene:setButtonState("rateBtn", "disabled")
  self:addStarsListeners()
  self.rate = 0
  
  Analytics.reportAnalytics("rating", "impression", "viewPopup", {xp = Analytics.getXP(),
                                                                  balance = Analytics.getBalance(),
                                                                  casinoLevel = Analytics.getCasinoLevel(),
                                                                  flowId = self.flowId,
                                                                  sourceName = self.sourceName,
                                                                  ruleId = self.ruleId,
                                                                  asset = self.mainResourceName,
                                                                  cName = self.id,
                                                                  cType = self.contentType
                                                                  })
end

function moduleInit(initParamsTable)
	_module = Module.new(initParamsTable)
	log("in RateUs script")

  return "success"
end

function moduleRelease()
	_module = nil
end