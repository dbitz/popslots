--[[
Implementation of basic animation system view
--]]

local classes = require("classes")
local Event = require("Event")
local View = require("View")

local GameScene = GameScene or {}

local AnimSystemView = classes.class(View)

-- listener id for the engine's listener id param (see GameEntity:addEventListener)
AnimSystemView._LISTENER_ID = "AnimSystemViewListener"

bindModule("Events")

function AnimSystemView:init(params)
    --print("AnimSystemView:init self="..tostring(self)..", context="..tostring(params.context)..", name="..tostring(params.name), "super="..tostring(self.super))

    View.init(self, params)
    self.ownsScene = params.ownsScene or false
    self.scenePath = params.scenePath or ""
    self.sceneFile = params.sceneFile or ""
    self.mainEntityInstance = params.mainEntityInstance or "_no_instance"
    self.mainEntityTemplate = params.mainEntityTemplate or "_no_template"
    self.isBundled = params.isBundled or false
    self.isEnvironmentScene = params.isEnvironmentScene or false
    self.registrationName = params.registrationName or self.sceneFile
    self.ignoreMainEntity = params.ignoreMainEntity or false
    self.layer = 0

    -- maps the button's entityId to an event id (see setButton/onButtonPressed)
    self._buttonMap = {}   
    -- listener for state events
    self._stateListener = nil

    self._gameScene = params.gameScene
    self._mainEntity = params.mainEntity
end

function AnimSystemView:setLoaded(loaded, ...)
    --[[print("")
    print("AnimSystemView:setLoaded")
    print("self._gameScene="..tostring(self._gameScene))
    print("self.sceneFile="..tostring(self.sceneFile))
    print("self.scenePath="..tostring(self.scenePath))
    print("self.ownsScene="..tostring(self.ownsScene))
    print("self.registrationName="..tostring(self.registrationName))
    print("self.mainEntityInstance="..tostring(self.mainEntityInstance))
    print("self.mainEntityTemplate="..tostring(self.mainEntityTemplate))
    print("")--]]
    --log(self, "AnimSystemView:setLoaded scenePath", tostring(self.scenePath))
    --log(self, "AnimSystemView:setLoaded context base path", tostring(self.context.basePath))
    if loaded then
        if not self._gameScene then
            if self.ownsScene then
                --log(self, "AnimSystemView:setLoaded", "Creating scene "..tostring(self.sceneFile)..", registration="..tostring(self.registrationName))
                self._gameScene = GameScene.getSceneById(self.registrationName)
                if not self._gameScene then                        
                    self._gameScene = GameScene.createFromFile(self.sceneFile, self.scenePath, self.isBundled, self.isEnvironmentScene, self.registrationName)
                end
            else
                --log(self, "AnimSystemView:setLoaded", "Getting scene "..tostring(self.registrationName))
                self._gameScene = GameScene.getSceneById(self.registrationName)
            end
            if not self._gameScene then
                --log(self, "AnimSystemView:setLoaded", "Failed to create the scene. sceneFile="..tostring(self.sceneFile)..", registrationName="..tostring(self.registrationName))
                return false
            elseif self.ownsScene then
                --log(self, "AnimSystemView:setLoaded", "Adding to manager", tostring(self._gameScene)," layer=",tostring(self.layer))
                GameScene.addToManager(self._gameScene, self.layer)                
            end
        end

        if (self.ignoreMainEntity == false) then
            if not self._mainEntity then
                --log(self, "AnimSystemView:setLoaded", "finding main entity "..tostring(self.mainEntityInstance))
                self._mainEntity = self._gameScene:get(self.mainEntityInstance)
                if not self._mainEntity then
                    --log(self, "AnimSystemView:setLoaded ", "creating main entity from template "..tostring(self.mainEntityTemplate))
                    self._mainEntity = self._gameScene:createEntity(self.mainEntityTemplate, 0, self.mainEntityInstance, self.ownsScene)
                end
            end
        end
    else
        self:setShown(false)
        self:removeButtonListeners()
        if self.ownsScene and self._gameScene then
            GameScene.removeFromManager(self._gameScene)
        end
        self._gameScene = nil
        self._mainEntity = nil
        self._buttonMap = {}
        self._stateListener = nil
        return true
    end

    --log(self, "AnimSystemView:setLoaded", "main="..tostring(self._mainEntity))
    if (self.ignoreMainEntity == true) then
        return true
    end
    return self._mainEntity ~= nil
end

function AnimSystemView:removeButtonListeners()
    for entityId, buttonData in pairs(self._buttonMap) do
        Events.removeAllEventListeners(AnimSystemView._LISTENER_ID..entityId .. tostring(self))
    end
end

function AnimSystemView:setShown(shown, ...)
    if self._mainEntity then
        self._mainEntity:visible(shown)
        return true
    end

    return false
end

function AnimSystemView:setEnabled(enabled, ...)
    if self._mainEntity then
        local entityState = enabled and "DISABLED" or "ENABLED"
        self._mainEntity:setState(entityState)
        return true
    end

    return false
end

function AnimSystemView:setPosition(x, y)
    if self._mainEntity then
        --print("Setting position ", x, y)
        self._mainEntity:position(x, y)
    end
end

function AnimSystemView:setButton(entityId, eventId, btnLabel, soundId)
    --log(self, "AnimSystemView.setButton", tostring(self._mainEntity), entityId, eventId)
    if self._mainEntity then
        self._buttonMap[entityId] = {eventId = eventId, soundId = soundId};
        --log(self, "AnimSystemView:setButton", tostring(entityId), tostring(eventId), tostring(btnLabel))
        self._mainEntity:addEventListener(entityId, self, self.onButtonPressed, AnimSystemView._LISTENER_ID..entityId .. tostring(self))
        if btnLabel then
            self._mainEntity:setButtonLabel(entityId, btnLabel)
        end
        return true
    end

    return false
end

function AnimSystemView:setButtonState(entityId, state)
    if self._mainEntity then
        local btn = self._mainEntity:get(entityId)
        if (btn) then
            self._mainEntity:setButtonState(entityId, state)
            return true
        end
    end

    return false
end

function AnimSystemView:onButtonPressed(event)
    if (self.loaded) then
        local buttonId = event.dispatcherId
        local buttonData = self._buttonMap[buttonId]
        --log(self, "AnimSystemView:onButtonPressed", tostring(buttonId), tostring(buttonData.eventId))
        if (buttonData.soundId ~= nil) then
            if (self._gameScene:hasSound(buttonData.soundId)) then 
                self._gameScene:playSound(buttonData.soundId)            
            end        
        end

        self:postEvent(Event.new(
                {
                    eventId = buttonData.eventId
                }
            ))
    end
end

function AnimSystemView:setText(entityId, text)
    if self._mainEntity then
        self._mainEntity:setChildLabel(entityId, text)
        return true
    end

    return false
end

function AnimSystemView:getState()
    if self._mainEntity then
        return self._mainEntity:getState()
    end

    return nil
end

function AnimSystemView:setState(stateId, stateListener)
    if self._mainEntity then
        if self._mainEntity:hasState(stateId) then
            self._stateListener = stateListener
            self._mainEntity:addStateEndEventListener(self, self.onStateEnded)
            -----
            self._mainEntity:setState(stateId)         
        end
        return true
    end

    return false
end

function AnimSystemView:onStateEnded(event)
    if self._stateListener then
        self._mainEntity:removeStateEndEventListener()
        if self._stateListener.selfReference then               
            self._stateListener.callback(self._stateListener.selfReference, event)
        else
            self._stateListener.callback(event)
        end
    end
    self._stateListener = nil
end

function AnimSystemView:playAnimations(animationId, findBeforePlaying)
    if self._mainEntity then
        self._mainEntity:playAnimations(animationId, findBeforePlaying) 
        return true
    end

    return false
end

return AnimSystemView