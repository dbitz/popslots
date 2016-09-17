--SmartAssetLuancher.lua
--require('mobdebug').start()

local Component = classes.class()

function Component:init (initParamsTable)
    --require('mobdebug').on()
    print("Component Init")
end
-------------------------------------------

-------------------------------------------
--[[
smartAssetLauncher Component class
--]]
SmartAssetLauncher = classes.class(Component)

function SmartAssetLauncher.update(elapsedTime)
    if (_launcher and _launcher.instance ~= nil and _launcher.instance.update ~= nil) then
        _launcher.instance:update(elapsedTime)
    end
end

function SmartAssetLauncher:init(initParamsTable)
    -- call the parent init
    Component:init(initParamsTable)

    self.listenerId = "smartAssetLauncher"..initParamsTable.assetName

    -- init member variables
    self.initParamsTable = initParamsTable
    
    ScriptController.addLuaSearchPath(initParamsTable.scriptUrl)

    local cls = require(initParamsTable.scriptName)
    self.instance = cls.new(initParamsTable)
end

function SmartAssetLauncher.initComponent(initParamsTable)
    _launcher = SmartAssetLauncher.new(initParamsTable)
end

function SmartAssetLauncher.destroyComponent()
    if (_launcher) then
        if (_launcher.instance ~= nil) then
            if (_launcher.instance.destroy ~= nil) then
                print("destroying class", tostring(_launcher.initParamsTable.scriptName))
                _launcher.instance:destroy()
            else
                print("no destroy function for class", tostring(_launcher.initParamsTable.scriptName))
            end
            _launcher.instance = nil
        end

        _launcher = nil
        SmartAssetLauncher = nil
    end
end

function moduleRelease()
    _module = nil
end