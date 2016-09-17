--GuideCode.lua
bindModule("Events")
bindModule("AppConfig")
bindModule("WebUtils")
bindModule("PlatformAppData")
bindModule("Http")
bindModule("InputHandler")
bindModule("Analytics")
bindModule("UserActivityLogger")
bindModule("SmartAsset")

----------------------------------------------------------------------------------------------------
-- This class is incharge of the first part of a new user in the app - creating his avatar.
-- This guide is seperated to several steps that allows the user to create and define its avatar and
-- its looks. Each step is stateless and can be called at any time, for each step there are a couple of
-- functions (show & hide). The show function is incharge of presenting all the relevant templates
-- for the stage, the hide function has to be called after showing and finishing with a step to get 
-- back to a "clean page". You can go back to the previous step (if exist) from any step.
--
-- The stages are:
--    "Lobby":
--          showing the smart lobby and an overlay of the lady greeting to big casino.
--          ends when the user clicks "enter casino".
--    "Gender":
--          allows the user to select the gender and present the shades of both genders.
--          ends when the user picks the gender.
--          exception - when a facebook user is connected this stage is skipped.
--    "Race":
--          showing all the possible looks for the gender selected.
--          ends when a specific look is chosen.
--          exception - in the console there is a flag determines if this stage is available(received in isRaceAvailable on init params).
--    "Chosen":
--          showing the final look of all the users pick and allowing the user to start playing
--          ends when the user click the play button.
--
-- ** there is one scenerio where this script will run only the lobby phase - if the avatar was 
--    already created but the guide was not finished (the user didn't spin the machine)
----------------------------------------------------------------------------------------------------

--[[
GuideCode class
--]]
GuideCode = classes.class()

----------------------------------------------------------------------------------------------------

-- Events Consts
local SHOW_LOGIN_GUIDE_EVENT            = "showLoginEvent"
local ENTER_LOBBY_CLICK_EVENT           = "lobbyEnterCasinoClicked"
local PORTAL_REMOVED_EVENT_ID           = "casinoPortalRemovedEvent"
local START_GUIDE_VIEW                  = "startGuideViewEvent"
local HIDE_GAME_FRAME                   = "HIDE_GAME_FRAME"
local HIDE_GAMES_BUTTON                 = "hideGamesButton"
local DISABLE_GAMABLE_AREAS             = "guideStartedEvent"
local SMART_LOBBY_SHOW_EVENT            = "SMART_LOBBY_SHOW_PORTAL_EVENT"
local SMART_LOBBY_SHOWN_EVENT           = "SMART_LOBBY_PORTAL_SHOWN_EVENT"

-- Templates Consts
-- if you add a template make sure that if you need you've added form factor for it (addFormFactorToTemplates)
local LADY_TEMPLATE                     = "LadyTemplate"
local TRANSITION_TEMPLATE               = "FadeToBlackTemplate"
local GENDER_TEMPLATE                   = "GenderSelectorTemplate"
local AVATAR_TEMPLATE                   = "AvatarSelectorTemplate"
local CHOSEN_AVATAR_TEMPLATE            = "ChosenAvatarTemplate"
local HIDE_AVATAR_TEMPLATE              = "HideAvatarAnimationTemplate"
local PROFILE_PIC_TEMPLATE              = "ProfilePicTemplate"
local PLAY_TEMPLATE                     = "PlayTemplate"
local BACK_BTN_TEMPLATE                 = "BackBtnTemplate"
local BLOCKER_TEMPLATE                  = "BlockerTemplate"

-- Entities Consts
local PLACE_HOLDER_ENT = "PlaceHolder"
local BG_TEMPLATE = "BackgroundTemplate"
local FEMALE_ENT = "female"
local MALE_ENT = "male"
local ITEM_ENT = "item_"
local ITEM_BTN = "itemBtn"
local BACK_BTN = "backBtn"
local CHOSEN_AVATAR = "chosenAvatar"
local AVATAR_TO_DRESS = "avatar"
local FEMALE_BTN = "femaleBtn"
local MALE_BTN = "maleBtn"
local PLAY_BTN = "playBtn"

-- States Consts
local GENERAL_IDLE = "animateIdleState"
local LADY_LOBBY = "lobby"
local LADY_GENDER = "genderSelection"
local LADY_RACE = "raceSelection"
local LADY_EXIT = "exit"
local LADY_EXIT_LOBBY = "exitLobby"
local BG_INIT = GENERAL_IDLE
local BG_NORMAL = "standart"
local BG_FINAL = "final"
local AVATAR_FEMALE = "female"
local AVATAR_MALE = "male"
local AVATAR_NOT_SELECTED = "notSelected"
local AVATAR_SELECTED = "selected"
local AVATAR_NAKED = "naked"
local AVATAR_DRESSED = "dressed"
local PIC_ENTER = "picEnter"
local PLAY_ENTER = GENERAL_IDLE
local PLAY_EXIT = "exit"

-- Cue Points Consts
local TRANSITION_CUE                  = "transitionCuePoint"
local SHOW_TRANSITION_CUE             = "showTransition"
local HIDE_AVATAR_CUE                 = "showDressed"

-- Data Consts
local GENDER                          = "gender"
local RACE                            = "race"
local FEMALE                          = "female"
local MALE                            = "male"

-- BI consts
local BI_FEATURE                      = "login"
local CONTEXT_GUIDE                   = "guide"
local CONTEXT_PREFIX                  = "context_"

-- Sounds Consts
local BG_MUSIC                        = "outerGuideBgMusic"   -- background music for lobby
local CLICK_SOUND                     = "outerGuideUIClick"
local SPARKLE_SOUND                   = "sparkleLoop"
-- local LADY_ENTER_SOUND             = "enter"
local TRANSFORMATION_SOUND            = "outerGuideTransformation"
local THOUGHT_BUBBLE_SOUND            = "outerGuideThoughtBubble"
local START_PLAYING_CLICK_SOUND       = "outerGuideStartPlayingClick"

-- General consts
local GUIDE_VALUE                     = "isGuideActive"
local GUIDE_LAYER                     = "kGuideLayer"

-- initializing data relevant to the class - called from init
function GuideCode:getDefaultData()
    local data = {
        statesNames = {
            "Lobby", "Gender", "Race", "Chosen"
        },
        statesFuncs = {
            showLobby = self.showLobby,
            hideLobby = self.hideLobby,
            showGender = self.showGender,
            hideGender = self.hideGender,
            showRace = self.showRace,
            hideRace = self.hideRace,
            showChosen = self.showChosen,
            hideChosen = self.hideChosen,
        },
        numOfPicks = {0, 0, 0},
        skinTonesNum = {male = 4, female = 6}
    }
    return data
end

function GuideCode:update(elapsedTime)
end

-----------------------------------------------------------------------------------------------------------------------------------
---                                                   General functions                                                         ---
-----------------------------------------------------------------------------------------------------------------------------------

-- initializing all params and members needed to present the games menu
function GuideCode:init(initParamsTable)
    print("GuideCode Init")

    if (initParamsTable ~= nil) then
        print("init params")
        self.sceneResPath = initParamsTable.assetUrl
        self.sceneFile = "Guide.scene"
        self.this = initParamsTable.this
        self.myName = "GuideCode"
        self.listenerId = self.myName
        self.loginData = {}
        self.formFactor = PlatformAppData.getGraphicFormFactor()

        -- Data gatharing
        self.currentCasino = initParamsTable.params.currentCasino
        self.currentMachine = initParamsTable.params.currentMachine
        self.isRaceAvailable = initParamsTable.params.isRaceAvailable
        self.isFacebookUser = initParamsTable.params.isFacebookUser

        self.loginData[GENDER] = initParamsTable.params.gender
        self.isSkipAvatarCreation = initParamsTable.params.isSkipAvatarCreation
        print(tostring(self.currentCasino), tostring(self.currentMachine), tostring(self.isRaceAvailable), tostring(self.isFacebookUser), tostring(self.loginData[GENDER]))

        -- filling the relevant data
        self.defaultData = self:getDefaultData()
        if (self.isFacebookUser == true) then
            self.maxItem = self.defaultData.skinTonesNum[self.loginData[GENDER]]
        end
        if (isRaceAvailable == false) then
            table.remove(self.defaultData.statesNames, 3)
        end

        self:addFormFactorToTemplates()
        AppConfig.setValue(GUIDE_VALUE, true) 
    end

    -- we listen to 2 events. because loading scene is asynchronic - we hold 2 flagg, for each of the events. the goal is to show the lobby only after scene is loaded.
    self.isSceneLoaded = false
    self.showLobbyAfterSceneLoaded = false
    Events.listenTo(SHOW_LOGIN_GUIDE_EVENT, self, self.loadScene, self.listenerId)
    Events.listenTo(SMART_LOBBY_SHOWN_EVENT, self, self.showLobby, self.listenerId)
end

-- called from init and assume that the self.formFactor was initialized
function GuideCode:addFormFactorToTemplates()
    AVATAR_TEMPLATE = AVATAR_TEMPLATE.."_"..self.formFactor
    BG_TEMPLATE = BG_TEMPLATE.."_"..self.formFactor
    CHOSEN_AVATAR_TEMPLATE = CHOSEN_AVATAR_TEMPLATE.."_"..self.formFactor
    GENDER_TEMPLATE = GENDER_TEMPLATE.."_"..self.formFactor
    HIDE_AVATAR_TEMPLATE = HIDE_AVATAR_TEMPLATE.."_"..self.formFactor
    LADY_TEMPLATE = LADY_TEMPLATE.."_"..self.formFactor
    PLAY_TEMPLATE = PLAY_TEMPLATE.."_"..self.formFactor
    PROFILE_PIC_TEMPLATE = PROFILE_PIC_TEMPLATE.."_"..self.formFactor
    BLOCKER_TEMPLATE = BLOCKER_TEMPLATE.."_"..self.formFactor
end

-- destroy - also called from the SAM and needs to implement the release of all elements
function GuideCode:destroy()
    print("destroy - GuideCode")
    Events.removeEventListener(PORTAL_REMOVED_EVENT_ID, self.listenerId)
    Events.removeEventListener(SHOW_LOGIN_GUIDE_EVENT,  self.listenerId)
    Events.removeEventListener(SMART_LOBBY_SHOWN_EVENT, self.listenerId)
    Events.removeEventListener(PORTAL_REMOVED_EVENT_ID, self.listenerId)
    Events.removeEventListener(ENTER_LOBBY_CLICK_EVENT, self.listenerId)
    Events.removeEventListener(HIDE_AVATAR_CUE,         self.listenerId)
    Events.removeEventListener(TRANSITION_CUE,          self.listenerId)
    Events.removeEventListener(SHOW_LOGIN_GUIDE_EVENT,  self.listenerId)
    Events.removeEventListener(SMART_LOBBY_SHOWN_EVENT, self.listenerId)

    if (self.scene) then
        print("GuideCode:destroy - remove from manager!")
        GameScene.removeFromManager(self.scene)
        self.scene = nil
    end
end

-- reseting the view to start over
function GuideCode:reset()
    print("reset")
    self:destroy()
    self:init()
end

-----------------------------------------------------------------------------------------------------------------------------------
---                         Till here are the validation function for testing the graphics assets                               ---
-----------------------------------------------------------------------------------------------------------------------------------

-- this function triggers the start of the guide - loading the scene
function GuideCode:loadScene(eventParamsTable)
    print("Showing GuideCode")
    Events.removeEventListener(SHOW_LOGIN_GUIDE_EVENT, self.listenerId)

    -- checking if portal failed 
    self.portalLoadingFailed = eventParamsTable.portalLoadingFailed

    -- in case of portal failure and we don't need to create avatar there is no need of the scene
    if (self.isSkipAvatarCreation == true and self.portalLoadingFailed == true) then
        self:onPortalFailed()
    else  
        -- loading scene
        print(tostring(self.sceneFile), tostring(self.sceneResPath), tostring(self.myName), tostring(self.formFactor))
        self.scene = GameScene.createFromFileAsync(self.sceneFile, self.sceneResPath, self, self.onSceneLoaded, self.listenerId.."scene", false, false, self.myName, self.formFactor)
    end
end

-- after the scene is loaded we start showing the steps as needed
function GuideCode:onSceneLoaded(eventParamsTable)
    print("SceneLoaded")
    self.isSceneLoaded = true
    self.bgEnt = self.scene:createEntity(BG_TEMPLATE, 0)

    -- the place holder is for loading entities to it in order for the transition (fadeToBlack) to cover the assets while replacing them
    self.placeHolder = self.scene:createEntity(PLACE_HOLDER_ENT, 1)
    GameScene.addToManager(self.scene, GUIDE_LAYER)

    print("setting backBtn and bg..")
    self.backBtnTemplate = self.scene:createEntity(BACK_BTN_TEMPLATE, 2)
    self:setBackBtnVisibility(false)
    self:setBgVisibility(false)

    InputHandler.disableSceneInput()

    print("dispatching necessary events..")
    Events.dispatch(HIDE_GAME_FRAME)
    Events.listenTo(PORTAL_REMOVED_EVENT_ID, self, self.onPortalRemovedHideGamesBtn, self.listenerId)
    Events.dispatch(SMART_LOBBY_SHOW_EVENT)
    
    -- We create a blocker entity and set it on a higher level, we control it by changing it's visibility.
    -- When the blocker is visible, no click will go through
    self.blocker = self.scene:createEntity(BLOCKER_TEMPLATE, 5)
    self.blocker:visible(false)
    
    -- if portal loading failed skipping the first part (lobby) as if we clicked on enter casino
    if (self.portalLoadingFailed == true) then
        local nextFunc = self:getFirstStateFunc()
        nextFunc()
    else
        -- if event for showing lobby already fired - show lobby now, after scene is loaded.
        if (self.showLobbyAfterSceneLoaded == true) then
            self:showLobby()
        end
    end
end

-----------------------------------------------------------------------------------------------------------------------------------
---                         Showing or hiding states and entities                                                               ---
-----------------------------------------------------------------------------------------------------------------------------------

-- creates the requested entity as a child to the place holder with the state entered (entityState is optional)
-- @param [string] entityName - the name of the entity template to create
-- @param [string] entityState - the name of the state to set the entity to
function GuideCode:showEntity(entityName, entityState)
    print("entityName: ", entityName, "state", tostring(entityState))
    local entity = self.scene:createEntity(entityName, 1, entityName, false)
    self.placeHolder:addChild(entity)
    entity:release()
    if (entityState) then
        entity:setState(entityState)
    end
    return entity
end

-- removing the entity from the place holder
function GuideCode:hideEntity(entity)
    if (entity ~= nil) then
        print("GuideCode:hideEntity", "self.placeHolder", tostring(self.placeHolder), "entity name", tostring(entity:id()))
        self.placeHolder:removeChild(entity)
    else
        print("tried to hide a nil entity")
    end
end

-- when the games menu is removed the games button is showing automatically, this function prevents it
function GuideCode:onPortalRemovedHideGamesBtn(eventParamsTable)
    print("onPortalRemovedHideGamesBtn")
    Events.dispatch(HIDE_GAMES_BUTTON)
end

-- the first step of the guide - showing the guide's lobby part on top of the smart lobby
function GuideCode:showLobby()
    print("showLobby")

    -- if scene hasn't loaded yet - turn on a flag that will tell the scene to show lobby once its loaded
    if self.isSceneLoaded == false then
        self.showLobbyAfterSceneLoaded = true
        do return end
    end

    self:prepareState("Lobby")
    self:setBgVisibility(nil)
    self:setBackBtnVisibility(false)
    self.ladyTemplate = self:showEntity(LADY_TEMPLATE, LADY_LOBBY)
    Events.listenTo(ENTER_LOBBY_CLICK_EVENT, self, self.handleLobbyClick, self.listenerId)
    --UserActivityLogger.logUserActivityAnalyticsWithArgs(CONTEXT_PREFIX.."viewCasinoPage", {dt = Analytics.getDeviceType(), net = Analytics.getNetworkType()})
    --Analytics.reportAnalytics(BI_FEATURE, CONTEXT_GUIDE, "viewCasinoPage", {dt = Analytics.getDeviceType(), net = Analytics.getNetworkType()})
    self.scene:playSound(SPARKLE_SOUND, true)
    --self.scene:playSoundWithDelay(SPARKLE_SOUND, 0.1, true)
end

-- hiding the lobby stage
function GuideCode:hideLobby()
    print("hideLobby")
    self:hideEntity(self.ladyTemplate)
    self.ladyTemplate = nil
    Events.removeEventListener(ENTER_LOBBY_CLICK_EVENT, self.listenerId)
end

-- showing the gender selection - female or male
function GuideCode:showGender()
    print("showGender")
    self.scene:playSound(SPARKLE_SOUND, true)

    self:prepareState("Gender")
    self:setBackBtnVisibility(false)
    self:setBgVisibility(BG_NORMAL)
    self.genderTemplate = self:showEntity(GENDER_TEMPLATE)
    self.ladyTemplate = self:showEntity(LADY_TEMPLATE, LADY_GENDER)
    --self.scene:playSound(LADY_ENTER_SOUND)

    self.female = self.scene:get(FEMALE_ENT)
    self.female:addEventListener(FEMALE_BTN, self, self.femaleSelected, self.listenerId..FEMALE_BTN)
    self.male = self.scene:get(MALE_ENT)
    self.male:addEventListener(MALE_BTN, self, self.maleSelected, self.listenerId..MALE_BTN)

    local clickIndicator = "Back"
    if (self.defaultData.numOfPicks[1] == 0) then
        clickIndicator = "Select"
    end

    Analytics.reportAnalytics(BI_FEATURE, CONTEXT_GUIDE, "showGender", {loginType = Analytics.getLoginType(), dt = Analytics.getDeviceType(), net = Analytics.getNetworkType(),
            clickInd = clickIndicator})

    UserActivityLogger.logUserActivity("GENDER_DISPLAYED")
end

-- hiding the gender stage
function GuideCode:hideGender()
    print("hideGender")
    self:setBackBtnVisibility(false)
    self:hideEntity(self.ladyTemplate)
    self.ladyTemplate = nil
    self:hideEntity(self.genderTemplate)
    self.genderTemplate = nil
end

-- showing the skin tone selection
function GuideCode:showRace()
    print("showRace")
    self.scene:playSound(SPARKLE_SOUND, true)

    self:prepareState("Race")
    if (self.isFacebookUser == true) then
        self:setBackBtnVisibility(false)
    else
        self:setBackBtnVisibility(true)
    end

    self:setBgVisibility(BG_NORMAL)

    self.ladyTemplate = self:showEntity(LADY_TEMPLATE, LADY_RACE)
    self.raceTemplate = self:showEntity(AVATAR_TEMPLATE, self.loginData[GENDER])
    
    self.blocker:visible(true)
    
    -- create items table and add the event listeners
    self.items = {}
    for i=1, self.maxItem do
        self.items[i] = self.scene:get(ITEM_ENT..i)
        self.items[i]:addEventListener(ITEM_BTN, self, self.raceSelected, self.listenerId..ITEM_BTN..i)
    end

    self.raceTemplate:addStateEndEventListener(self, self.onRaceAvatarsDisplayed)
end

function GuideCode:onRaceAvatarsDisplayed()
    print("onRaceAvatarsDisplayed")
    self.blocker:visible(false)
    
    self.raceTemplate:removeStateEndEventListener()

    local clickIndicator = "Back"
    if (self.defaultData.numOfPicks[2] == 0) then
        clickIndicator = "Select"
    end

    Analytics.reportAnalytics(BI_FEATURE, CONTEXT_GUIDE, "showCharacter", {loginType = Analytics.getLoginType(), dt = Analytics.getDeviceType(), net = Analytics.getNetworkType(),
            clickInd = clickIndicator})

    UserActivityLogger.logUserActivity("RACE_DISPLAYED")
end

-- hiding the race stage
function GuideCode:hideRace()
    print("hideRace")
    self.scene:stopSound(SPARKLE_SOUND)

    if (self.items) then
        for i=1, #self.items do
            if (self.items[i]) then
                local btn = self.items[i]:get(ITEM_BTN)
                if (btn) then
                    btn:removeButtonClickEventListener()
                end
            end
        end
    end

    self.items = {}
    self:setBackBtnVisibility(false)
    --self:hideEntity(self.ladyTemplate)
    self:hideEntity(self.raceTemplate)
    self.raceTemplate = nil
end

-- showing the chosen avatar animation in a few steps
-- - bringing the avatar to front
function GuideCode:showChosen()
    print("showChosen")
    self.scene:stopSound(SPARKLE_SOUND)

    --self.scene:playSound(SPARKLE_SOUND, true)

    self:prepareState("Chosen")
    if (self.bgEnt:getState() ~= BG_FINAL) then
        self:setBgVisibility(BG_FINAL)
    end

    self.chosenTemplate = self:showEntity(CHOSEN_AVATAR_TEMPLATE, self.loginData[GENDER])

    -- In case the isRaceAvailable is false, we need to create the lady template, if it was true the lady template has been created before.
    if (self.ladyTemplate == nil) then
        self.ladyTemplate = self:showEntity(LADY_TEMPLATE)
    end

    local chosenAvatarState = ITEM_ENT..self.loginData[RACE]
    self.chosenTemplate:get(CHOSEN_AVATAR):setState(chosenAvatarState)
    self.chosenTemplate:get(AVATAR_TO_DRESS):setState(AVATAR_NAKED)

    self:showDressAvatar()
end

-- - effect before showing dressed avatar
function GuideCode:showDressAvatar()
    print("showDressAvatar")
    --self.scene:stopSound(SPARKLE_SOUND)

    self.hideTemplate = self:showEntity(HIDE_AVATAR_TEMPLATE)

    self.ladyTemplate:addRef()
    self.placeHolder:removeChild(self.ladyTemplate)
    self.placeHolder:addChild(self.ladyTemplate)
    self.ladyTemplate:release()

    --self:hideEntity(self.ladyTemplate)
    Events.listenTo(HIDE_AVATAR_CUE, self, self.switchToDressed, self.listenerId)
    self.hideTemplate:addStateEndEventListener(self, self.onDressingDone)
end

-- - show the dressed avatar
function GuideCode:switchToDressed()
    self.scene:playSound(TRANSFORMATION_SOUND)
    print("Dressed AVATAR_TO_DRESS: " .. AVATAR_TO_DRESS .. " AVATAR_DRESSED: " .. AVATAR_DRESSED)
    self.chosenTemplate:get(AVATAR_TO_DRESS):setState(AVATAR_DRESSED)
end

-- - state is finished removing the effect and getting ready to play
function GuideCode:onDressingDone()
--self.scene:stopSound(SPARKLE_SOUND, true) //remove

    print("Dressing Done")
    self.hideTemplate:removeStateEndEventListener()
    self:hideEntity(self.hideTemplate)
    self.hideTemplate = nil
    self:showFinalState()
end

-- hiding the chosen state
function GuideCode:hideChosen()
    print("hideChosen")
    self:setBgVisibility(BG_NORMAL)
    self:hideEntity(self.picTemplate)
    self.picTemplate = nil

    self:hideEntity(self.playTemplate)
    self.playTemplate = nil

    self:hideEntity(self.chosenTemplate)
    self.chosenTemplate = nil
end

-- the avatar is shown and now we add the play button and profile pic templates 
function GuideCode:showFinalState()
    print("showFinalState")
    self.scene:stopSound(SPARKLE_SOUND)


--[[
  self.picTemplate = self:showEntity(PROFILE_PIC_TEMPLATE, PIC_ENTER)
  self.profilePic = self.picTemplate:get("picture")
  self.profilePic:setState(self.loginData[GENDER])
  self.picTemplate:visible(false)
  self.picTemplate:addStateEndEventListener(self, self.onReadyToPlay)
]]--


    local clickIndicator = "Back"
    if (self.defaultData.numOfPicks[3] == 0) then
        clickIndicator = "Select"
    end

    self.defaultData.numOfPicks[3] = self.defaultData.numOfPicks[3] + 1

    Analytics.reportAnalytics(BI_FEATURE, CONTEXT_GUIDE, "showPlayButton", {loginType = Analytics.getLoginType(), clickInd = "Select",
            dt = Analytics.getDeviceType(), net = Analytics.getNetworkType()})

    -- play sound when the bubble (above avatar's head) shows
    self.scene:playSound(THOUGHT_BUBBLE_SOUND)

    self.playTemplate = self:showEntity(PLAY_TEMPLATE, PLAY_ENTER)
    --self.playTemplate:addStateEndEventListener(self, self.onReadyToPlay)
    self:onReadyToPlay()
end

-- all animations done ready to play waiting for click
function GuideCode:onReadyToPlay()
    print("ready")
    --self.playTemplate:removeStateEndEventListener()
    self.scene:playSound(SPARKLE_SOUND, true)
    if (self.isFacebookUser == true and self.isRaceAvailable == false) then
        self:setBackBtnVisibility(false)
    else
        self:setBackBtnVisibility(true)
    end
    self.playTemplate:addEventListener(PLAY_BTN, self, self.onPlay, self.listenerId..PLAY_BTN)

    UserActivityLogger.logUserActivity("READY_TO_PLAY_DISPLAYED")
end

-- showing / hiding the background with the state
-- @param [string] state - the state to put background to - nil for hiding it
function GuideCode:setBgVisibility(state)
    if (self.bgEnt) then
        if (state) then
            self.bgEnt:setState(state)
        else
            self.bgEnt:setState(BG_INIT)
        end
    else
        print("[ERROR] got to setBgVisibility but bgEnt is nil!")
    end
end

-- showing / hiding the back button 
-- @param [bool] isVisible - if true showing the back button
function GuideCode:setBackBtnVisibility(isVisible)
    self.backBtnTemplate:visible(isVisible)
    if (isVisible) then
        self.backBtnTemplate:addEventListener(BACK_BTN, self, self.handleBackClick, self.listenerId..BACK_BTN)
    else
        local btn = self.backBtnTemplate:get(BACK_BTN)
        if (btn) then
          btn:removeButtonClickEventListener()
        end
    end
end

-----------------------------------------------------------------------------------------------------------------------------------
---                                               Managing transitions                                                          ---
-----------------------------------------------------------------------------------------------------------------------------------

-- showing transition effect while in the cue point replaces all the assets by calling:
-- @param [function] undoInTransition - one of the hide functions - removes the last state that was shown
-- @param [function] doInTransition - one of the show functions - shows the next state's assets
function GuideCode:showTransition(doInTransition, undoInTransition)
    print("KILL LADY ON BACK BUTTON")
    self:hideEntity(self.ladyTemplate)
    self.ladyTemplate = nil

    Events.listenTo(TRANSITION_CUE, self, undoInTransition, self.listenerId)
    Events.listenTo(TRANSITION_CUE, self, doInTransition, self.listenerId.."2")
    self.fadeToBlack = self.scene:createEntity(TRANSITION_TEMPLATE)
    self.fadeToBlack:addStateEndEventListener(self, self.afterTransition)
end

-- after the transition ended remove the asset and the listeners
function GuideCode:afterTransition(eventParamsTable)
    Events.removeEventListener(TRANSITION_CUE, self.listenerId)
    Events.removeEventListener(TRANSITION_CUE, self.listenerId.."2")
    self.fadeToBlack:removeStateEndEventListener()

    if (self.scene) then
        self.scene:removeEntity(self.fadeToBlack)
    end
    self.fadeToBlack = nil
end

-----------------------------------------------------------------------------------------------------------------------------------
---                                               Logic between steps                                                           ---
-----------------------------------------------------------------------------------------------------------------------------------

-- setting params relevant to the back button, this function sets which methods will be called on click on back button
-- according to the given state
-- @param [string] state - the state which the guide is going in to
function GuideCode:prepareState(state)
    self.toDo = nil
    self.toUndo = nil
    local beforeState = nil
    for k,v in pairs (self.defaultData.statesNames) do
        if (v == state) then
            if (k > 1) then
                self.toDo = self:getPreviousStatesFunctionRecursive(k)
                self.toUndo = self.defaultData.statesFuncs["hide"..state]
            end
            break
        end
    end
end

-- this function returns the previous state that should be called on back click
-- @param [int] stateIndex - the index of the state that the guide is currently in
function GuideCode:getPreviousStatesFunctionRecursive(stateIndex)
    if (self.defaultData.statesNames[stateIndex-1] == "Gender") and (self.isFacebookUser == true) then
        -- if facebook user then gender selection is disabled - skip to the state before it
        return self:getPreviousStatesFunctionRecursive(stateIndex-1)
    elseif (self.defaultData.statesNames[stateIndex-1] == "Race") and (self.isRaceAvailable == false) then
        -- race flag is off then race selection is disabled - skip to the state before it
        return self:getPreviousStatesFunctionRecursive(stateIndex-1)
    else
        if (stateIndex <= 1) then
            return nil
        end
        return self.defaultData.statesFuncs["show"..self.defaultData.statesNames[stateIndex-1]]
    end
end

-- on back click activate transition with the functions that were defined in the preperation function("prepareState")
function GuideCode:handleBackClick()
    print("backClick")
    self.scene:playSound(CLICK_SOUND)

    local btn = self.backBtnTemplate:get(BACK_BTN)
    if (btn) then
        btn:removeButtonClickEventListener()
    end

    if (self.items) then
        for i=1,#self.items do
            if (self.items[i]) then
                local btn = self.items[i]:get(ITEM_BTN)
                if (btn) then
                    btn:removeButtonClickEventListener()
                end
            end
        end
    end

    self.items = {}

    if (self.raceTemplate) then
        self.raceTemplate:removeStateEndEventListener()
    end

    -- if SPARKLE_SOUND is played (looped) - stop it.
    self.scene:stopSound(SPARKLE_SOUND)

    if (self.toDo) and (self.toUndo) then
        self:showTransition(self.toDo, self.toUndo)
        self.toDo = nil
        self.toUndo = nil
    else
        print("no state to go back to")
    end
end

-- on lobby click showing the avatar creation or skipping if avatar was already created in previous session
function GuideCode:handleLobbyClick()
    print("lobbyClicked")

    local nextFunc
    -- setting the lady to exit state
    self.ladyTemplate:setState(LADY_EXIT_LOBBY)
    self.scene:stopSound(SPARKLE_SOUND)

    -- if an avatar was already created
    if (self.isSkipAvatarCreation == true) then
        -- on animate lady exit end - end the guide
        print("adding end guide event listener to set state")
        self.ladyTemplate:addStateEndEventListener(self, self.endGuide)
    else
        -- starting bg music for the guide phase
        self.scene:playBGMusic(BG_MUSIC)

        -- checking the right state to activate according to the params
        nextFunc = self:getFirstStateFunc()

        self:showTransition(nextFunc, self.hideLobby)

        Analytics.reportAnalytics(BI_FEATURE, CONTEXT_GUIDE, "chooseCasino", {dt = Analytics.getDeviceType(), net = Analytics.getNetworkType()})

        Events.dispatch(DISABLE_GAMABLE_AREAS)
    end
end

-- the function returns func of the "first" state after taking all the params into consideration
function GuideCode:getFirstStateFunc()
    print("getFirstStateFunc")

    local nextFunc = nil

    if (self.isFacebookUser == false) then
        nextFunc = self.showGender
    else
        if (self.isRaceAvailable == true) then
            nextFunc = self.showRace
        else
            self.loginData[RACE] = 1
            nextFunc = self.showChosen
        end
    end

    return nextFunc
end

-- on female clicked on gender selection
function GuideCode:femaleSelected()
    print("female selected")
    self:genderSelected(FEMALE)
end

-- on male clicked on gender selection
function GuideCode:maleSelected()
    print("male selected")
    self:genderSelected(MALE)
end

-- handling a selection of gender and calling the transition of the next step
function GuideCode:genderSelected(selected)
    if (self.female) then
        local btn = self.female:get(FEMALE_BTN)
        if (btn) then
            btn:removeButtonClickEventListener()
        end
    end

    if (self.male) then
        local btn = self.male:get(MALE_BTN)
        if (btn) then
            btn:removeButtonClickEventListener()
        end
    end

    self.scene:playSound(CLICK_SOUND)
    self.scene:stopSound(SPARKLE_SOUND)

    local clickIndicator = "Back"
    if (self.defaultData.numOfPicks[1] == 0) then
        clickIndicator = "Select"
    end
    self.defaultData.numOfPicks[1] = self.defaultData.numOfPicks[1] + 1

    self.loginData[GENDER] = selected

    if (selected == FEMALE) then
        self.female:setState(AVATAR_SELECTED)  -- EYALB todo - add event listeners?
        self.male:setState(AVATAR_NOT_SELECTED)
        self.maxItem = self.defaultData.skinTonesNum[FEMALE]
    else
        self.female:setState(AVATAR_NOT_SELECTED)
        self.male:setState(AVATAR_SELECTED)
        self.maxItem = self.defaultData.skinTonesNum[MALE]
    end

    Analytics.reportAnalytics(BI_FEATURE, CONTEXT_GUIDE, "selectGender", {loginType = Analytics.getLoginType() ,gender = self.loginData[GENDER], clickInd = clickIndicator, dt = Analytics.getDeviceType(), net = Analytics.getNetworkType()})

    if (self.isRaceAvailable) then
        self:showTransition(self.showRace, self.hideGender)
    else
        self.loginData[RACE] = 1
        self:showTransition(self.showChosen, self.hideGender)
    end
end

-- handle race selection and handling transition to next state
function GuideCode:raceSelected(eventParamsTable)
    print("raceSelected")

    self.scene:playSound(CLICK_SOUND)
    self:setBackBtnVisibility(false)
    for i=1,#self.items do
        local btn = self.items[i]:get(ITEM_BTN)
        if (btn) then
            btn:removeButtonClickEventListener()
        end

        if (eventParamsTable.parentId == ITEM_ENT..i) then
            -- the chosen one
            local clickIndicator = "Back"
            if (self.defaultData.numOfPicks[2] == 0) then
                clickIndicator = "Select"
            end
            self.defaultData.numOfPicks[2] = self.defaultData.numOfPicks[2] + 1
            self.loginData[RACE] = i
            self.items[i]:setState(AVATAR_SELECTED)
            self:setBgVisibility(BG_FINAL)

            if (self.ladyTemplate) then
                self.ladyTemplate:setState(LADY_EXIT)
            end

            self.items[i]:addStateEndEventListener(self, self.onSelectedAnimationEnded)
            local character = ITEM_ENT..self.loginData[RACE]

            Analytics.reportAnalytics(BI_FEATURE,CONTEXT_GUIDE, "selectCharacter", {loginType = Analytics.getLoginType(), character = character, clickInd = clickIndicator,
                    dt = Analytics.getDeviceType(), net = Analytics.getNetworkType()})
        else
            self.items[i]:setState(AVATAR_NOT_SELECTED)
        end
    end
end

-- after the animation of the selected race ended continue to last state "chosen"
function GuideCode:onSelectedAnimationEnded(eventParamsTable)
    print("selectedAnimEnded")
    self.scene:stopSound(SPARKLE_SOUND)

    local ent = self.scene:get(eventParamsTable.parentId)
    ent:removeStateEndEventListener()

    self:hideRace()
    self:showChosen()
end

-- on play clicked finish the avatar creation and update the user data
function GuideCode:onPlay()
    print("Guide - onPlay")
    -- self.scene:playSound(CLICK_SOUND)

    local btn = self.playTemplate:get(PLAY_BTN)
    if (btn) then
        btn:removeButtonClickEventListener()
    end

    self:setBackBtnVisibility(false)
    self.scene:stopSound(SPARKLE_SOUND)

    if (self.playTemplate) then
        self.playTemplate:setState(PLAY_EXIT)
    end
    self.scene:playSound(START_PLAYING_CLICK_SOUND)
    self:sendUpdateUser()
    Analytics.reportAnalytics(BI_FEATURE, CONTEXT_GUIDE, "clickPlayButton", {loginType = Analytics.getLoginType(), dt = Analytics.getDeviceType(), net = Analytics.getNetworkType()})
end

-- updating user data with all the selection and sending it to the server
function GuideCode:sendUpdateUser()
    print("sendUpdateUser")
    local actionsUrl = Http.getActionsUrl()
    local updateUserUrl = actionsUrl.."mobile/userupdate"
    local params = {skinTone = tostring(self.loginData[RACE])}
    if (self.isFacebookUser == false) then
        local newUserName = "Guest"..tostring(math.random(100, 999))
        print("the new user name is", newUserName)
        params["name"] = newUserName
        params["sex"] = self.loginData[GENDER]
    end
    print("Updating user with params: ")
    for k,v in pairs(params) do print(k,tostring(v)) end
    self.updateUserRequest = Http.sendRequest(updateUserUrl, self, self.gotUpdateUserResponse, "POST", params)
end

-- when update response retrieved from the server handling it and ending guide
function GuideCode:gotUpdateUserResponse(eventParams)
    local success = eventParams.success
    self.updateUserRequest:release()
    self.updateUserRequest = nil

    print("got response for user update, success="..tostring(success))

    if success == false then
        Analytics.reportError("DefaultAvatarDueToConnectivity")
    end
    print("[DEBUG] releasing self.updateUserRequest")


    print("[DEBUG] finished")
    self:endGuide()
end

-- calling the next step of the guide to start (the venue guide) and handling the end of this one
function GuideCode:endGuide()
    print("endGuide")
    self.scene:stopBGMusic()
    Events.dispatch(START_GUIDE_VIEW)
    self:hideEntity(self.ladyTemplate)
    self.ladyTemplate = nil
    self:destroy()
    SmartAsset.destroy(self.myName)
end

-- on portal failed - handling the case which the portal couldn't load, should skip guideCode and start guideView
-- the guide view is the second part of the guide happening on top of the env (venue) - (gamesMenu, pickASeat, etc.)
function GuideCode:onPortalFailed()
    print("onPortalFailed")
    Events.dispatch(START_GUIDE_VIEW)
    SmartAsset.destroy(self.myName)
end

return GuideCode