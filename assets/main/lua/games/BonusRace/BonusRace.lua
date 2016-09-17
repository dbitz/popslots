require("ObstacleRace")
--require('mobdebug').start()

bindModule("SlotsGame")
bindModule("Analytics")
bindModule("Events")
bindModule("AnimatedItemLayerNode")
bindModule("GamingNetwork")
bindModule("ScriptUtils")

local Component = classes.class()


function Component:init (initParamsTable)
    --require('mobdebug').on()
    print("Component Init")
end

-------------------------------------------


-------------------------------------------
--[[
BonusRace Component class
--]]
BonusRace = classes.class(Component)

-- BI constants
local BI_FEATURE = "raceBonus"

local BI_CONTEXT_CHOOSE = "chooseScreen"
local BI_CONTEXT_PLAY = "playing"
local BI_CONTEXT_RACE = "race"
local BI_CONTEXT_SUMMARY = "summary"

function BonusRace.update(elapsedTime)
  if (_bonusRace.obstacleRace ~= nil) then
      _bonusRace.obstacleRace:update(elapsedTime)
  end
end

function BonusRace.initComponent(initParamsTable)
    --require('mobdebug').on()
    _bonusRace = BonusRace.new(initParamsTable)
end

function BonusRace:init (initParamsTable)
  -- call the parent init
  Component:init(initParamsTable)

  print("BonusRace Component Init")

  self.listenerId = "bonusRaceLuaClass"

  -- init member variables
  self.initParamsTable = initParamsTable
  self.obstacleRace = nil
  self.slotOpen = false
  self.hideMachineWhenDisplayed = false
  self.bonusCredits = 0
  self.chosenId = 0
  self.raceStarted = false
  
  -- add slots listeners
  Events.listenTo("SlotsGameInitEvent", self, self.onSlotOpened, self.listenerId)
  Events.listenTo("EVENT_GAME_DISPLAYED", self, self.onSlotDisplayed, self.listenerId)
  Events.listenTo("EVENT_GAME_CLOSED", self, self.onSlotClosed, self.listenerId)
  Events.listenTo("START_BONUS_RACE", self, self.startBonusRace, self.listenerId)

  -- smartfox events
  Events.listenTo("BonusRaceEvent", self, self.onBonusRaceEvent, self.listenerId)
  
  -- add scenes listeners
  Events.listenTo("showPersonalSummaryScreen", self, self.showPersonalSummaryScreen, self.listenerId)
  Events.listenTo("raceSceneCreated", self, self.onRaceSceneCreated, self.listenerId)
end

function BonusRace:onSlotOpened(eventParams)
  print("slot opened")
  print("params bonusGame="..tostring(eventParams.bonusGame)..", credits="..tostring(eventParams.bonusCredits))
  
  if (eventParams.bonusGame == "bonusRace") then
    print("this slot has a bonus race -credits="..tostring(eventParams.bonusCredits)..", roundId="..tostring(eventParams.roundId))
    self.bonusCredits = tonumber(eventParams.bonusCredits)

    -- set the slotOpen flag to true, this way we know that we should play the sounds of the bonus game etc.
    self.slotOpen = true
    if self.obstacleRace ~= nil then
      self.obstacleRace:setSlotOpen(true)
    end

    -- Keep the roundId, we need it to call the AGP_race_win api
    self.roundId = eventParams.roundId
    local slotsGame = SlotsGame.getCurrent()
    if slotsGame ~= nil then
      self.gameUIName = slotsGame:getUIName()

      -- If we are already playing the bonus game we should hide the machine when it is displayed
      self.hideMachineWhenDisplayed = (self.obstacleRace ~= nil)

      if (self.hideMachineWhenDisplayed) then
        -- Let the machine know that it should hide itself on start, it will send the EVENT_GAME_DISPLAYED event, so we can focus on the wall
        Events.dispatch("HIDE_SLOT_ON_START")
      end
    else
      print("no game!!") -- this should never happen
    end
  end
end

function BonusRace:onSlotDisplayed(eventParams)
  print("slot displayed slotsOpen="..tostring(self.slotOpen)..", autoSpins="..tostring(self.autoSpins))
  local slotsGame = SlotsGame.getCurrent()

  -- If we are sitting on the machine, check to see if needs to focus on the wall
  if (self.slotOpen and slotsGame ~= nil) then

    -- If the user sat in the middle of the game we should hide the game frame and focus on the wall
    if (self.hideMachineWhenDisplayed == true) then
      Events.dispatch("HIDE_GAME_FRAME", {changeLockScreenState=true})
      self:focusOnSceneItem()
    end
  end
end

function BonusRace:onSlotClosed(eventParams)
  print("slot closed")
  -- Set the slotOpen flag to false
  self.slotOpen = false

  -- If we are in the middle of a bonus game, let it know we are not in the game anymore
  if self.obstacleRace ~= nil then
    -- TODO we might need to dispatch the Events.dispatch("SHOW_GAME_FRAME", {changeLockScreenState=true})
    self.obstacleRace:setSlotOpen(false)
  end
end

function BonusRace:onBonusRaceEvent(eventParams)
  -- received AGP_race message from smartfox
  print("received AGP_race")

  -- Create the obstacleRace only if we are not already playing it and we are either playing the bonusRace game or we don't have a memory issue.
  if (self.raceStarted == false and (self.slotOpen or not Utils.isMemoryLow())) then

    -- Save the needed data for the race
    self.roundId = eventParams.roundId
    self.nextRoundId = eventParams.nextRoundId
    self.raceData = eventParams.raceData
    
    -- Set the flag of raceStarted to true and 
    self.raceStarted = true

    -- If we are not playing 
    local slotsGame = SlotsGame.getCurrent()
    if (slotsGame ~= nil and self.slotOpen) then
      -- This means that we are currently playing the game, wait for the START_BONUS_RACE dispatched from the slot to start the race
    else
      self:startBonusRace()
    end

  else
    print("got BonusRaceEvent raceStarted: "..tostring(self.raceStarted)..", slotOpen: "..tostring(self.slotOpen)..", isMemoryLow: "..tostring(Utils.isMemoryLow()))
  end
end

-- Got this event from the slot when it is ready to start the bonus.
-- The slot will handle it's hiding
function BonusRace:startBonusRace(eventParams)
  print("called startBonusRace")

  -- If this function was called as a result of the slot dispatching the START_BONUS_RACE event, we want to save the bonusCredits and chosenId from the event
  if (eventParams ~= nil) then
    self.bonusCredits = tonumber(eventParams.bonusCredits)
    self.chosenId = tonumber(eventParams.chosenId)
  end

  -- get our personal summary data
  GamingNetwork.sendClientEvent("AGP_race_win", {roundId = self.roundId})
  
  -- show the race
  if (self.slotOpen or not Utils.isMemoryLow()) then
    -- only if sitting on slot hide game frame and set focus
    if (self.slotOpen) then
      Events.dispatch("HIDE_GAME_FRAME", {changeLockScreenState=true})
      self:focusOnSceneItem()
    end
    
    -- Setting the animatedLayerNode's scene to null, before releasing the scene, sometimes the update method there crashed.
    AnimatedItemLayerNode.setSceneFromPointer(self.initParamsTable.animatedLayerNode)

    -- create the obstacle race objcet
    self.obstacleRace = ObstacleRace.new({sceneBaseFolder = self.initParamsTable.sceneBaseFolder,
                                      sceneName = self.initParamsTable.sceneId,
                                      raceData = self.raceData,
                                      slotOpen = self.slotOpen,
                                      chosenRacerId = self.chosenId,
                                      gameUIName = self.gameUIName,
                                      roundId = self.roundId,
                                      bonusCredits = self.bonusCredits})
    
    -- Only report the start race for users who are sitting on the machine
    if (self.slotOpen) then
      Analytics.reportAnalytics(BI_FEATURE, BI_CONTEXT_RACE, "startRace", {racerId=self.chosenId, raceRoundId=self.roundId, xp=Analytics.getXP(),
                                                                        balance=Analytics.getBalance(), casinoLevel=Analytics.getCasinoLevel(),
                                                                        gameBrand=self.gameUIName, moonStatus=self.moonStatus,
                                                                        bonusCredits=self.bonusCredits})
    end
  else
    -- not enough memory, simply reset the progress scene
    print("not displaying the bonus race, we are short on memory")
  end
end

function BonusRace:focusOnSceneItem()
  if (self.slotOpen == true) then
    -- focus on the position point
    AnimatedItemLayerNode.focusOnItemByName(self.initParamsTable.positionPointName)
  end
end

function BonusRace:endBonusRace()
  print("endBonusRace")

  -- we got the next roundId in the onBonusRaceEvent, we save it for the analytics of the next round (before it starts, choose racer and progress)
  self.roundId = self.nextRoundId

  --Setting the animatedLayerNode's scene to null, before releasing the scene, sometimes the update method there crashed.
  AnimatedItemLayerNode.setSceneFromPointer(self.initParamsTable.animatedLayerNode)

  if (self.obstacleRace ~= nil) then
    self.obstacleRace:destroy()
    self.obstacleRace = nil
    print("setting the obstacle race to nil")
  end
  
  self.hideMachineWhenDisplayed = false
  self.raceStarted = false

  -- If the user is sitting on the machine we need to show the game frame
  local slotsGame = SlotsGame.getCurrent()
  if (self.slotOpen and slotsGame ~= nil) then
    slotsGame:show()
    Events.dispatch("SHOW_GAME_FRAME", {changeLockScreenState = true})
  end
end

function BonusRace:showPersonalSummaryScreen(eventParams)
  -- remove the obstacleRace scene and put the progressScene back
  self:endBonusRace()
end

-- This event is called from the obstacleRace class, when this happens we set the scene on the wall and dispatch the "showOpeningScene" evnet
function BonusRace:onRaceSceneCreated(eventParams)
  AnimatedItemLayerNode.setSceneFromPointer(self.initParamsTable.animatedLayerNode, eventParams.sceneId)
  --initParamsTable.animatedLayerNode.setScene(self.initParamsTable.sceneId)
  Events.dispatch("showOpeningScene")
end

function BonusRace.destroyComponent()
  print("Destroying bonus race")
  Events.removeAllEventListeners(_bonusRace.listenerId)
  
  -- Setting the animatedItem's scene to null, before releasing the scene
  AnimatedItemLayerNode.setSceneFromPointer(_bonusRace.initParamsTable.animatedLayerNode)

  if (_bonusRace.obstacleRace ~= nil) then
    _bonusRace.obstacleRace:destroy()
    _bonusRace.obstacleRace = nil
  end
  
  _bonusRace = nil
  BonusRace = nil
end

function moduleRelease()
	_module = nil
end