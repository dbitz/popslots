
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

--

function Module:onOther()
    
	print("onOther")
	
end

function Module:onClose(params)
    --closePopup(_module.this)	
	print("onClose")
	self:onOther()
	if (params == nil) then
		print("params is nil")
	else
		print(params.dispatcherId)
	end
end

function donClose(params)
    --closePopup(_module.this)	
	print("onClose")
	if (params == nil) then
		print("params is nil")
	else
		print(params.dispatcherId)
	end
end

function dodo(self, func, params)
   func(self, params)
end


function Module:init (initParamsTable)
print("Module Init")
-- store the popup instance
self.this = initParamsTable.this
--local s = AppConfig.getString("rateUsUrl")
--print(s)
local scene = GameScene.getSceneById(initParamsTable.sceneName)
print(scene:id())
--scene:setChildVisible("m_changeButton", false)
--scene:setChildVisible("settingsMenu_fbConnectButton", false)
scene:addEventListener("m_changeButton", self, self.onClose)
--dodo(self, self.onClose, {dispatcherId="bla bla"})


end

function moduleInit(initParamsTable)
	_module = Module.new(initParamsTable)
	--log("in dsd Menu script")

    return "success"
end

function moduleRelease()
	_module = nil
	
end

