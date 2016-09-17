
bindModule("GrantCollector")
bindModule("Analytics")

require("popupUtils")

local BI_FEATURE = "raceBonus"

local BI_CONTEXT_SUMMARY = "summary"

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

function Module:onCollect(eventParamsTable)
  print("onCollect")
  print(self.chequeId)

  -- get startingPoint and scale for the dobbers
  local startingPoint, scale = onCollectGetDobbersMarker(self.scene, self.initParamsTable)

  GrantCollector.acceptCheque(self.chequeId, { startingPoint = startingPoint , scale = scale } )
  self.scene:playSound("collect")
  closePopup(_module.this)
end

function Module:init(initParamsTable)
  print("Module Init")
  -- store the popup instance
  self.this = initParamsTable.this
  self.scene = GameScene.getSceneById(initParamsTable.sceneName)
  
  -- saving the data
  --[[self.credits = initParamsTable.credits
  self.score = initParamsTable.score
  self.totalWin = initParamsTable.totalWin
  self.racerId = initParamsTable.racerId--]]
  self.chequeId = tostring(initParamsTable.chequeId)
  self.initParamsTable = initParamsTable


  print(self.scene:id())
  
  if tonumber(initParamsTable.totalWin) == 0 then
    print("0 totalWin, cancelling...")
    self.cancelLoad = true
    return
  else
    self.cancelLoad = false
  end

  -- listen for collect
  self.scene:addEventListener("collect", self, self.onCollect)

  -- set the racer picture
  local racerId = "racer"..initParamsTable.racerId
  self.scene:setChildState("picture", racerId)
  self.scene:setChildState("smallpicture", racerId)
  
  -- set the labels
  print("credits="..tostring(initParamsTable.credits)..", score="..tostring(initParamsTable.score)..", totalWin="..tostring(initParamsTable.totalWin)..", racerId="..racerId)
  local creditsLabel = self.scene:get("credits")
  if (creditsLabel ~= nil) then
    creditsLabel:setNumberWithParams(tonumber(initParamsTable.credits), true, 0, false)
  end
  
  local scoreLabel = self.scene:get("score")
  if (scoreLabel ~= nil) then
    scoreLabel:setNumberWithParams(tonumber(initParamsTable.multiplier), true, 0)
  end
  
  local totalWinLabel = self.scene:get("totalWin")
  if (totalWinLabel ~= nil) then
    totalWinLabel:setNumberWithParams(tonumber(initParamsTable.totalWin), true, 0, false)
  end
  
  Analytics.reportAnalytics(BI_FEATURE, BI_CONTEXT_SUMMARY, "showUserSummary", {racerId=initParamsTable.racerId, raceRoundId=initParamsTable.raceRoundId, xp=Analytics.getXP(),
                                                                                  balance=Analytics.getBalance(), casinoLevel=Analytics.getCasinoLevel(),
                                                                                  gameBrand=initParamsTable.UIName, bonusCredits=initParamsTable.credits, racerScore=initParamsTable.multiplier,
                                                                                  totalWin=initParamsTable.totalWin, state=initParamsTable.shownState})
end

function moduleInit(initParamsTable)
  _module = Module.new(initParamsTable)
  log("in BonusRaceSummary script")
  
  local retVal = "success"
  if _module.cancelLoad == true then
    retVal = "fail"
  end

  return retVal
end

function moduleRelease()
	_module = nil
end