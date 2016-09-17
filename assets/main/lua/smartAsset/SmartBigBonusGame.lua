--SmartBigBonusGame.lua
--local classes = require("classes")

local SmartBigBonusGame = classes.class()

bindModule("Events")
bindModule("Analytics")

SmartBigBonusGame.init = function(self, initParams)
    self.assetName = initParams.assetName

    for k, v in pairs(initParams) do
        print("", k, tostring(v))
    end

    local stagingFile = initParams.params.stagingFile

    print("SmartBigBonusGame init - assetName=", self.assetName, "staging=", stagingFile)

    -- the pcall returns two values:
    -- status - a boolean indicating success or failure
    -- module - the loaded file or the error message in case of failure
    local status, module = pcall(require, stagingFile)
    _staging = status and module or nil
    if (_staging) then
        _staging.run(initParams)
    else
        -- remove "" and line breaks from the error...
        local errorMessage = tostring(module)
        errorMessage = errorMessage:gsub("\"", "")
        errorMessage = errorMessage:gsub("\n", "")
        errorMessage = errorMessage:gsub("\r", "")
        
        -- wrap the error message with "" for splunk's sake
        errorMessage = "\"" .. errorMessage .. "\""
        
        print("SmartBigBonusGame error", errorMessage)
        Analytics.reportAnalytics("error", "client", "bonusGameCantLoad", { errorMessage = errorMessage, assetName = tostring(self.assetName) })
    end
end

SmartBigBonusGame.update = function(self, dt)
    if (_staging and _staging.update) then
        _staging.update(dt)
    end
end

SmartBigBonusGame.destroy = function(self)
    print("SmartBigBonusGame.destroy")
    if (_staging and _staging.destroy) then
        _staging.destroy()
    end
end

return SmartBigBonusGame