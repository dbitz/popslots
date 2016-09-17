bindModule("PlatformAppData")
bindModule("Events")

local luaFileExtension = "lua"

RUNNING_IN_SGS = true

Stage = {}

Stage.triggers = 
{
    {name="kill", func="Stage.kill", icon=""}
}


function Stage.kill()
    _context.destroy(_context)
end

function onTouchEvent(evt, x, y, contactIndex, numContacts)
    local displayScale = PlatformAppData.getDisplayScale();

    x = x / displayScale.x;
    y = y / displayScale.y;

    if evt == 0	then	--MOUSE_PRESS_LEFT_BUTTON
        Stage.onPress(x,y)

    elseif evt == 1	then	--MOUSE_RELEASE_LEFT_BUTTON
        Stage.onRelease(x,y)
    else
        Stage.onDrag(x, y)
    end
end

function Stage.autorun(initParams)
    local pathEndStr = "/"
    
    -- use the debugger only if the property is set
    if (initParams.useDebugger == "true") then
        debugger = require('mobdebug')
        debugger.start()
        pathEndStr = ""
    end

    local w = initParams.screen_width
    local h = initParams.screen_height
    Stage.formFactor = tostring(w) .. "_" .. tostring(h)

    Stage.basePath = initParams.stagePath or "e:/mobileintegrated/lua_src/"
    Stage.assetsPath = initParams.assetsPath or "C:/graphics/projects/popslots/smartassets/Zeus/output2/Zeus.1136_640/" 
    Stage.frameworkPath = Stage.basePath .. "libs/mvc" -- full path to the framework's directory
    Stage.contextPath = Stage.basePath .. "features/zeus/zeus" -- full path to the current context's directory
    Stage.configPath = Stage.contextPath .. "/config"

    Stage.viewConfigPath = Stage.configPath
    print("view config path is " .. tostring(Stage.viewConfigPath))

    -- Set the lua file extension to "" in case the the command tells it that we are using the obfuscated code
    if (tonumber(initParams.luaObfuscated) == 1) then
        luaFileExtension = ""
    end
    
    ScriptController.addLuaSearchPath(Stage.frameworkPath)
    local requirePath = require("requirePath")
    
    Stage.serverModel = {}

    Stage.contextClass = "ZeusContext" -- the name of the main context class

    Stage.modelFile = "modelConfig"
    Stage.viewFile = "viewConfig"
    Stage.controlFile = "controlConfig"
    Stage.serviceFile = "serviceConfig"

    print("setting path " .. tostring(requirePath))
    requirePath.setPathAbsolute(
        Stage.basePath.. pathEndStr,
        Stage.frameworkPath .. pathEndStr,
        Stage.frameworkPath .. "/base" .. pathEndStr,
        Stage.frameworkPath .. "/model" .. pathEndStr,
        Stage.frameworkPath .. "/viewf" .. pathEndStr,
        Stage.frameworkPath .. "/control" .. pathEndStr,
        Stage.frameworkPath .. "/control/command" .. pathEndStr,
        Stage.frameworkPath .. "/service" .. pathEndStr,
        Stage.frameworkPath .. "/engine/viewf" .. pathEndStr,
        Stage.frameworkPath .. "/engine/control" .. pathEndStr,
        Stage.basePath .. "/libs/services/gameServerService" .. pathEndStr,
        Stage.basePath .. "/util" .. pathEndStr,
        Stage.basePath .. "/libs/view/scrollView" .. pathEndStr
    )
    requirePath.setPathAbsolute(
        Stage.contextPath.. pathEndStr,
        Stage.contextPath .. "/config".. pathEndStr,
        Stage.contextPath .. "/viewf".. pathEndStr,
        Stage.contextPath .. "/control".. pathEndStr,
        Stage.contextPath .. "/service".. pathEndStr
    )
    
    
    require("globals") -- log functions

    local mytable = require("mytable")
    mytable.log(initParams)

    ScriptController.registerCallback("touchEvent", "onTouchEvent")
    Stage.run()   
end

function Stage.run()
    print("Stage.run", tostring(Stage.configPath))

    ComponentManager.loadComponent("BootStrap", Stage.frameworkPath.."/", true, 
        {
            contextClass = Stage.contextClass,
            modelFile = Stage.modelFile,
            modelPath = Stage.configPath,            
            viewFile = Stage.viewFile,
            viewPath = Stage.assetsPath,
            viewParams = {},
            controlFile = Stage.controlFile,
            controlPath = Stage.configPath,
            serviceFile = Stage.serviceFile,
            servicePath = Stage.configPath,
            assetPath = Stage.assetsPath,
            basePath = ""
        }, luaFileExtension
    )
    
    print("Stage.run context =", tostring(_context))
end

function Stage.stop()
    print("Stage.stop")
    ComponentManager.unloadComponent("BootStrap", Stage.frameworkPath)
    print("Stage.stop component unloaded")
end

function Stage.config()
end

function Stage.onPress(x, y)
end

function Stage.onRelease(x, y)
end

function Stage.onDrag(x, y)
end