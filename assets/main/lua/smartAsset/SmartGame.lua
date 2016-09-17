--SmartGame.lua
--local classes = require("classes")

local SmartGame = classes.class()

bindModule("Events")
bindModule("Analytics")

SmartGame.init = function(self, initParams)
    self.assetName = initParams.assetName

    for k, v in pairs(initParams) do
        print("", k, tostring(v))
    end

    local stagingFile = initParams.params.stagingFile

    print("SmartGame init - assetName=", self.assetName, "staging=", stagingFile, "assetUrl=", initParams.assetUrl, "scriptUrl=", initParams.scriptUrl)

    Events.listenTo("SMART_GAME_ENABLE_EVENT", self, self.enable, "SMART_GAME_ENABLE_EVENT")
    Events.listenTo("SMART_GAME_SHOW_UI_EVENT", self, self.showUI, "SMART_GAME_SHOW_UI_EVENT")
    Events.listenTo("SMART_GAME_HIDE_UI_EVENT", self, self.hideUI, "SMART_GAME_HIDE_UI_EVENT")
    Events.listenTo("SMART_GAME_SET_FOCUSSED_EVENT", self, self.setFocussed, "SMART_GAME_SET_FOCUSSED_EVENT")
    Events.listenTo("SMART_GAME_CLOSE_EVENT", self, self.close, "SMART_GAME_CLOSE_EVENT")
    Events.listenTo("SMART_GAME_ON_ACTION_EVENT", self, self.onAction, "SMART_GAME_ON_ACTION_EVENT")

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
        
        print("SmartGame error", errorMessage)
        Events.dispatch("SMART_GAME_ERROR", {assetName = tostring(self.assetName)})
        Analytics.reportAnalytics("error", "client", "machineCantLoad", { errorMessage = errorMessage, assetName = tostring(self.assetName) })
    end
end

SmartGame.update = function(self, dt)
    if (_staging and _staging.update) then
        _staging.update(dt)
    end
end

SmartGame.enable = function(self)
    print("SmartGame.enable")
    if (_staging and _staging.enable) then
        _staging.enable()
    end
end

SmartGame.showUI = function(self)
    print("SmartGame.showUI")
    if (_staging and _staging.showUI) then
        _staging.showUI()
    end
end

SmartGame.hideUI = function(self)
    print("SmartGame.hideUI")
    if (_staging and _staging.hideUI) then
        _staging.hideUI()
    end
end

SmartGame.setFocussed = function(self)
    print("SmartGame.setFocussed")
    if (_staging and _staging.setFocussed) then
        _staging.setFocussed()
    else
        Events.dispatch("SMART_GAME_ON_FOCUSSED_EVENT", {assetName = self.assetName})
    end
end

SmartGame.close = function(self)
    print("SmartGame.close")
    if (_staging and _staging.close) then
        _staging.close()
    else
        Events.dispatch("SMART_GAME_ON_CLOSED_EVENT", {assetName = self.assetName})
    end
end

SmartGame.onAction = function(self, eventParams)
    print("SmartGame.onAction", tostring(eventParams.params.actionId))
    if (_staging and _staging.onAction) then
        _staging.onAction(eventParams)
    end
end

SmartGame.destroy = function(self)
    print("SmartGame.destroy")
    if (_staging and _staging.destroy) then
        _staging.destroy()
    end
end

return SmartGame