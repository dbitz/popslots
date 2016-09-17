--GuideView.lua
bindModule("Events")
bindModule("AppConfig")
bindModule("PlatformAppData")
bindModule("SlotsView")
bindModule("GameFrame")
bindModule("InputHandler")
bindModule("PortalManager")
bindModule("ShakerCamera")
bindModule("GrantCollector")
bindModule("UserActivityLogger")
bindModule("SmartAsset")
bindModule("MediaBuyers")
bindModule("Analytics")
bindModule("Avatar")

----------------------------------------------------------------------------------------------------
-- This class is incharge of the second part of a new user in the app - teaching how to play.
-- This guide is seperated to several steps that teaches the user the flow of how to spin a 
-- a machine starting with entering the casino. This part is always following the first part (avatar
-- creation), the trigger for it will be an event dispatched from the first part.
-- This part of the guide contains several steps, each step has its own functions (show, ready & hide).
-- Those functions are:
--    - showXXX - showing the step and presenting the focus on the click required.
--    - ready   - on the end of all the animation, adding listeners for the click required.
--    - hide    - after the click of the stage happened we hide all the assets related to the step.
--
-- * In each one of the following stages(except "Welcome") "focus" means darkening everything but 
--   the focused item and stars animation circling the area
-- The stages are:
--    "Welcome":
--          showing the venue and greeting the user to the casino.
--          ends when the user clicks "NEXT".
--    "Ready":
--          showing the env with focus on the games menu button.
--          ends when the user clicks on the games menu button and opens the games menu.
--    "GamesMenu":
--          showing the games menu open with focus on "first" game (defined in the console).
--          ends when the user clicks on the game.
--    "PickMachine":
--          showing the pick a seat state for the machine picked.
--          ends when the user clicks on a machine.
--    "Spin":
--          showing the opened machine with focus on the spin button.
--          ends when the user clicks on the spin button.
----------------------------------------------------------------------------------------------------

--[[
	GuideView class
--]]
GuideView = classes.class()

----------------------------------------------------------------------------------------------------
local GUIDE_VALUE = "isGuideActive"

-- Event Consts
local START_GUIDE_VIEW = "startGuideViewEvent"
local GAMES_MENU_CLICKED = "casinoPortalDisplayedMessage"
local GAME_CLICKED = "pickASeatEvent"
local MACHINE_CLICKED = "pickASeatEventEnded"
local MACHINE_OPENED = "EVENT_GAME_DISPLAYED"
local SPIN_CLICKED = "SMART_GAME_FIRST_SPIN"
local GAMES_MENU_DATA_EVENT_ID = "gamesMenuDataEvent"
local SLOTS_DATA_EVENT_ID = "SMART_GAME_GUIDE_START"
local QUERY_GAME_POSITION_EVENT = "queryGamePositionEvent"
local SHOW_GAME_FRAME = "SHOW_GAME_FRAME"
local HIDE_GAME_FRAME = "HIDE_GAME_FRAME"
local GUIDE_FINISHED_BIG = "GUIDE_FINISHED_BIG"
local SHOW_GAMES_BUTTON = "showGamesButton"
local GAMES_BUTTON_SHOWN = "gamesButtonShown"
local HIDE_GAMES_BUTTON = "hideGamesButton"
local DISABLE_GAMABLE_AREAS = "guideStartedEvent"
local LOGIN_FINISHED = "loginFinished"
local PORTAL_REMOVED_EVENT_ID = "casinoPortalRemovedEvent"
local PORTAL_LOAD_FAILED_EVENT_ID = "casinoPortalLoadFailedEvent"

-- Templates Consts
local LADY_TEMPLATE = "LadyTemplate"
local HIGHLIGHT_TEMPLATE = "StarTemplate"

-- States Consts
local GENERAL_IDLE = "animateIdleState"
local LADY_WELCOME = "welcome"
local LADY_READY = "ready"
local LADY_GAMES_MENU = "selectMachine"
local LADY_PICK_MACHINE = "pickASeat"
local LADY_SPIN = "selectMachine"
local LADY_EXIT = "selectMachine"
local ARROW_NORMAL = "normalState"
local ARROW_COLD = "coldState"
local ARROW_HOT = "hotState"

local NEXT_BTN = "nextButton"

-- BI consts
local FEATURE_LOGIN = "login"
local CONTEXT_WELCOME_BONUS = "welcomeBonus"
local CONTEXT_GUIDE = "guide"
local CONTEXT_PREFIX = "context_"

-- Sounds Consts
local CLICK_SOUND                     = "innerGuideUIClick"
local SPARKLE_SOUND                   = "sparkleLoop"

----------------------------------------------------------------------------------------------------

function GuideView:getDefaultData()
    local data = {}
    return data
end

function GuideView:update(elapsedTime)
end

-----------------------------------------------------------------------------------------------------------------------------------
---                                                   General functions                                                         ---
-----------------------------------------------------------------------------------------------------------------------------------

-- initializing all params and members needed to present the guide view
function GuideView:init(initParamsTable)
    print("GuideView Init")

    if (initParamsTable ~= nil) then
        print("init params")
        self.sceneResPath = initParamsTable.assetUrl
        self.myName = "GuideView"
        self.sceneFile = "Guide.scene"
        self.this = initParamsTable.this
        self.listenerId = self.myName
        AppConfig.setValue(GUIDE_VALUE, true)
        self.formFactor = PlatformAppData.getGraphicFormFactor()

        -- Data gatharing
        self.currentCasino = initParamsTable.params.currentCasino
        self.currentMachine = initParamsTable.params.currentMachine

        self.sceneLoaded = false
        self.loginFinished = false

        self:addFormFactorToTemplates()
    end

    Events.listenTo(START_GUIDE_VIEW, self, self.loadScene, self.listenerId)
    
    -- We do the same for portal removal and failure
    Events.listenTo(PORTAL_REMOVED_EVENT_ID, self, self.onPortalRemoved, self.listenerId)
    Events.listenTo(PORTAL_LOAD_FAILED_EVENT_ID, self, self.onPortalRemoved, self.listenerId)
end

function GuideView:addFormFactorToTemplates()
    LADY_TEMPLATE = LADY_TEMPLATE.."_"..self.formFactor
end

-- destroy - also called from the SAM and needs to implement the release of all elements
function GuideView:destroy()
    print("destroy - GuideView")
    if (self.scene) then
        GameScene.removeFromManager(self.scene)
        self.scene = nil
    end
end

-----------------------------------------------------------------------------------------------------------------------------------
---                         Till here are the validation function for testing the graphics assets                               ---
-----------------------------------------------------------------------------------------------------------------------------------

-- on portal removed making sure that gameable areas are disabled
function GuideView:onPortalRemoved()
    Events.dispatch(DISABLE_GAMABLE_AREAS)

    -- When the portal is removed it's time to show the welcome template'
    self:onLoginFinished()
end

-- loading the guide scene
function GuideView:loadScene()
    Events.removeEventListener(START_GUIDE_VIEW, self.listenerId)
    print("Showing GuideView")

    PortalManager.enterMachine(self.currentMachine)

    -- loading scene
    self.scene = GameScene.createFromFileAsync(self.sceneFile, self.sceneResPath, self, self.onSceneLoaded, self.listenerId.."scene", false, false, self.myName, self.formFactor)
end

-- when the scene is loaded adding it to the manager and triggers first step if ready
function GuideView:onSceneLoaded()
    print("sceneLoaded")
    GameScene.addToManager(self.scene, "kGuideLayer")
    self.sceneLoaded = true
    if (self.loginFinished == true) then
        self:showWelcome()
    else
        print("waiting for login to finish")
    end
end

-- called when login finished, setting all the elements to "disabled" so only the focused items will be clickable, collects the initial grant and 
-- then triggers first step if ready
function GuideView:onLoginFinished()
    print("loginFinished")  
    InputHandler.disableSceneInput()

    -- Old guide behaviour - collecting first grant (coins for spin)
    if (AppConfig.getBoolean("isEntitledForGrant")) then
        local grantSize = AppConfig.getNumber("grantSize")
        print("isEntitledForGrant. grantSize=" .. tostring(grantSize))

        if (grantSize > 0) then
            GrantCollector.acceptGrant("checkin")
            --eyal said to remove this
            --Analytics.reportAnalytics(FEATURE_LOGIN, CONTEXT_WELCOME_BONUS, "collectWelcome", {reward = grantSize, dt = Analytics.getDeviceType(), net = Analytics.getNetworkType()})
        end
    end

    self.loginFinished = true
    if (self.sceneLoaded == true) then
        self:showWelcome()
    else
        print("waiting for scene to load")
    end
end

-----------------------------------------------------------------------------------------------------------------------------------
---                         Showing or hiding states and entities                                                               ---
-----------------------------------------------------------------------------------------------------------------------------------

-- This function is creating an entity on the scene and if wanted setting to a certain state and activating a function on the end 
-- of its animation.
-- @param [string] entityName - the entity template name to create.
-- @param [string] entityState (optional) - the state which to init the entity with.
-- @param [function] onAnimEndedFunc (optional) - the function to be called when animation ended for the entity created.
function GuideView:showEntity(entityName, entityState, onAnimEndedFunc)
    local entity = self.scene:createEntity(entityName)
    if (entity) and (entityState) then
        if (entity:hasState(entityState)) then
            entity:setState(entityState)
            if (onAnimEndedFunc) then
                entity:addStateEndEventListener(self, onAnimEndedFunc)
            end
        end
    end
    return entity
end

-- This function is removing an entity from the scene
function GuideView:hideEntity(entity)
    if (entity) then
        self.scene:removeEntity(entity)
        entity = nil
    end
end

-----------------------------------------------------------------------------------------------------------------------------------
--    "Welcome":
--          showing the venue and greeting the user to the casino.
--          ends when the user clicks "NEXT".
-----------------------------------------------------------------------------------------------------------------------------------
function GuideView:showWelcome()
    print("showWelcome")
    Events.listenTo(SLOTS_DATA_EVENT_ID, self, self.updateSlotsData, self.listenerId)
    Events.dispatch(HIDE_GAME_FRAME, {affectGamesBtn = false})
    Events.dispatch(DISABLE_GAMABLE_AREAS)
    Events.dispatch(HIDE_GAMES_BUTTON)
    self.ladyTemplate = self:showEntity(LADY_TEMPLATE, LADY_WELCOME, self.readyWelcome)
end

function GuideView:readyWelcome()
    print("readyWelcome")

    self.ladyTemplate:removeStateEndEventListener()
    self.ladyTemplate:addEventListener(NEXT_BTN, self, self.hideWelcome, self.listenerId..NEXT_BTN)

    UserActivityLogger.logUserActivity("viewWelcome")
    --eyal said to remove this
    Analytics.reportAnalytics(FEATURE_LOGIN, CONTEXT_GUIDE, "viewWelcome",{dt = Analytics.getDeviceType(), net = Analytics.getNetworkType()})
end

function GuideView:hideWelcome()
    print("hideWelcome")
    self.ladyTemplate:removeButtonClickEventListener(NEXT_BTN)
    self.scene:playSound(CLICK_SOUND)
    self:removeStarsAnim()
    self:hideEntity(self.ladyTemplate)
    Analytics.reportAnalytics(FEATURE_LOGIN, CONTEXT_GUIDE, "clickWelcome",{dt = Analytics.getDeviceType(), net = Analytics.getNetworkType()})
    self:showReady()
end

-----------------------------------------------------------------------------------------------------------------------------------
--    "Ready":
--          showing the env with focus on the games menu button.
--          ends when the user clicks on the games menu button and opens the games menu.
-----------------------------------------------------------------------------------------------------------------------------------
function GuideView:showReady()
    print("showReady")
    -- this ugly code is to make sure the highlight doesn't arrive before the games button is in place
    Events.listenTo(GAMES_BUTTON_SHOWN, self, self.focusGames, self.listenerId)
    Events.dispatch(SHOW_GAMES_BUTTON)
end

function GuideView:focusGames()
    Events.removeEventListener(GAMES_BUTTON_SHOWN, self.listenerId)
    local pos = GameFrame.getGamesPosition()
    local size = GameFrame.getGamesSize()
    pos.w = size.w
    pos.h = size.h
    local gamesButtonEnt = GameFrame.getGamesButton()
    self:createHighlight(gamesButtonEnt)
    pos.x = pos.x + (size.w / 2)
    pos.y = pos.y + (size.h / 2)
    self:createStarsAnim(pos, "gamesMenuStars")
    self.ladyTemplate = self:showEntity(LADY_TEMPLATE, LADY_READY, self.readyReady)
end

function GuideView:readyReady()
    self.ladyTemplate:removeStateEndEventListener()
    Events.listenTo(GAMES_MENU_CLICKED, self, self.hideReady, self.listenerId)
end

function GuideView:hideReady()
    print("hideReady")
    self:removeStarsAnim()
    self:removeHighlight()
    self:hideEntity(self.ladyTemplate)
    Events.removeEventListener(GAMES_MENU_CLICKED, self.listenerId)
    Events.listenTo(GAMES_MENU_DATA_EVENT_ID, self, self.updateGamesMenuData, self.listenerId)
end

-----------------------------------------------------------------------------------------------------------------------------------
--    "GamesMenu":
--          showing the games menu open with focus on "first" game (defined in the console).
--          ends when the user clicks on the game.
-----------------------------------------------------------------------------------------------------------------------------------
function GuideView:showGamesMenu()
    print("showGamesMenu")

    Analytics.reportAnalytics("login", CONTEXT_GUIDE, "openGamesMenu", {dt = Analytics.getDeviceType(), net = Analytics.getNetworkType()})

    self.ladyTemplate = self:showEntity(LADY_TEMPLATE, LADY_GAMES_MENU)
    Events.listenTo(GAME_CLICKED, self, self.hideGamesMenu, self.listenerId)
end

function GuideView:readyGamesMenu() -- currently not in use
    self.ladyTemplate:removeStateEndEventListener()
    -- add arrow
end

function GuideView:hideGamesMenu()
    print("hideGamesMenu")
    self:hideEntity(self.ladyTemplate)
    Events.removeEventListener(GAME_CLICKED, self.listenerId)
    self:removeStarsAnim()
    self:removeHighlight()
    self:showPickMachine()
end

-----------------------------------------------------------------------------------------------------------------------------------
--    "PickMachine":
--          showing the pick a seat state for the machine picked.
--          ends when the user clicks on a machine.
-----------------------------------------------------------------------------------------------------------------------------------
function GuideView:showPickMachine()
    print("showPickMachine")
    self.ladyTemplate = self:showEntity(LADY_TEMPLATE, LADY_PICK_MACHINE, self.readyPickMachine)
end

function GuideView:readyPickMachine()
    self.ladyTemplate:removeStateEndEventListener()
    Events.listenTo(MACHINE_CLICKED, self, self.hidePickMachine, self.listenerId)
    -- add arrow
end

function GuideView:hidePickMachine()
    print("hidePickMachine")
    self:hideEntity(self.ladyTemplate)
    Events.removeEventListener(MACHINE_CLICKED, self.listenerId)
    Events.listenTo(SLOTS_DATA_EVENT_ID, self, self.updateSlotsData, self.listenerId)
    Events.listenTo(MACHINE_OPENED, self, self.showSpin, self.listenerId)
end

-----------------------------------------------------------------------------------------------------------------------------------
--    "Spin":
--          showing the opened machine with focus on the spin button.
--          ends when the user clicks on the spin button.
-- if needed to add / remove the lady to / from the spin state again just comment / uncomment SL1(uncomment for showing the lady) and 
-- SL2 (uncomment to hide the lady)
-----------------------------------------------------------------------------------------------------------------------------------
function GuideView:showSpin()
    print("showSpin")
    Events.removeEventListener(MACHINE_OPENED, self.listenerId)
    SlotsView.enableOnlySpin()
    --self.ladyTemplate = self:showEntity(LADY_TEMPLATE, LADY_SPIN, self.readySpin) -- SL1
    self:readySpin() -- SL2
end

function GuideView:readySpin()
    print("readySpin")
    --self.ladyTemplate:removeStateEndEventListener() -- SL1
    self.ladyTemplate = self:showEntity(LADY_TEMPLATE, "spin")
    Events.listenTo(SPIN_CLICKED, self, self.hideSpin, self.listenerId)
end

function GuideView:hideSpin()
    print("hideSpin")
    self:removeStarsAnim()
    self:removeHighlight()
    self:hideEntity(self.ladyTemplate) -- SL1
    -- self.ladyTemplate = self:showEntity(LADY_TEMPLATE, LADY_EXIT, self.readyEnd) -- SL1
    Events.removeEventListener(SPIN_CLICKED, self.listenerId)
    MediaBuyers.sendMediaFirstSpin()
    self:readyEnd() -- SL2
end

-----------------------------------------------------------------------------------------------------------------------------------
--    End of guide - guide is finished destroying the smart asset running this script
-----------------------------------------------------------------------------------------------------------------------------------
function GuideView:readyEnd()
    print("readyEnd2")
    -- self.ladyTemplate:removeStateEndEventListener() -- SL1
    -- self:hideEntity(self.ladyTemplate) -- SL1
    Analytics.reportAnalytics("navigate", CONTEXT_GUIDE, "completeGuide",{dt = Analytics.getDeviceType(), net = Analytics.getNetworkType()})
    UserActivityLogger.logUserActivity("completeGuide")
    AppConfig.setValue(GUIDE_VALUE, false)
    Events.dispatch(SHOW_GAME_FRAME)
    Events.dispatch(GUIDE_FINISHED_BIG)
    SmartAsset.destroy("GuideView")
end

-----------------------------------------------------------------------------------------------------------------------------------
---                                               Logic between steps                                                           ---
-----------------------------------------------------------------------------------------------------------------------------------

-- Receiving the data needed for the games menu focus (position & size of the machine's button) - received from the games menu
function GuideView:updateGamesMenuData(eventParamsTable)
    print("gotUpdateGamesMenuEvent")
    local tempx = eventParamsTable.square.x
    local tempy = eventParamsTable.square.y
    eventParamsTable.square.x = eventParamsTable.square.x - eventParamsTable.square.w / 2
    eventParamsTable.square.y = eventParamsTable.square.y - eventParamsTable.square.h / 2
    local scene = GameScene.getSceneById(eventParamsTable.sceneId)
    local entity = scene:get(eventParamsTable.entityId)
    self:createHighlight(entity)
    eventParamsTable.square.x = tempx
    eventParamsTable.square.y = tempy
    self:createStarsAnim(eventParamsTable.square)
    self:showGamesMenu()
    Events.removeEventListener(GAMES_MENU_DATA_EVENT_ID, self.listenerId)
end

-- Receiving the data needed for the spin focus (position & size of the machine's spin button) - received from the smart games slot
function GuideView:updateSlotsData(eventParamsTable)
    print("gotUpdateSlotEvent")
    local square = {}
    square.x = eventParamsTable.x
    square.y = eventParamsTable.y
    square.w = eventParamsTable.w
    square.h = eventParamsTable.h
    local scene = GameScene.getSceneById(eventParamsTable.sceneId)
    local entity = scene:get(eventParamsTable.entityId)
    self:createHighlight(entity)
    square.x = eventParamsTable.x + eventParamsTable.w / 2
    square.y = eventParamsTable.y + eventParamsTable.h / 2
    self:createStarsAnim(square, "spinBtnStars")
    self:showSpin()
    Events.removeEventListener(SLOTS_DATA_EVENT_ID, self.listenerId)


end

-- Creating the stars animation circling the highlighted area
-- @param [table] location - the position of the center to circle with stars (x,y)
function GuideView:createStarsAnim(location, state)
    if (location) then
        self.scene:playSound(SPARKLE_SOUND, true)
        if (self.stars == nil) then
            self.stars = self:showEntity(HIGHLIGHT_TEMPLATE, ARROW_NORMAL);
        end  
        if (self.stars) then
            location.x = location.x - self.stars:width() / 2
            location.y = location.y - self.stars:height() 
            self.stars:position(location.x, location.y)

            if(state)then
                print("state avaliable " .. state)
                if(self.stars:hasState(state))then
                    print("stars has state " .. state)
                    self.stars:setState(state);
                end
            end
        end
    end
end

-- Creating the "highlight" effect - actually darkening everything but the square received
-- @param [table] inSquare - position(x,y) and size(w,h) of the wanted highlighted area
function GuideView:createHighlight(inEntity)
    if (inEntity) then

        -- scaling the size and position
        --local square = self:scaleSquare(inSquare)
        self.highlightEnt = self.scene:createHighlightEntityForEntity(inEntity,{r=0,g=0,b=0, a=128})
        self.scene:addEntity(self.highlightEnt)
    end
end

-- Removing the stars animation from the scene
function GuideView:removeStarsAnim()
    self:hideEntity(self.stars)
    self.stars = nil
    self.scene:stopSound(SPARKLE_SOUND)
end

-- Removing the highlight entity from the scene
function GuideView:removeHighlight()
    self:hideEntity(self.highlightEnt)
    self.highlightEnt = nil
end

-- General function that receives a square and scaling it to fit the form factor
-- @param [table] square - the square to scale {x,y,w,h}
function GuideView:scaleSquare(square)
    local res = self.scene:getTargetResolution()
    print(res.x,res.y)
    local scale = PlatformAppData.getDisplayScale(res.x, res.y)
    print("SCALE", scale.x, scale.y)
    local outSquare = {}
    outSquare.x = square.x * scale.x
    outSquare.y = square.y * scale.y
    outSquare.w = square.w * scale.x
    outSquare.h = square.h * scale.y
    return outSquare
end

return GuideView