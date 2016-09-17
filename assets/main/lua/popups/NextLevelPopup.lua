--NextLevelPopup.lua
bindModule("Analytics")

require('popupUtils')

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
  print("NextLevelPopup Init")
  
  self.this = initParamsTable.this
  self.scene = GameScene.getSceneById(initParamsTable.sceneName)
  print(self.scene:id())
  
  -- saving the data
  self.nextLevelBonus = initParamsTable.nextLevelBonus
  self.xpToNextLevel = initParamsTable.xpToNextLevel
  self.nextLevel = initParamsTable.nextLevel
  
  local nextLevelBonusEnt = self.scene:get("nextLevelBonus")
  if (nextLevelBonusEnt) then
    local nextLevelBonusSpacer = self.scene:getCharSpacingByEntity("nextLevelBonus")
    nextLevelBonusEnt:setNumberWithParams(initParamsTable.nextLevelBonus, true, nextLevelBonusSpacer)
    centerTextOnPopUp(self.scene, "nextLevelBonus")
  end

  local xpToNextLevelTxt = self.scene:get("xpToNextLevel")
  if (xpToNextLevelTxt) then
    local xpToNextLevelSpacer = self.scene:getCharSpacingByEntity("xpToNextLevel")
    xpToNextLevelTxt:setNumberWithParams(initParamsTable.xpToNextLevel, true, xpToNextLevelSpacer)
    centerTextOnPopUp(self.scene, "xpToNextLevel")
  end

  local nextLevelTxt = self.scene:get("nextLevel")
  if (nextLevelTxt) then
    local nextLevelSpacer = self.scene:getCharSpacingByEntity("nextLevel")
    nextLevelTxt:setNumberWithParams(initParamsTable.nextLevel, true, nextLevelSpacer)
  end
  self.scene:addEventListener("okBtn", self, self.onClose)

end

function moduleInit(initParamsTable)
	_module = Module.new(initParamsTable)
	log("in NextLevelPopup script")

  return "success"
end

function moduleRelease()
	_module = nil
end