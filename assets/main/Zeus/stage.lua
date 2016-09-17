-- zeus stage
bindModule("Events")

RUNNING_IN_SGS = false

Stage = classes.class()

function Stage:init(initParams)
    print("Stage:initParams", tostring(initParams))
    local requirePath = require("requirepath")

    Stage.frameworkPath = initParams.scriptUrl
    Stage.contextPath = initParams.scriptUrl
    Stage.configPath = initParams.scriptUrl
    Stage.viewPath = initParams.assetUrl
    Stage.assetVer = initParams.assetVer
    
    Stage.viewConfigPath = initParams.assetUrl

    Stage.contextClass = "ZeusContext" -- the name of the main context class

    Stage.modelFile = "modelConfig"
    Stage.viewFile = "viewConfig"
    Stage.controlFile = "controlConfig"
    Stage.serviceFile = "serviceConfig"

    require("globals")
    
    local contextClass = require(Stage.contextClass)    

    print("Creating context instance Stage.viewPath is", tostring(Stage.viewPath))
    _context = contextClass.new(
        {
            contextClass = Stage.contextClass,
            modelFile = Stage.modelFile,
            modelPath = Stage.configPath,
            serverModel = serverModel,
            viewFile = Stage.viewFile,
            viewPath = Stage.viewPath,
            controlFile = Stage.controlFile,
            controlPath = Stage.configPath,
            serviceFile = Stage.serviceFile,
            servicePath = Stage.configPath,
            basePath = Stage.configPath,
            assetVer = Stage.assetVer,
        }
    )
    
    print("Stage.run context =", tostring(_context))
end

function Stage:update(dt)
    if _context then
        _context:update(dt)
    end
end

function Stage:destroy()
    print("Calling stage destroy for Zeus")
    if _context then
        _context:destroy()
    end
    _context = nil
end

return Stage