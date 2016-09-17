--GameMenu.lua
bindModule("GamesMenu")
bindModule("Events")
bindModule("AppConfig")
bindModule("WebUtils")
bindModule("InputHandler")
bindModule("PlatformAppData")
bindModule("Camera")
bindModule("Analytics")
bindModule("ServerTimeManager")
bindModule("UserActivityLogger")
bindModule("BackStateHandler")
bindModule("PortalManager")

----------------------------------------------------------------------------------------------------
-- This class creates the view of the games menu and manage everything regards from logic to 
-- animations. The games menu contains 5 game buttons (4 small machines and one big machine on 
-- the right), each button is triggering the "pick a seat" mode of the machine it represents.
-- The game buttons have several states they can be set to:
--  - Available - clickable, the regular state.
--  - New - clickable, marking the button as new game.
--  - Lock - not clickable, marked as locked and present the level that will open it.
--  - Coming Soon - not clickable, marked as coming soon and disabled.
----------------------------------------------------------------------------------------------------

--[[
	GamesMenuCode class
--]]
GamesMenuCode = classes.class()

----------------------------------------------------------------------------------------------------

local MY_NAME = "GamesMenu"
local GUIDE_VALUE = "isGuideActive"

local GAMES_MENU_STATE_LAYER          = "gamesMenu"
local BUTTON_NAME                     = "gameButton"
local BUTTON_PREFIX                   = "btn_"
local STATES_SUFFIX                   = "State"
local UP_ENTITY_NAME                  = "upEntity"
local TEXT_NAME                       = "text"
local EXIT_STATE                      = "exitState"
local ENTRANCE_STATE                  = "entranceState"
local CLOSE_BUTTON                    = "closeBtn"
local INDICATOR_NAME                  = "indicatorEntity"
local IN_ANIMATION_STATE              = "animationButtonState"

-- BI consts
local BI_FEATURE                      = "navigate"
local BI_CONTEXT_EXIST                = "exist"
local BI_CONTEXT_GUIDE                = "guide"

-- States consts
local NEW                             = "new"
local AVAILABLE                       = "available"
local LOCKED                          = "lock"
local COMING_SOON                     = "comingSoon"

-- Events' consts
local SHOW_GAMES_MENU_EVENT           = "gameMenuShowEvent"
local GAMES_MENU_DATA_EVENT_ID        = "gamesMenuDataEvent"
local GAMES_MENU_CLOSED_EVENT_ID      = "gamesMenuClosedEvent"
local SHOW_GAMES_BUTTON               = "showGamesButton"
local HIDE_GAMES_BUTTON               = "hideGamesButton"
local EVENT_GAME_CLOSED               = "EVENT_GAME_CLOSED"
local PORTAL_DISPLAYED_MESSAGE_ID     = "casinoPortalDisplayedMessage"
local PORTAL_CLOSED_EVENT_ID          = "casinoPortalClosedEvent"
local PORTAL_REMOVED_EVENT_ID         = "PORTAL_HIDDEN_ENTERED_ENV"
local ENTERING_CASINO_EXP_ENDED       = "ENTERING_CASINO_EXP_ENDED"
local USER_ENTERED_CASINO_WITHOUT_EXP = "USER_ENTERED_CASINO_WITHOUT_EXP"
local PICK_A_SEAT_EVENT_ID            = "pickASeatEvent"
local PICK_A_SEAT_FAILED_EVENT_ID     = "pickASeatFailedEvent"
local CANCEL_PICK_A_SEAT_EVENT_ID     = "pickASeatCancelledEvent"
local CUE_GAMES_MENU_SHOW_GAMESBUTTON = "CUE_GAMES_MENU_SHOW_GAMESBUTTON"
local CUE_GAMES_MENU_SHOW_XBUTTON     = "CUE_GAMES_MENU_SHOW_XBUTTON"
local CLOSE_GAMES_MENU_EVENT          = "CLOSE_GAMES_MENU_EVENT"

-- This is for the back button state handler
local STATE_GAMES_MENU                = "GAMES_MENU"

-- Sounds consts
local GAMES_MENU_EXIT_SOUND           = "back_button"
local GAME_SELECTED_SOUND             = "game_select"
local GAMES_MENU_ENTER_SOUND          = "gamecards_appear"

function GamesMenuCode:getDefaultData()
    local data = {
        gameStates =  {availableState = 1, newState = 1, lockState = 0, comingSoonState = 0, entranceState = 0, exitState = 0}, -- all the possible states for buttons including animations - 1 = clickable state
        hasText =  {availableState = 0, newState = 0, lockState = 1, comingSoonState = 0, entranceState = 0, exitState = 0}, -- 1 = should have text
        gamesMenuStates = {"enterState", "animateIdleState", "closeState"}, -- the possible states for the menu
        upEntityStates = {"animateIdleState", "animateState"}, -- the possible states of the up entity of each button
    }

    return data
end
function GamesMenuCode:update(elapsedTime)
end

-- initializing all params and members needed to present the games menu
function GamesMenuCode:init(initParamsTable)
    print("GamesMenuCode:init")

    self.scriptUrl = initParamsTable.scriptUrl
    self.assetUrl = initParamsTable.assetUrl
    self.assetVer = initParamsTable.assetVer
    --print("GamesMenuCode assetVer=".. tostring(self.assetVer))

    self.currentCasino = initParamsTable.params.currentCasino
    self.casinoDisplayName = initParamsTable.params.casinoDisplayName
    self.currentMachine = initParamsTable.params.currentMachine
    print("Initiated with machine:",tostring(self.currentMachine)," in casino:", tostring(self.currentCasino))
    self.listenerId = MY_NAME

    -- use mock function getGraphicFormFactor
    self.formFactor = PlatformAppData.getGraphicFormFactor()

    self.this = initParamsTable.this
    self.enterCasinoEnded = false

    Events.listenTo(ENTERING_CASINO_EXP_ENDED, self, self.onEnteringCasinoExpEnded, self.listenerId)
    Events.listenTo(USER_ENTERED_CASINO_WITHOUT_EXP, self, self.onUserEnteredCasino, self.listenerId)

    self:setOnClosedListeners()

    -- filling the relevant data
    self.defaultData = self:getDefaultData()
    self.games = {}

    -- use mock function getDataForCasinoName
    self:parseCasinoData(GamesMenu.getDataForCasinoName(self.currentCasino))
end

-- parsing client config data
-- @param [table] data - the data of all the machines in the venue
function GamesMenuCode:parseCasinoData(data)
    print("GamesMenuCode:parseCasinoData")
    if (data ~= nil) then
        for k,v in pairs(data) do
            self:parseMachine(v)
        end
    end
end

-- parsing machine data
-- @param [table] machine - the machines data table
function GamesMenuCode:parseMachine(machine)
    local data = {}
    data["gameId"] = machine["sceneName"]
    data["gameBrand"] = machine["uiname"]
    if machine["enabled"] then
        if machine["new"] then
            data["new"] = 1
        end
        local minLevel = machine["minLevel"]
        if (minLevel == nil) then
            minLevel = 1
            print("setting minLevel to 1")
        end
        data["openAtLvl"] = minLevel
    end
    self.games[BUTTON_PREFIX..machine["sceneName"]] = data
end

-- adding relevant listeners and removing redundant for state closed
function GamesMenuCode:setOnClosedListeners()
    -- remove opened listeners
    Events.removeEventListener(CLOSE_GAMES_MENU_EVENT, self.listenerId)

    -- add closed listeners
    Events.listenTo(SHOW_GAMES_MENU_EVENT, self, self.loadScene, self.listenerId)
    Events.listenTo(EVENT_GAME_CLOSED, self, self.onBackToEnv, self.listenerId)
    Events.listenTo(CANCEL_PICK_A_SEAT_EVENT_ID, self, self.onBackToEnv, self.listenerId)
    Events.listenTo(PICK_A_SEAT_FAILED_EVENT_ID, self, self.onBackToEnv, self.listenerId)
    Events.listenTo(PORTAL_REMOVED_EVENT_ID, self, self.onBackToEnv, self.listenerId)
end

-- adding relevant listeners and removing redundant for state opened
function GamesMenuCode:setOnOpenedListeners()
    -- remove closed listeners
    Events.removeEventListener(SHOW_GAMES_MENU_EVENT, self.listenerId)
    Events.removeEventListener(EVENT_GAME_CLOSED, self.listenerId)
    Events.removeEventListener(CANCEL_PICK_A_SEAT_EVENT_ID, self.listenerId)
    Events.removeEventListener(PICK_A_SEAT_FAILED_EVENT_ID, self.listenerId)

    Events.removeEventListener(PORTAL_REMOVED_EVENT_ID, self.listenerId)

    -- add opened listeners
    Events.listenTo(CLOSE_GAMES_MENU_EVENT, self, self.closeGamesMenu, self.listenerId)
end

-- loading the games menu scene
function GamesMenuCode:loadScene(eventParamsTable)
    print("Showing games menu")
    InputHandler.disableSceneInput()

    self.isGuideMode = AppConfig.getBoolean(GUIDE_VALUE)
    self.isAutoOpen = eventParamsTable.isAutoOpen
    self.flowId = math.floor(ServerTimeManager.getServerTime() / 1000)
    local sceneName = self.casinoDisplayName.."GamesMenu.scene"
    self.scene = nil
    self:setOnOpenedListeners()

    BackStateHandler.insertBackState(STATE_GAMES_MENU, "lobby")

    self.loadingscene = GameScene.createFromFileAsync(sceneName, self.assetUrl, self, self.onSceneLoaded, "GamesMenuCodeSceneLoader", false, false, MY_NAME, self.formFactor)
end

-- when scene is loaded presenting the games menu
function GamesMenuCode:onSceneLoaded()
    print("GamesMenuCode:onSceneLoaded")

    local backEvent = BackStateHandler.getEventNameForState(STATE_GAMES_MENU)
    Events.listenTo(backEvent, self, self.onBackClicked, self.listenerId)

    self.scene = self.loadingscene

    AppConfig.setProperty("gamesMenuShown", true);

    Events.dispatch(HIDE_GAMES_BUTTON)
    Events.dispatch(PORTAL_DISPLAYED_MESSAGE_ID, {asMilestoneBar = true})
    GameScene.addToManager(self.scene, "kScenePopupLayer")
    GamesMenu.setAutoShowMilestone(true)

    local entity = self.scene:createEntity(MY_NAME.."Template")
    self.scene:get(CLOSE_BUTTON):visible(false)
    self.menuLayer = self.scene:get(GAMES_MENU_STATE_LAYER)
    self.trigger = "manual"
    if (self.isAutoOpen) then
        self.trigger = "auto"
    end
    local biContext = BI_CONTEXT_EXIST
    if (self.isGuideMode == true) then
        biContext = BI_CONTEXT_GUIDE
    end
    Analytics.reportAnalytics(BI_FEATURE, biContext, "showGamesMenu",
        { xp=Analytics.getXP(), balance=Analytics.getBalance(), casinoLevel=Analytics.getCasinoLevel(),
            vName=self.currentCasino, clickFrom="games", onTrigger=self.trigger, flowId=self.flowId,
            assetVer=self.assetVer})

    self:reset()
end

-- while waiting for last animations to end we are preparing for close
function GamesMenuCode:prepareToClose()
    print("GamesMenuCode:prepareToClose")
    self.scene:get(CLOSE_BUTTON):visible(false)
    self.scene:get(CLOSE_BUTTON):removeButtonClickEventListener()
end

-- destroy - also called from the SAM and needs to implement the release of all elements
function GamesMenuCode:destroy()
    print("GamesMenuCode:destroy")
    if (self.scene) then
        Events.removeEventListener(SHOW_GAMES_MENU_EVENT, self.listenerId)
        Events.removeEventListener(EVENT_GAME_CLOSED, self.listenerId)
    end
    self.showGamesButtonOnExit = false
    self:afterAllClosed()
end

-- after all animations has ended we close all
function GamesMenuCode:afterAllClosed()
    print("GamesMenuCode:afterAllClosed")

    local backEvent = BackStateHandler.getEventNameForState(STATE_GAMES_MENU)
    Events.removeEventListener(backEvent, self.listenerId)

    if (self.scene) then
        GameScene.removeFromManager(self.scene)
        self.scene = nil
    end

    AppConfig.setProperty("gamesMenuShown", false);

    self:setOnClosedListeners()

    -- when all the closing animations are over enabling the scene and gameable areas
    Events.dispatch(GAMES_MENU_CLOSED_EVENT_ID, {isGameSelected = self.isGameSelected})
    Events.dispatch(PORTAL_CLOSED_EVENT_ID, {asMilestoneBar = true})

    -- don't enable the scene input if a game has been selected
    if not (self.isGameSelected) then
        InputHandler.enableSceneInput()
    end

    UserActivityLogger.logUserActivity("GAMES_MENU_HIDDEN")
end

-- reseting the view to start over
function GamesMenuCode:reset()
    print("GamesMenuCode:reset")
    self.isGameSelected = false
    self.showGamesButtonOnExit = false
    self.myLvl = tonumber(Analytics.getCasinoLevel())

    -- setting menu to initial state
    local state = self.defaultData.gamesMenuStates[1]
    self.menuState = 1
    self.scene:playSound(GAMES_MENU_ENTER_SOUND)

    --listen to cue event to show the x button
    Events.listenTo(CUE_GAMES_MENU_SHOW_XBUTTON, self, self.onCueShowXButton, self.listenerId)

    self:updateMenuState(state)
    self:initAllButtons()
end


-- setting menu to idle state
function GamesMenuCode:initMenu()
    print("GamesMenuCode:initMenu")

    -- setting menu to state idle
    self:updateMenuState(self.defaultData.gamesMenuStates[2])

    -- setting buttons to the correct state
    self:setButtonsState(false)

    -- add close and game's button listeners if not in guide
    if not self.isGuideMode then
        self.scene:addEventListener(CLOSE_BUTTON, self, self.onCloseBtnClick)
    end

    self:sendGamePosition(self.currentMachine)
    UserActivityLogger.logUserActivity("GAMES_MENU_DISPLAYED")
end

-- updating all buttons for state after in animation
function GamesMenuCode:initAllButtons()
    for k,v in pairs(self.games) do
        local btn = self.scene:get(k)
        --print("setting state for", k)
        if (btn) then
            btn:setState(IN_ANIMATION_STATE)
            local gameBtn = btn:get(INDICATOR_NAME)
            if (gameBtn) then
                gameBtn:setState(self:getStateByLvl(v.openAtLvl))
                self:setTextIfNeeded(gameBtn, btn:id())
            end
            btn:addStateEndEventListener(self, self.onButtonInAnimationEnded)
        else
            print("cound't find button", k)
        end
    end
end

-- updating all buttons for their current state after a higher state change(e.g. games menu)
-- @param [bool] isRemoveListener - if set to true then removes the listener for the button (happens only if the button had a listener before)
function GamesMenuCode:setButtonsState(isRemoveListener)
    for k,v in pairs(self.games) do
        local stateName
        if (v.new) then
            stateName = NEW
        else
            --print("level for "..k.." is "..tostring(v.openAtLvl))
            stateName = self:getStateByLvl(v.openAtLvl)
        end
        local btn = self.scene:get(k)
        if (btn ~= nil) then
            local gameBtn = btn:get(BUTTON_NAME)
            if (isRemoveListener) then
                gameBtn:removeButtonClickEventListener()
            end
            self:updateButtonState(stateName, btn)
        else
            print("cound't find button", k)
        end
    end
end

-- returns the state of a machine by comparing its level to the user's
-- @param [int] lvl - the level which the machine opens at
function GamesMenuCode:getStateByLvl(lvl)
    local state
    if not (lvl) then
        state = COMING_SOON
    elseif (self.myLvl < lvl) then
        state = LOCKED
    else
        state = AVAILABLE
    end
    return state..STATES_SUFFIX
end

-- after animation ended setting the button to its original state
function GamesMenuCode:onButtonInAnimationEnded(eventParamsTable)
    if self.scene then
        local btn = self.scene:get(eventParamsTable.parentId)
        btn:removeStateEndEventListener()
    else
        print("GamesMenuCode:onButtonInAnimationEnded - scene is nil!!")
    end
end

-- updating a button to a new state
-- @param [string] stateLevel - the state to set the entity to
-- @param [table] entity - the entity(button) to change state of
function GamesMenuCode:updateButtonState(stateLevel, entity)
    if (entity ~= nil) then
        --print("setting "..entity:id().." to state: "..stateLevel)
        entity:setState(stateLevel)
        if (self:isEnabled(stateLevel)) then
            local addEventListener = true
            -- In guide, only add the event listener to the MGM button
            if (self.isGuideMode == true and (entity:id() ~= BUTTON_PREFIX..self.currentMachine)) then
                addEventListener = false
            end

            if (addEventListener) then
                entity:addEventListener(BUTTON_NAME, self, self.onGameButton)
            end
        end
        self:setTextIfNeeded(entity, entity:id())
    else
        print("updateButtonState no entity received")
    end
end

-- updating menu to a new state
-- @param [string] stateLevel - the state to set the menu to
function GamesMenuCode:updateMenuState(stateLevel)
    print("GamesMenuCode:updateMenuState ", stateLevel)
    if (self.menuLayer ~= nil) then
        self.menuLayer:setState(stateLevel)
        self.menuState = self:getMenuStateIndex(stateLevel)
        self.menuLayer:addStateEndEventListener(self, self.onMenuAnimEnded)
    else
        print("updateMenuState no entity received")
    end
end

-- converts from the state name to it's index in the const array
-- @param [string] state - the state to get key for
function GamesMenuCode:getMenuStateIndex(state)
    for k,v in pairs(self.defaultData.gamesMenuStates) do
        if (v == state) then
            return k
        end
    end
    return 0
end

-- checking if this state is clickable
-- @param [string] state - the state to check
function GamesMenuCode:isEnabled(state)
    return (self.defaultData.gameStates[state] == 1)
end

--[[ onUserEnteredCasino -
-- when user has entered the env.
-- it might be as as the final stage of the entering caisno exp,
-- or it might be called directly by an event, if user had no entering casino exp.
--]]
function GamesMenuCode:onUserEnteredCasino(event)
    Events.removeEventListener(USER_ENTERED_CASINO_WITHOUT_EXP, self.listenerId)
    self.enterCasinoEnded = true
end

--[[ onEnteringCasinoExpEnded -
-- when user had an entering casino exp, and it ended
--]]
function GamesMenuCode:onEnteringCasinoExpEnded(event)
    print("GamesMenuCode:onEnteringCasinoExpEnded")
    Events.removeEventListener(ENTERING_CASINO_EXP_ENDED, self.listenerId)
    self:onUserEnteredCasino()
    self:onBackToEnv(event)
end

-- this function is called when we get back to the environemnt, and takes care to showing the gamesmenu (opened or as gamesbutton) according to its last state.
-- this is happening following to the lobby hidden event.
-- in case we are the middle of the guide - do nothing.
function GamesMenuCode:onBackToEnv(eventParamsTable)

    print("GamesMenuCode:onBackToEnv enterCasinoEnded=", tostring(self.enterCasinoEnded), "eventId=", tostring(eventParamsTable.eventId))

    -- If the enter casino flow hasn't been completed yet, return, we will get back to this when it does
    if (self.enterCasinoEnded == false) then
        return
    end

    -- in case we left game for the matter of switching to another game (for example thorw "new machine unlocked" popup), we don't want to present the gamesmenu.
    if (eventParamsTable.leftGameToSwitchGame == true) then
        print("aborting backToEnv because switching games..")
        return
    end

    -- check we are not in guide mode
    if (AppConfig.getBoolean(GUIDE_VALUE) == false) then
        -- if autoShowMilestone is true - games menu should be opened. if false - enable the scene and present the games button only.
        if (GamesMenu.getAutoShowMilestone() == true) then
            -- isAutoOpen is for analytics purpose.
            eventParamsTable.isAutoOpen = true
            if (self.scene == nil) then
                self:loadScene(eventParamsTable)
            end
        else
            InputHandler.enableSceneInput()
            Events.dispatch(SHOW_GAMES_BUTTON)
        end
    end

    --print("onBackToEnv finished")
end

-- called after a button click
function GamesMenuCode:onGameButton(eventParamsTable)
    local btn = self.scene:get(eventParamsTable.parentId)
    print("clicked game: "..btn:id().." with state: "..btn:getState())

    for k,v in pairs(self.games) do
        local currentBtn = self.scene:get(k)
        if (currentBtn) then
            self:handleClickForEnter(currentBtn, btn:id() == k)
        end
--    end
    end
    self:prepareToClose()
end

-- [[ handleClickForEnter -
-- @brief this function changes the states of all buttons in gamesmenu, after a button is clicked. The clicked button ("initiator") is handled differently from the other buttons.
-- @param [table] button - the button to change state
-- @param [bool] isInitiator - is this the button the was clicked
--]]
function GamesMenuCode:handleClickForEnter(button, isInitiator)
    print("GamesMenuCode:handleClickForEnter")
    local upEnt = button:get(UP_ENTITY_NAME)
    local state = EXIT_STATE
    local gameBtn

    -- if upEnt exist it means this object has a button and so we need to remove the listener
    if (upEnt) then
        gameBtn = button:get(BUTTON_NAME)
        gameBtn:removeButtonClickEventListener()

        -- if it's the object that was clicked we change his state to enter and wait for it's animation to end
        if (isInitiator) then
            state = ENTRANCE_STATE
            self.isGameSelected = true
            self.scene:playSound(GAME_SELECTED_SOUND)
            button:addStateEndEventListener(self, self.onUpEntAnimEndedForEnter)
            eventData = self.games[button:id()]
            eventData["clickFrom"] = "games"
            eventData["enableSelectionOnly"] = self.isGuideMode
            Events.dispatch(PICK_A_SEAT_EVENT_ID, eventData)
            local biContext = BI_CONTEXT_EXIST
            if (self.isGuideMode == true) then
                biContext = BI_CONTEXT_GUIDE
            end
            Analytics.reportAnalytics(BI_FEATURE, biContext, "chooseSlot",
                { xp=Analytics.getXP(), balance=Analytics.getBalance(), casinoLevel=Analytics.getCasinoLevel(),
                    vName=self.currentCasino, clickFrom="games", onTrigger=self.trigger, flowId=self.flowId,
                    gameBrand=self.games[button:id()].gameBrand, assetVer=self.assetVer})
        end
    end

    --print(button:id().." state changing to "..state)
    button:setState(state)
end

-- handles a button click with state lock
-- @param [table] button - the locked button
--function GamesMenuCode:handleClickForLock(button)
--  print("handleClickForLock")
--  local upEnt = button:get(UP_ENTITY_NAME)
--  if (upEnt) then
--    local state = self.defaultData.upEntityStates[2]
--    print(button:id().." state changing to "..state)
--    upEnt:setState(state)
--    upEnt:addStateEndEventListener(self, self.onUpEntAnimEndedForLocked)
--  end

----  if (self.defaultData.hasText[button:getState()] == 1) then
----    local txt = button:get(TEXT_NAME)
----    if (txt) then
----      txt:setNumberWithParams(99, true)
----    end
----  end
--end

-- if there is a text set it to hold the lvl it opens at
-- @param [table] button - the button to set text to
-- @param [string] idForData - the key for the data of the button's game
function GamesMenuCode:setTextIfNeeded(button, idForData)
    if (self.defaultData.hasText[button:getState()] == 1) then
        local txt = button:get(TEXT_NAME)
        if (txt) then
            txt:setNumberWithParams(self.games[idForData]["openAtLvl"], true)
        end
    end
end

function GamesMenuCode:onBackClicked(eventParams)
    print("GamesMenuCode:onBackClicked")
    self:onCloseWithShowGamesButton()
    PortalManager.showPortal()
end

-- when clicking on close settign the auto show to false
function GamesMenuCode:onCloseBtnClick(eventParamsTable)
    print("GamesMenuCode:onCloseBtnClick")
    self:closeGamesMenu()
end

function GamesMenuCode:closeGamesMenu()
    print("GamesMenuCode:closeGamesMenu")

    if (self.scene) then
        GamesMenu.setAutoShowMilestone(false)
        self:onCloseWithShowGamesButton()
    end
end

-- closing the games menu and showing the button (usually happens from closing by clicking X)
function GamesMenuCode:onCloseWithShowGamesButton()
    print("GamesMenuCode:onCloseWithShowGamesButton")

    local backEvent = BackStateHandler.getEventNameForState(STATE_GAMES_MENU)
    Events.removeEventListener(backEvent, self.listenerId)
    BackStateHandler.removeBackState(STATE_GAMES_MENU)
    self.showGamesButtonOnExit = true

    self:onExit()
end

-- closing the games menu without showing the button (happens when picking a machine and entering pick a seat state)
function GamesMenuCode:onExit(eventParamsTable)
    if (self.scene ~= nil) then
        print("GamesMenuCode:onExit scene is loaded, continue as is")
        Analytics.reportAnalytics(BI_FEATURE, BI_CONTEXT_EXIST, "closeGamesMenu",
            { xp=Analytics.getXP(), balance=Analytics.getBalance(), casinoLevel=Analytics.getCasinoLevel(),
                vName=self.currentCasino, clickFrom="games", onTrigger=self.trigger, flowId=self.flowId,
                assetVer=self.assetVer})

        self.trigger = nil
        self:removeButtonListeners()
        self.scene:playSound(GAMES_MENU_EXIT_SOUND)
        Events.listenTo(CUE_GAMES_MENU_SHOW_GAMESBUTTON, self, self.onCueShowGamesButton, self.listenerId)
        self:updateMenuState(self.defaultData.gamesMenuStates[3])
        self:prepareToClose()
    end
end


--[[ we use a cue because when the animation is fully ended its "too late" to show the games button.
--   when we get the cue from gamesmenu, during the anim is closing, we will dispatch event to show games menu button.
--]]
function GamesMenuCode:onCueShowGamesButton()
    Events.removeEventListener(CUE_GAMES_MENU_SHOW_GAMESBUTTON, self.listenerId)

    if (self.showGamesButtonOnExit) then
        Events.dispatch(SHOW_GAMES_BUTTON)
    end
end

--[[ onCueShowXButton -
--  when we get the cue from gamesmenu, during the anim is opening, to show the X button.
--]]
function GamesMenuCode:onCueShowXButton()
    --print("onCueShowXButton")
    Events.removeEventListener(CUE_GAMES_MENU_SHOW_XBUTTON, self.listenerId)

    local closeBtn = self.scene:get(CLOSE_BUTTON)
    if (closeBtn) then
        closeBtn:visible(true)
    end
end

-- removing all buttons' listeners
function GamesMenuCode:removeButtonListeners()
    print("GamesMenuCode:removeButtonListeners")
    for k,v in pairs(self.games) do
        local btn = self.scene:get(k)
        if (btn ~= nil) then
            local gameBtn = btn:get(BUTTON_NAME)
            if gameBtn then
                gameBtn:removeButtonClickEventListener()
            end
        end
    end
end

-- after changing state of menu this will be called after animation will end
function GamesMenuCode:onMenuAnimEnded(eventParamsTable)
    --print("menu animation ended for '" .. self.defaultData.gamesMenuStates[self.menuState] .. "'")
    if (self.scene ~= nil) then
        local menu = self.scene:get(eventParamsTable.parentId)
        if menu then menu:removeStateEndEventListener() end

        -- if finished animation for state #1
        if (self.menuState == 1) then
            self:initMenu()
            -- if finished animation for state #3
        elseif (self.menuState == 3) then
            self:afterAllClosed()
        end
    end
end

-- after changing state of upEntity for available or new state this will be called after animation will end
function GamesMenuCode:onUpEntAnimEndedForEnter(eventParamsTable)
    local btn = self.scene:get(eventParamsTable.parentId)
    --print("up entity animation ended for "..btn:id())
    btn:removeStateEndEventListener()
    self:afterAllClosed()
end

-- sending a games button position and size as an event so the guide will catch it and know where to place the focus
-- @param [string] gameName - the name of the wanted game
function GamesMenuCode:sendGamePosition(gameName)
    print("GamesMenuCode:sendGamePosition")
    local gameBtn = self.scene:get(BUTTON_PREFIX..self.currentMachine)
    if (gameBtn) then
        local rect = gameBtn:getAbsolutePosition()
        rect.x = rect.x + gameBtn:width() / 2
        rect.y = rect.y + gameBtn:height() / 2
        rect.h = gameBtn:height()
        rect.w = gameBtn:width()
        print ("sending game data", tostring(self.scene:id()), tostring(gameBtn:id()))
        Events.dispatch(GAMES_MENU_DATA_EVENT_ID, {square = rect, sceneId = self.scene:id(), entityId = gameBtn:id()})
    else
        print("no game button found: "..gameName)
        self.isGuideMode = false
    end
end

return GamesMenuCode