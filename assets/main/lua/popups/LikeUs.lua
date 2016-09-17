
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

function Module:init(initParamsTable)
    print("Module Init")
    -- store the popup instance
    self.this = initParamsTable.this
    self.scene = GameScene.getSceneById(initParamsTable.sceneName)
    
    -- saving the data
    self.flowId = initParamsTable.flowId
    self.ruleId = initParamsTable.ruleId
    self.mainResourceName = initParamsTable.mainResourceName
    self.id = initParamsTable.id
    self.contentType = initParamsTable.contentType
    local amount = initParamsTable.amount

    print(self.scene:id())
    print("Amount: " .. amount)
    print("IsCollect: " .. initParamsTable.isCollect)
    
    if initParamsTable.isCollect == 0 then
        self.scene:setChildState("likeUsPopup", "likeUs")
        self.scene:addEventListener("closeBtn", self, self.onClose)
        local coins = self.scene:get("coins")
        coins:setNumberWithParams(amount)
    else
        self.scene:setChildState("likeUsPopup", "collect")
        self.scene:addEventListener("collectBtn", self, self.onClose)
        local coinsCollect = self.scene:get("coinsCollect")
        coinsCollect:setNumberWithParams(amount)
    end

end

function moduleInit(initParamsTable)
	_module = Module.new(initParamsTable)
	log("in LikeUs script")

    return "success"
end

function moduleRelease()
	_module = nil
end