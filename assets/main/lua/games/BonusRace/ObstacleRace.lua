bindModule("Events")
bindModule("Timer")
bindModule("Tweener")
bindModule("Analytics")
--require('mobdebug').start()

local BI_FEATURE = "raceBonus"

local BI_CONTEXT_SUMMARY = "summary"

----------------------------------------------------------------------------
--[[
	Obstacle Race Client Side Configuration 
--]]

local cfgObstacleRace =
{
	nLaneCount = 4,
	
  listenerId = "obstacleRaceLuaClass",
  
  -- y Location of each lane
	arrLanes = {	
		{yPos = 350},
		{yPos = 400},
		{yPos = 450},
		{yPos = 500}
	},
	
	layers = { paralexLayer = 0, packScoreLayer = 1, obLayer = 1, racerLayer = 2, calloutsLayer = 3, paralexTransitionLayer = 4 },
	
  -- the states of the paralex, the order of the big obstacles is known, so we know the order in which to change the states of the paralex
	paralexStates = 
	{
		start = "start",
		bigBush = { during = "part1" , after = "part2" },
		bigRock = { during = "part3" , after = "part4" },
		bigGazer = { during = "part5" , after = "part6" },
		bigRiver = { during = "part7" , after = "part8" },
		bigBear = { during = "part9" , after = "part10" }
	},
  
  -- This is the y axis offset we need for the sky in the closeUpMode
  ySkyOffsetOnCloseUp = 20
}

local cfgRacers =
{	
	xRunningSpeed = 600, 			-- pixels/sec
	
	nRacersCount   = 4,				-- number of racers in the bonus
	arrRacerData = {
		{	
			id = "R1",
			statePrefix = "R1",
			tId = "Racer1",  -- racer's template id
			lane = 1,
			RGB = {1, 1, 1}, --- YYY temp
      width = 280
		},
		{	
			id = "R2",
			statePrefix = "r2",
			tId = "Racer2",
			lane = 2,
			RGB = {1, 1, 1}, --- YYY temp
      width = 280
		},
		{	
			id = "R3",
			statePrefix = "bw3",
			tId = "Racer3",
			lane = 3,
			RGB = {1, 1, 1}, --- YYY temp
      width = 280
		},
		{	
			id = "R4",
			statePrefix = "R4",
			tId = "Racer4",
			lane = 4,
			RGB = {1, 1, 1}, --- YYY temp
      width = 280
		}  
	},
	
	runStartState = "run",
  
  -- This is a state machine which handles the reactions of the racers to obstacles.
  -- The main tree holds the running states of the racers (run, runInjured and runFast), this is the state the racer is in when encountering an obstacle.
  -- The second tree holds a list of reactions according to the obstacle - jumpOver and take (for small obstacles) and jumpOverSlow (for big obstacles)
  -- Each reaction (pass, fail, stop) indicates the state we need to set the racer to before the obstacle and after it.
	mapRunStateMachine = {
		run = 
		{ 	
			jumpOver = 
			{
				pass = { state = "jump", moveTo = "run" },
				fail = { state = "jumpInjuredAfter", moveTo = "runInjured" }
			},
      
			jumpOverSlow = 
			{
				pass = { state = "jumpSlow", moveTo = "run" },
				fail = { state = "jumpSlowInjuredAfter", moveTo = "runInjured" },
				stop = { state = "jumpSlowStop", moveTo = "stop" } -- YYY this is wrong should add JumpSlowStop
			},
      
			take = 
			{
				pass = { state = "run", moveTo = "run" },
				fail = { state = "run", moveTo = "run" },
				stop = { state = "run", moveTo = "stop" }
			},
      
			heal = 
			{
				pass = { state = "run", moveTo = "run" },
				fail = { state = "run", moveTo = "run" },
				stop = { state = "run", moveTo = "stop" }
			}
		},
    
		runInjured = 
		{ 	
			jumpOver =
			{
				pass = { state = "jumpInjured", moveTo = "runInjured" },
				fail = { state = "jumpInjuredInjuredAfter", moveTo = "runInjured" }
			},
      
			jumpOverSlow = 
			{
				pass = { state = "jumpSlowInjured", moveTo = "runInjured" },
				fail = { state = "jumpSlowInjuredInjuredAfter", moveTo = "runInjured" },
        stop = { state = "jumpSlowInjuredStop", moveTo = "stop" }
			},
      
			take = 
			{
				pass = { state = "runInjured", moveTo = "runInjured" },
				fail = { state = "runInjured", moveTo = "runInjured" },
				stop = { state = "runInjured", moveTo = "stop" }
			},
      
			heal = 
			{
				pass = { state = "runInjured", moveTo = "run" },
				fail = { state = "runInjured", moveTo = "runInjured" },
				stop = { state = "runInjured", moveTo = "stop" }
			}
		}
	},
	
	xBasePos = -50,  -- This with the default energy level will define the racers initial position on the x axis
  -- This table define the way the racers move randomly from left to right, min and max define the extreme values the racers can get to from his real position.
  -- minStep and maxStep define the amount of x to move on each update
  -- subDeltaInterval is the interval that we let the racer to keep his direction before resetting and getting a new one randomly
	xOffset = { min = -20, max = 20, subDeltaInterval = 10, minStep = 0.2, maxStep = 0.4},
  -- The offset of the racer on the y axis related to the lane.
	yBasePos = 0,
  -- The racer's y axis offset in close up mode
  yBasePosOnCloseUp = 0,

	nrg = { default = 4, xLevelOffset = 50, nrgLevelStepSize = 0.02 },
	
  -- define the scale of the racer in regular and close up modes
	xScale  = 0.75,
	yScale  = 0.75,
  xScaleOnCloseUp = 1.0,
  yScaleOnCloseUp = 1.0,
  
  -- This is the x offset that each racer will apply when entering and leaving close up mode (pushes them back out of the screen when entering so they will appear from the left)
  closeUpXOffset = 400,
  -- We use this offset along with the multiplier when entering close up mode, to put the racers back out of the screen with bigger distances between each other, but relative to the current distance 
  closeUpBaseOffset = 150,
  -- We use this multiplier with the closeUpBaseOffset to set the distance between the racers on close up mode
  closeUpOffsetMultiplier = 5,
  
  -- This is the speed of the last racer off of the scene
  speedOffScene = 5
}

local cfgObs = 
{
  -- Table of the obstacles each obstacle has it's template id (tId), state id (sId), reactionType (jumpOver, jumpOverSlow, take etc),
  -- reactionMargin - This is the distance in which the racer should react to the obstacle, it applies to small obstacles.
  -- closeUpReactionMargin - This is the distance in pixels from the left of the screen, the obstacle must pass, before moving to close up mode.
  -- yBaseOffset - The y axis offset to add to the lanes y value when placing the obstacle.
  -- obGraphicType - The graphic type of the obstacle, we currently support the "animated" type. this means that the obstacle is an animated obstacle (like bubbles)
	mapObType =
	{
		smallRock = { tId = "SmallObstacle", sId = "smallOb3" , reactionType = "jumpOver", reactionMargin = 0, yBaseOffset = 0, width = 90},
		smallBush = { tId = "SmallObstacle", sId = "smallOb1" , reactionType = "jumpOver", reactionMargin = 0, yBaseOffset = 0, width = 100},
		smallIce = { tId = "SmallObstacle", sId = "smallOb2" , reactionType = "jumpOver", reactionMargin = -40, yBaseOffset = 0, width = 160},
		smallSnowBall = { tId = "SmallObstacle", sId = "smallOb4" , reactionType = "jumpOver", reactionMargin = 0, yBaseOffset = 0, width = 70},
		smallBunny = { tId = "SmallObstacle", sId = "smallOb5" , reactionType = "jumpOver", reactionMargin = 0, yBaseOffset = 0, width = 135},
		healer = { tId = "SmallObstacle", sId = "smallOb6" , reactionType = "heal", reactionMargin = -200, yBaseOffset = 0, width = 62},
		packScoreX1 = { tId = "SmallObstacle", sId = "smallOb7" , reactionType = "take", reactionMargin = -200, yBaseOffset = 0, width = 75, obGraphicType = "animated"},
		packScoreX2 = { tId = "SmallObstacle", sId = "smallOb8" , reactionType = "take", reactionMargin = -200, yBaseOffset = 0, width = 75, obGraphicType = "animated"},
		packScoreX3 = { tId = "SmallObstacle", sId = "smallOb9" , reactionType = "take", reactionMargin = -200, yBaseOffset = 0, width = 75, obGraphicType = "animated"},
		packScoreX5 = { tId = "SmallObstacle", sId = "smallOb10" , reactionType = "take", reactionMargin = -200, yBaseOffset = 0, width = 75, obGraphicType = "animated"},
		packScoreX10 = { tId = "SmallObstacle", sId = "smallOb11" , reactionType = "take", reactionMargin = -200, yBaseOffset = 0, width = 75, obGraphicType = "animated"},
		packScoreX25 = { tId = "SmallObstacle", sId = "smallOb12" , reactionType = "take", reactionMargin = -200, yBaseOffset = 0, width = 95, obGraphicType = "animated"},
		packScoreX50 = { tId = "SmallObstacle", sId = "smallOb13" , reactionType = "take", reactionMargin = -200, yBaseOffset = 0, width = 95, obGraphicType = "animated"},
		packScoreX100 = { tId = "SmallObstacle", sId = "smallOb14" , reactionType = "take", reactionMargin = -200, yBaseOffset = 0, width = 98, obGraphicType = "animated"},
		packScoreX250 = { tId = "SmallObstacle", sId = "smallOb15" , reactionType = "take", reactionMargin = -200, yBaseOffset = 0, width = 98, obGraphicType = "animated"},
		bigBush = { tId = "BigObstacle", sId = "bigOb1" , reactionType = "jumpOverSlow", reactionMargin = 0, closeUpReactionMargin = 400 ,yBaseOffset = 0, width = 360},
		bigGazer = { tId = "BigObstacle", sId = "bigOb3" , reactionType = "jumpOverSlow", reactionMargin = 0, closeUpReactionMargin = 400 ,yBaseOffset = 0, width = 305},
		bigRiver = { tId = "BigObstacle", sId = "bigOb4" , reactionType = "jumpOverSlow", reactionMargin = 0, closeUpReactionMargin = 400 ,yBaseOffset = 0, width = 785},
		bigBear = { tId = "BigObstacle", sId = "bigOb5" , reactionType = "jumpOverSlow", reactionMargin = 0, closeUpReactionMargin = 600 ,yBaseOffset = 0, width = 270},
		bigRock = { tId = "BigObstacle", sId = "bigOb2" , reactionType = "jumpOverSlow", reactionMargin = 0, closeUpReactionMargin = 600 ,yBaseOffset = 0, width = 374}
	},
  
  numOfObstacles = 5
}

local cfgView = 
{
  -- view configuration
	ViewA =  --iPad
	{
		xScreenWidth = 1152, -- defines the width of the screen
		xScreenHeight = 544, -- defines the height of the screen
		nPixelToMeter = 1 -- converts pixels to meter, this will affect the appearence time of the obstacles, cause they are located at distance in meters and not in pixels
	}
}
-----------------------------------------------------------------------------

--[[
	YYY This is a stub. Should move be part of the triggers file. ObstacleRaceGenerator class
]]--

ObstacleRaceGenerator = classes.class()

-- Static functio to generate Run Data
function ObstacleRaceGenerator.generateRunData()
	local runData = 
	{
    -- This is the data structure of the obstacles and racers' reactions. The obstacles must be sorted according to the meter attribute.
    -- Each object has the following attributes:
    -- obType - The type of the obstacle (big, small etc).
    -- ob - The id of the object as it is written in the mapObType
    -- meter - The distance from the begining of the run at which the obstacle will appear.
    -- lane - The lane it will appear in, 1-4 in the case of 4 lanes.
    -- reaction - A table wich contains an object for each reacting racer. with the status of the raction (pass/fail and the new nrgLevel of the racer)
		arrObData = 
		{
			{obType = "small", ob = "smallBush", meter=957, lane=3 , reaction = {R3 = {status="pass", nrgLevel = 4}}}, 
			{obType = "small", ob = "smallIce", meter=965, lane=1 , reaction = {R1 = {status="fail", nrgLevel = 4}}}, 
			{obType = "small", ob = "smallRock", meter=1262, lane=4 , score = 1, reaction = {R4 = {status="pass", nrgLevel = 4}}},
			{obType = "small", ob = "smallRock", meter=1565, lane=3 , reaction = {R3 = {status="fail", nrgLevel = 3}}},
			{obType = "small", ob = "smallIce", meter=2016, lane=2 , reaction = {R2 = {status="pass", nrgLevel = 4}}},
			{obType = "small", ob = "smallBush", meter=2343, lane=1 , reaction = {R1 = {status="pass", nrgLevel = 4}}},
			{obType = "small", ob = "smallIce", meter=2527, lane=4 , reaction = {R4 = {status="pass", nrgLevel = 4}}},
			{obType = "small", ob = "packScoreX1", meter=2995, lane=1 , score = 1, reaction = {R1 = {status="pass", nrgLevel = 4}}},
			{obType = "small", ob = "smallIce", meter=3487, lane=4 , reaction = {R4 = {status="pass", nrgLevel = 4}}},
			{obType = "big",   ob = "bigRock", meter=4200, lane=1 , score = 19200, multiplier = 5, reaction = {R1 = {status="pass", nrgLevel = 4},
                                                                                                        R2 = {status="pass", nrgLevel = 4},
                                                                                                        R3 = {status="pass", nrgLevel = 4},
                                                                                                        R4 = {status="pass", nrgLevel = 4}}, lastObstacle = false},
			{obType = "small", ob = "packScoreX5", meter=4816, lane=1 , score = 6 , reaction = {R1 = {status="pass", nrgLevel = 4}}}, 
			{obType = "small", ob = "smallRock", meter=5173, lane=4 , reaction = {R4 = {status="pass", nrgLevel = 4}}}, 
			{obType = "small", ob = "smallIce", meter=5214, lane=3 , reaction = {R3 = {status="pass", nrgLevel = 3}}},
			{obType = "small", ob = "smallBush", meter=5444, lane=1 , reaction = {R1 = {status="pass", nrgLevel = 4}}},
			{obType = "small", ob = "smallRock", meter=6274, lane=1 , reaction = {R1 = {status="pass", nrgLevel = 4}}}, 
			{obType = "small", ob = "packScoreX5", meter=6488, lane=3 , score = 11, reaction = {R3 = {status="pass", nrgLevel = 3}}},
			{obType = "small", ob = "smallBush", meter=6590, lane=2 , reaction = {R2 = {status="pass", nrgLevel = 4}}}, 
			{obType = "small", ob = "smallIce", meter=7065, lane=3 , reaction = {R3 = {status="pass", nrgLevel = 3}}},
			{obType = "small", ob = "smallBush", meter=7309, lane=4 , reaction = {R4 = {status="pass", nrgLevel = 4}}}, 
			{obType = "big",   ob = "bigBush", meter=8400, lane=1 , score = 38700, multiplier = 10, reaction = {R1 = {status="pass", nrgLevel = 4},
                                                                                                          R2 = {status="stop", nrgLevel = 4},
                                                                                                          R3 = {status="pass", nrgLevel = 3},
                                                                                                          R4 = {status="pass", nrgLevel = 4}}, lastObstacle = false}, 
			{obType = "small", ob = "packScoreX10", meter=9200, lane=3 , score = 21, reaction = {R3 = {status="pass", nrgLevel = 3}}},
			{obType = "small", ob = "smallBush", meter=9361, lane=4 , reaction = {R4 = {status="pass", nrgLevel = 4}}}, 
			{obType = "small", ob = "smallRock", meter=9922, lane=3 , reaction = {R3 = {status="pass", nrgLevel = 3}}}, 
			{obType = "small", ob = "smallRock", meter=9926, lane=1 , reaction = {R1 = {status="pass", nrgLevel = 4}}}, 
			{obType = "small", ob = "smallRock", meter=10804, lane=4 , reaction = {R4 = {status="pass", nrgLevel = 4}}}, 
			{obType = "small", ob = "packScoreX25", meter=11131, lane=3 , score = 46, reaction = {R3 = {status="pass", nrgLevel = 3}}},  
			{obType = "small", ob = "smallBush", meter=11620, lane=4 , reaction = {R4 = {status="pass", nrgLevel = 4}}}, 
			{obType = "small", ob = "smallBush", meter=12056, lane=3 , reaction = {R3 = {status="pass", nrgLevel = 3}}},
			{obType = "big",   ob = "bigGazer", meter=12500, lane=1 , score = 53700, multiplier = 15, reaction = {R1 = {status="pass", nrgLevel = 4},
                                                                                                           R3 = {status="fail", nrgLevel = 4},
                                                                                                           R4 = {status="pass", nrgLevel = 4}}}, 
			{obType = "small", ob = "packScoreX50", meter=13284, lane=3 , score = 96 , reaction = {R3 = {status="pass", nrgLevel = 3}}},
			{obType = "small", ob = "smallRock", meter=13448, lane=4 , reaction = {R4 = {status="pass", nrgLevel = 4}}},
			{obType = "small", ob = "smallIce", meter=13677, lane=1 , reaction = {R1 = {status="pass", nrgLevel = 4}}}, 
			{obType = "small", ob = "smallRock", meter=14224, lane=1 , reaction = {R1 = {status="pass", nrgLevel = 4}}}, 
			{obType = "small", ob = "smallIce", meter=14761, lane=3 , reaction = {R3 = {status="fail", nrgLevel = 2}}}, 
			{obType = "small", ob = "smallRock", meter=14868, lane=1 , reaction = {R1 = {status="pass", nrgLevel = 4}}},
			{obType = "small", ob = "packScoreX100", meter=15319, lane=4 , score = 196 , reaction = {R4 = {status="pass", nrgLevel = 4}}}, 
			{obType = "small", ob = "smallBush", meter=15751, lane=1 , reaction = {R1 = {status="pass", nrgLevel = 4}}}, 
			{obType = "small", ob = "smallBush", meter=16252, lane=3 , reaction = {R3 = {status="pass", nrgLevel = 2}}},
			{obType = "big",   ob = "bigRiver", meter=16800, lane=1 , score = 68700, multiplier = 20, reaction = {R1 = {status="stop", nrgLevel = 4},
                                                                                                           R3 = {status="stop", nrgLevel = 4},
                                                                                                           R4 = {status="pass", nrgLevel = 4}}},
			{obType = "small", ob = "smallBush", meter=17200, lane=4 , reaction = {R4 = {status="fail", nrgLevel = 3}}},
			{obType = "small", ob = "smallIce", meter=18500, lane=4 , reaction = {R4 = {status="pass", nrgLevel = 4}}},
			{obType = "small", ob = "smallIce", meter=19350, lane=4 , reaction = {R4 = {status="pass", nrgLevel = 4}}},
			{obType = "big",   ob = "bigBear", meter=20000, lane=1 , score = 75000, multiplier = 100, reaction = {R4 = {status="pass", nrgLevel = 4}, lastObstacle = true}}
		},
    groupMultiplier = 20,
    maxGroupMultiplier = 12,
    lastObstacleMultiplier = 500,
    racerMultipliers = {R1 = 15, R2 = 5, R3 = 15, R4 = 500}
	}
	
	return runData	
end

----------------------------------------------------------------------------------------------------

--[[
	ObstacleRace class
--]]
ObstacleRace = classes.class()

----------------------------------------------------------------------------------------------------

function ObstacleRace:playObstacleRaceSound(eventParams)
  self:playSound(eventParams.musicId)
end

function ObstacleRace:playBigObFailedSound(eventParams)
  if (self.bigOb ~= nil) then
    self:playSound(self.bigOb.ob.."Fail")
  end
end

function ObstacleRace:playSound(musicId)
  -- Todo, what happens if a user leaves the slot?
  if self.initParams.slotOpen and self.raceScene ~= nil then
    --print("playing sound "..musicId)
    self.raceScene:playSound(musicId)
  end
end

function ObstacleRace:playBGMusic(musicId)
  -- Todo, what happens if a user leaves the slot?
  if self.initParams.slotOpen and self.raceScene ~= nil then
    --print("playing bgMusic "..musicId)
    self.raceScene:playBGMusic(musicId, true)
  end
end

function ObstacleRace:setSlotOpen(isOpen)
  self.initParams.slotOpen = isOpen
  if isOpen then
    self:playBGMusic("bgMusic")
  end
end

function ObstacleRace:init(initParamsTable)
  _obstacleRace = self
  --require('mobdebug').on()
	self.initParams = initParamsTable
	self.view = cfgView.ViewA -- YYY this should be taken from init param
	
	-- init math random  seed
	math.randomseed(os.time())
	
  Events.listenTo("showOpeningScene", self, self.showOpeningScene, cfgObstacleRace.listenerId)
  Events.listenTo("playObstacleRaceSound", self, self.playObstacleRaceSound, cfgObstacleRace.listenerId)
  Events.listenTo("playBigObFailedSound", self, self.playBigObFailedSound, cfgObstacleRace.listenerId)
  
	self.bCloseUpMode = false -- initializing the closeUpMode to false.
	self.bUpdateCloseUpMode = false -- initializing the updateCloseUpMode to false.
  self.bRacerLeavesScene = false -- indicating if we are in the middle of the racerLeavesScene phase (where the single racer reaches the end)
	self.xDistance = 0.0 -- distance covered from the beginning of the run 
	self.showedBigObCallout = false -- indicating if we are showing the racerDown callout, don't exit the closeup mode, until the callout finishes
  
  -- Set a boolean for the update function, so that we won't update the internal object in case we haven't started yet
	self.raceStarted = false
  self.racerLeftScene = false
  self.prevScore = 0
  self.yourScore = 1
  self.packScoreEnt = nil
  self.yourRacerScoreEnt = nil
	self.arrRacers = {}
  
   -- Keep the runData
	self.runData = initParamsTable.raceData or ObstacleRaceGenerator.generateRunData()

  -- This is for the running on windows, if the chosenRacerId is null, it means that we need to set it manualy
  if (initParamsTable.chosenRacerId ~= nil) then
    self.myRacerId = "R"..initParamsTable.chosenRacerId
  else
    self.myRacerId = "R4"
    self.initParams.slotOpen = true
  end
  
  -- If no racer selected the myRacerId is R0
  --print("myRacerId is "..self.myRacerId)
  --print("had maxGroupMultiplier of "..self.runData.maxGroupMultiplier)
  --print("had groupMultiplier of "..self.runData.groupMultiplier)
  
  -- This prints the racers multipliers
  --[[
  for racer, mult in pairs(self.runData.racerMultipliers) do
    print(racer, mult)
  end
  --]]
  
  -- This prints the data of the race flow
  --[[
  for ob = 1, #self.runData.arrObData do
    for key,value in pairs(self.runData.arrObData[ob]) do
      print(key, tostring(value))
      if (key == "reaction") then
        for key2,value2 in pairs(value) do
          print(key2, tostring(value2))
          for key3,value3 in pairs(value2) do
            print(key3, tostring(value3))
          end
        end
      end
    end
  end
  
  --]]
  self:createRaceScene()
end

function ObstacleRace:createRaceScene()
  --require('mobdebug').on()
  -- Create the race scene and save the scene name, so we can get it later with the GameScene.getSceneById
  self.sceneName = "bonusRaceScene"
  self.raceScene = GameScene.createFromFile(self.initParams.sceneName, self.initParams.sceneBaseFolder, false, true, self.sceneName) -- creating the main scene
  if (self.raceScene == nil) then
    -- For some reason the fla changed name to moonRunAll instead of MoonRun as it was supposed to be (the same as in the m_componentsMap of CAnimatedLayersGamesManager)
    print("trying moonRunAll.scene")
    self.raceScene = GameScene.createFromFile("moonRunAll.scene", self.initParams.sceneBaseFolder, false, true, self.sceneName) -- creating the main scene
  end
  
  Events.dispatch("raceSceneCreated", {sceneId = self.sceneName})
end

  -- create the opening scene and play it
function ObstacleRace:showOpeningScene()
  local openingEnt = self.raceScene:createEntity("OpeningSceneTemplate", 0, "openingEnt")
  print("showOpeningScene openingEnt "..tostring(openingEnt))
  if (openingEnt ~= nil) then
    -- play intro sound
    self:playSound("introMusic")
    openingEnt:addStateEndEventListener(self, self.onOpeningSceneComplete)
    --Timer.createTimer(3, 1, self, self.onOpeningSceneComplete)
  else
    --print("starting race from showOpeningScene")
    self:startRace()
  end
end

-- This function will be called when the opening scene is complete
function ObstacleRace:onOpeningSceneComplete()
  print("onOpeningSceneComplete")
  -- For some reason this function was called twice, maybe different entities in the opening scene sent the event?
  if (self.raceStarted == false) then
    --print("onOpeningSceneComplete self.raceStartrd "..tostring(self.raceStarted))
    self:startRace()
  end
end

-- This function will be called when the opening scene is complete
function ObstacleRace:startRace()
  print("startRace")
	self:initRaceScene() -- creating the main scene
	self:initRacers(self.raceScene) -- creating the racers
  
  -- We listen to the animatedObstacleReacted event to handle stuff when the racer reacted with an animated obstacle (like showing the pack score animation)
	Events.listenTo("animatedObstacleReacted", self, self.onAnimatedObstacleReacted, cfgObstacleRace.listenerId)
  
  -- We listen to the removeAnimatedObstacle event to remove animated obstacles when their animation is complete,
  -- because we do not remove them like other obstacles when they go out of the screen (we stop updating them after the reaction with the racer)
	Events.listenTo("removeAnimatedObstacle", self, self.removeAnimatedObstacle, cfgObstacleRace.listenerId)
  
	self.obsMgr = ObstacleManager.new(self.runData.arrObData, self.raceScene, self.view) -- initializing the obstacle manager
  self.raceStarted = true
  
  -- play intro sound
  self:playBGMusic("bgMusic")
end

-- This function is called when an animated obstacle has reacted with a racer (we played it's animation)
function ObstacleRace:onAnimatedObstacleReacted(eventParams)
  -- right now the only animated obstacles is the packScore obstacles, so we should set the packScore state with the required state
  if (string.match(eventParams.obName, "packScoreX")) then
    if (self.packScoreEnt ~= nil) then
      self:playSound("packScoreOb")
      -- The packScoreEnt has states with the same name as the obName packScoreX1..packScoreX100
      self.packScoreEnt:setState(eventParams.obName)
      
      local score = "X"..tostring(tonumber(eventParams.score) / 10)
      
      -- We keep a reference to the currentPackScore, when the animation completes and we move back to the idle state we can set the packScore text item
      self.currentPackScore = score
      
      -- updating the packScore textItem
      local packScoreText = self.packScoreEnt:get("packScore")
      print("onAnimatedObstacleReacted score: "..tostring(score))
      if (packScoreText ~= nil) then
        packScoreText:setStringWithParams(score, true)
      end
      
      -- updating the packScoreGlow textItem
      local packScoreGlowText = self.packScoreEnt:get("packScoreGlow")
      if (packScoreGlowText ~= nil) then
        packScoreGlowText:setStringWithParams(score, true, -2)
      end
    end
  end
end

-- This function is called when an animated obstacle's animation is completed, and we should remove it from the obstacles array
function ObstacleRace:removeAnimatedObstacle(eventParams)
  self.obsMgr:removeObById(eventParams.obId)
end

-- This function is called when the packScore animation completes, we should set it's state back to idle and set the packScore text item to show the correct number
function ObstacleRace:onPackScoreAnimComplete(eventParams)
  -- Update the packScore text entity only if it is after the animated state
  if (self.packScoreEnt ~= nil and self.packScoreEnt:getState() ~= "idle") then
    self.packScoreEnt:setState("idle")
    
    -- updating the packScore textItem
    local packScoreText = self.packScoreEnt:get("packScore")
    if (packScoreText ~= nil) then
      print("onPackScoreAnimComplete currentPackScore: "..self.currentPackScore)
      packScoreText:setStringWithParams(self.currentPackScore, true)
    end
  end
end

function ObstacleRace:initRaceScene()
  -- Don't show the pack score and your score if the user is not on the machine
  if (self.initParams.slotOpen) then
  -- Init the packScore entity, set it's position and reset the text value.
    self.packScoreEnt = self.raceScene:createEntity("PackScoreTemplate", cfgObstacleRace.layers.packScoreLayer, "packScore") -- creating the packScore entity
    if (self.packScoreEnt ~= nil) then
      self.packScoreEnt:setState("idle")
      self.packScoreEnt:addStateEndEventListener(self, self.onPackScoreAnimComplete)
      local packScoreText = self.packScoreEnt:get("packScore")
      if (packScoreText ~= nil) then
        packScoreText:useXPrefix()
        packScoreText:setNumberWithParams(0, true)
      end
    end
    
    -- Creating the yourRacerScore entity
    self.yourRacerScoreEnt = self.raceScene:createEntity("YourRacerScoreTemplate", cfgObstacleRace.layers.packScoreLayer, "yourRacerScore")
  end
  
  -- Set the yourScoreEnt to idle state
  self:updateYourScore("idle")
  
  -- keep a reference for the sky to change the yOffset according to the mode
  self.entSky = self.raceScene:createEntity("SkyTemplate", cfgObstacleRace.layers.paralexLayer, "sky")
	self.entParalex = self.raceScene:createEntity("ParalexTemplate", cfgObstacleRace.layers.paralexLayer, "paralex") -- creating the paralex entity
  
  local openingEnt = self.raceScene:get("openingEnt")
  if (openingEnt ~= nil) then
    openingEnt:removeStateEndEventListener()
  end
  
  self.raceScene:removeEntity("openingEnt")
  
  -- setting the paralex state to the initial state
	self.currParalexState = cfgObstacleRace.paralexStates.start
	self.entParalex:setState(self.currParalexState)
  
  self:showCallout("initCallout", {}, self.runData.lastObstacleMultiplier)
end

-- This function updates the yourScore template to the required state and score
-- The template has 3 states: idle, update and outOfRace
function ObstacleRace:updateYourScore(state)
  -- Don't update the yourScore if the racer is out of the race
  if (self.yourRacerScoreEnt ~= nil and self.yourRacerScoreEnt:getState() ~= "outOfRace") then
    self.yourRacerScoreEnt:setState(state)
    -- Setting the racersEnt to the required racer
    local racersEnt = self.yourRacerScoreEnt:get("racersEnt")
    if (racersEnt ~= nil) then
      racersEnt:setState("racer"..self.myRacerId)
    end
    
    -- Don't update the score if no racer selected
    if (self.myRacerId ~= "R0") then
      -- Setting the yourScore text to the self.yourScore value
      local yourScoreText = self.yourRacerScoreEnt:get("yourScore")
      local yourScore = tonumber(self.yourScore)
      local prevScore = tonumber(self.prevScore)
      print("updateYourScore yourScore: "..tostring(yourScore)..", prevScore: "..tostring(prevScore))
      if (yourScoreText ~= nil) then
        yourScoreText:useXPrefix()
        -- If the value we want to update is 0, or the state is "outOfRace" we set the number without a tween
        if (self.yourScore == 0 or state == "outOfRace") then
          yourScoreText:setNumberWithParams(yourScore, true)
        else
          -- Setting the number to the previous score, so that the tween will start from that value and not from 0
          yourScoreText:setNumberWithParams(prevScore, true)
          yourScoreText:setNumberWithTween(yourScore, 0.5)
        end
      end
      
      -- Setting the yourScoreGlow text to the self.yourScore value
      local yourScoreTextGlow = self.yourRacerScoreEnt:get("yourScoreGlow")
      if (yourScoreTextGlow ~= nil) then
        yourScoreTextGlow:useXPrefix()
        if (self.yourScore == 0 or state == "outOfRace") then
          yourScoreTextGlow:setNumberWithParams(yourScore, true, -3)
        else
          yourScoreTextGlow:setNumberWithParams(prevScore, true, -3)
          yourScoreTextGlow:setNumberWithTween(yourScore, 0.5)
        end
      end
      
      -- Setting the flyingMult text to the self.yourScore value
      local flyingMultText = self.yourRacerScoreEnt:get("flyingMult")
      if (flyingMultText ~= nil) then
        flyingMultText:useXPrefix()
        flyingMultText:setNumberWithParams(yourScore, true)
      end
    end
  end
end

-- Show a callout based on the calloutState and the stoppersIdArr (in case the state is racerDown1 or racerDown2)
function ObstacleRace:showCallout(calloutState, stoppersIdArr, multiplier)
  -- create a callout entity and set the required state
  local calloutEnt = self.raceScene:createEntity("Callouts", cfgObstacleRace.layers.calloutsLayer, "calloutEnt")
  if (calloutEnt ~= nil) then
    calloutEnt:setState(calloutState)
    
    print("showCallout, calloutState: "..tostring(calloutState))
    
    -- If it's a racer down state, we need to create the racerText entities dynamically based on the racers that failed to pass the obstacle
    if (calloutState == "racerDown1" or calloutState == "racerDown2" or  calloutState == "endScene") then
      -- In the racerDown1 state we have only 1 racer, so the marker is named "racerMarker"
      local markerId = "racerMarker"
      -- In the racerDown2 state we have at least 2 racers, so the markers are named "racerMarker2" and "racerMarker3" depends on the number of failed racers
      if (calloutState == "racerDown2") then
        markerId = "racerMarker"..(#stoppersIdArr)
      end
      
      local racerMarker = calloutEnt:get(markerId)
      if (racerMarker ~= nil) then
        local racerTextPosition = racerMarker:position()
        local racerTextScale = racerMarker:scale()
        
        -- Create a RacerText entities, position them and add them to the calloutEnt
        for iter = 1, #stoppersIdArr do
          -- The RacerText templates are called "RacerTextR1" to "RacerTextR4" so we concatinate the racerId to create the entity
          local racerId = stoppersIdArr[iter]
          local racerTextEnt = self.raceScene:createEntity(("RacerText"..racerId), cfgObstacleRace.layers.paralexLayer, ("racerTextEnt"..racerId))
          
          -- position and scale the entity based on the marker's properties
          racerTextEnt:position(racerTextPosition.x, racerTextPosition.y)
          racerTextEnt:scale(racerTextScale.w, racerTextScale.h)
          
          calloutEnt:addChild(racerTextEnt)
          -- If we have more than 1 failed racer and it's not the last iteration we should add an "&" entity
          if (calloutState == "racerDown2" and iter ~= (#stoppersIdArr)) then
            local andTextEnt = self.raceScene:createEntity("AndText", cfgObstacleRace.layers.paralexLayer, ("andTextEnt"..iter))
            calloutEnt:addChild(andTextEnt)
            -- The position of the & (since all the templates are centered) is the racerText entity's position plus half it's width and the & entity's half width
            andTextEnt:position(racerTextEnt:x() + (racerTextEnt:width() + andTextEnt:width()) / 2, racerTextEnt:y())
            -- We set the next marker position for the next racerText entity, based on the &'s position, width and racerText entity's width
            racerTextPosition.x  = andTextEnt:x() + (racerTextEnt:width() + andTextEnt:width()) / 2
            racerTextPosition.y = andTextEnt:y()
          end
        end
      end
      --print("after setting the racers")
    end
    
    -- If we have a multiplier in the calloutState, set it's value
    if (calloutState == "newPart" or calloutState == "endScene" or calloutState == "initCallout") then
      local textEnt = calloutEnt:get(calloutState.."Mult")
      if (textEnt ~= nil) then
        textEnt:setStringWithParams("X"..tostring(multiplier), true, -7)
      end
      
      -- For new part we should show the yourScore animation, so show it after a timer of 1.5 seconds
      if ((calloutState == "newPart" or calloutState == "endScene") and self.myRacerId ~= "R0") then
        -- If this is the "endScene" callout, we will set the yourScore to the multiplier
        if (calloutState == "endScene") then
          self.yourScore = multiplier
        end
        Timer.createTimer(1.5, 1, self, self.showYourScoreCallout)
      end
    end
    
    -- Fade in the callout
    calloutEnt:position(self.view.xScreenWidth / 2, self.view.xScreenHeight / 2)
    calloutEnt:alpha(0)
    
    --print("fading in the calloutEnt state: "..calloutState)
    Tweener.addTween(Tweener.alphaTween(calloutEnt, 2, 0, 1, "QuadEaseOut", self, onExternalFadeInEnded))
    
    -- This is how it should have been done, using the chained tween, but it didn't work...
    --[[
    Tweener.addTween(Tweener.chainedTween(Tweener.alphaTween(calloutEnt, 2, 0, 1, "QuadEaseIn", self, nil),
                                          Tweener.alphaTween(calloutEnt, 1, 0, 0, "QuadEaseOut", self, nil), self, self.onCalloutFadeOutEnded))
    --]]
  else
    self:onCalloutFadeOutEnded()
  end
end

-- Showing the yourScore in update state after the "newPart" or "endScene" callout
function ObstacleRace:showYourScoreCallout()
  self:playSound("yourScoreUpdate")
  self:updateYourScore("update")
end

-- we set this extenal function because of some weird runtime error on the callback to the actual ObstacleRace:onCalloutFadeInEnded()
function onExternalFadeInEnded()
  print("this is the external fade in function")
  _obstacleRace:onCalloutFadeInEnded()
end

-- When the fade in of the callout is finished, start fading out
function ObstacleRace:onCalloutFadeInEnded()
  print("onCalloutFadeInEnded")
  -- Fade out the callout
  local raceScene = GameScene.getSceneById(self.sceneName)
  local fadedCallout = false
  if (raceScene ~= nil) then
    local calloutEnt = raceScene:get("calloutEnt")
    if (calloutEnt ~= nil) then
      fadedCallout = true
      Tweener.addTween(Tweener.alphaTween(calloutEnt, 1, 0, 0, "QuadEaseIn", nil, onExternalFadeOutEnded))
    end
  end
  
  if (fadedCallout == false) then 
    self:onCalloutFadeOutEnded()
  end
end

-- we set this extenal function because of some weird runtime error on the callback to the actual ObstacleRace:onCalloutFadeOutEnded()
function onExternalFadeOutEnded()
  print("this is the external fade out function")
  _obstacleRace:onCalloutFadeOutEnded()
end

-- When the callout has faded out we remove it
function ObstacleRace:onCalloutFadeOutEnded()
  print("onCalloutFadeOutEnded")
  local raceScene = GameScene.getSceneById(self.sceneName)
  if (raceScene ~= nil) then
    -- remove the callout entity
    raceScene:removeEntity("calloutEnt")
  end
  
  -- If this was a racerDown callout, exit the close up mode.
  if (self.showedBigObCallout) then
    self.showedBigObCallout = false
    self:exitCloseUp()
  end
end

function ObstacleRace:initRacers(raceScene)
	-- creating all the racers with their config data
	for iRacer = 1, cfgRacers.nRacersCount do
		self.arrRacers[iRacer] = Racer.new(cfgRacers.arrRacerData[iRacer], raceScene)		
	end
end

-- This is the dynamic function called from the BonusRace.lua code
function ObstacleRace:update(elapsedTime)
  --require('mobdebug').on()
  if (self.raceStarted) then
    self:innerUpdate(elapsedTime) -- calling the instance method of update
  end
end

-- This is the inner update function 
function ObstacleRace:innerUpdate(elapsedTime)
  local nDistanceDelta = elapsedTime * cfgRacers.xRunningSpeed -- The distance that we moved since the last update
  -- If we are in close up mode, call the innerUpdateCloseUp function
	if (self.bCloseUpMode == true) then
    return self:innerUpdateCloseUp(nDistanceDelta)
  elseif (self.bRacerLeavesScene == true) then
    return self:innerUpdateRacerLeavesScene(nDistanceDelta)
  end
  
  -- update the distance that we have covered since the begining of the game
	self.xDistance = self.xDistance +  nDistanceDelta
  
	-- check if we need to handle any big obstacle
	local bigOb = self.obsMgr:checkForNewBigOb()
	if (bigOb ~= nil) then
    -- handle the big obstacle, if it was handled it means that we moved to the close up mode
    self:handleBigOb(self.xDistance, bigOb)
    -- check if we just entered close up mode
    if (self.bCloseUpMode == true) then 
      return
    end
  end
  
  local nNumOfRacers = #self.arrRacers
  if (nNumOfRacers > 0) then
    self.obsMgr:update(self.xDistance)
    
    -- Go over the remaining racers, update and check for obstacles
    for iRacer = 1, nNumOfRacers do
      local racer = self.arrRacers[iRacer]
      if (racer ~= nil) then
        racer:update() -- update the racer
        -- check if a new obstacle stands in the racer's lane
        local ob = self.obsMgr:checkForNewObs(racer.lane, racer.lastEncounteredObId)
        if (ob ~= nil) then	
          racer:handleSmallOb(self.xDistance, ob) -- let the racer handle the obstacle
        end
      end
    end
  end
end

-- This is the inner update function for the close up mode
function  ObstacleRace:innerUpdateCloseUp(nDistanceDelta)
  -- If we haven't showed the bigObCallout, it means that we still need to update, other wise, we wait for the callout to finish.
  -- And if the bUpdateCloseUpMode is set to false, it means that the paralexTransition is still playing (we play an animation before updating the closeup mode)
  if (self.showedBigObCallout == false and self.bUpdateCloseUpMode == true) then
    local nNumOfRacers = #self.arrRacers
    local bAllHandled = true
    -- calculate the number of stoppers and keep their ids, in order to show the racerDown callout
    local numOfStoppers = 0
    local stoppersIdArr = {}
    for iRacer = 1, nNumOfRacers do
      local racer = self.arrRacers[iRacer]
      racer:updateCloseUp(nDistanceDelta, self.bigOb)
      -- For a racer that finished his closeUp mode animation the lastHandledObId will be equal to the bigOb.id, so if he hasn't finished, set the bAllHandled to false
      if (racer.lastHandledObId ~= self.bigOb.id) then
        bAllHandled = false
      else
        -- This racer is handled, if it's state is not "stop", let's hide it (put it out of the screen, we might use set visible instead)
        if (racer.runState ~= "stop") then
          racer.ent:x((-racer.width - 50))
        else
          -- increment the number of stoppers, and add the racer's id to the arr. This data will be used in the showCallout function
          numOfStoppers = numOfStoppers + 1
          stoppersIdArr[#stoppersIdArr + 1] = racer.id
          if (racer.id == self.myRacerId) then
            self:updateYourScore("outOfRace")
            self.myRacerStopped = true
          end
        end
      end
    end
    
    -- If all racers were handled we can exit the close up mode
    if (bAllHandled) then
      -- If all the racers have passed use this state
      local calloutState = "allPassed"
      -- If there were any stoppers, we need to show the callout, other wise exit the closeUp mode
      if (numOfStoppers > 0) then
        -- For 1 racer, use the racerDown1 state for more than that use racerDown2
        calloutState = "racerDown1"
        if (numOfStoppers > 1) then
          calloutState = "racerDown2"
        end
        
        self:playSound("racerDown")
      else
        self:playSound("allPassed")
      end
      
      -- Don't show the allPassed callout for the last obstacle
      if (self.bigOb.lastObstacle == true and calloutState == "allPassed") then
        self:exitCloseUp()
      else
        -- Set this bool to true, so we won't enter this function again, until the callout has finished displaying, it will then exit the closeUp mode
        self.showedBigObCallout = true
        self:showCallout(calloutState, stoppersIdArr)
      end
    end
  end
end

-- This is the inner update function for the racer leaves scene mode
function  ObstacleRace:innerUpdateRacerLeavesScene(nDistanceDelta)
  -- keep updating until the racerLeftScene
  if (self.racerLeftScene == false) then
    -- There is only 1 racer left, so take the first item from the array
    local racer = self.arrRacers[1]
    local xPos = racer.ent:x() + cfgRacers.speedOffScene
    racer.ent:x(xPos)
    if (xPos > self.view.xScreenWidth) then
      self:showEndingScene()
    end
  end
end

-- Show the ending scene
function ObstacleRace:showEndingScene()
  print("showEndingScene")
  self.racerLeftScene = true
  local endScene = self.raceScene:createEntity("EndingSceneTemplate", cfgObstacleRace.layers.paralexLayer, "endScene") -- creating the endScene entity
  if (endScene ~= nil) then
    self.raceScene:removeEntity("sky")
    self.raceScene:removeEntity("paralex")
    
    local endSceneRacer = endScene:get("endingSceneRacer")
    -- Only one racer reaches this scene. we use his id to set the right state and callout
    local lastRacerId = self.arrRacers[1].id
    endSceneRacer:setState("racer"..lastRacerId)
    --self:showCallout("endScene", {lastRacerId}, self.runData.lastObstacleMultiplier)
    endSceneRacer:addStateEndEventListener(self, self.showScoreDialog)
    Events.listenTo("playEndSceneSound", self, self.playEndSceneSound, cfgObstacleRace.listenerId)
  else
    self:showScoreDialog()
  end
end

-- play the end scene sounds
function ObstacleRace:playEndSceneSound()
  self:playSound("racerEndSceneSound")
end

-- Show the mergeScore dialogs
function ObstacleRace:showScoreDialog()
  print("showScoreDialog")
  self.raceScene:removeEntity("yourRacerScore")
  
  local endingSceneRacer = self.raceScene:get("endingSceneRacer")
  if (endingSceneRacer ~= nil) then
    --print("removed state end event listener for endingSceneRacer")
    endingSceneRacer:removeStateEndEventListener()
  end
  
  local packScoreEnt = self.raceScene:get("packScore")
  if (packScoreEnt ~= nil) then
    --print("removed state end event listener for packScoreEnt")
    packScoreEnt:removeStateEndEventListener()
  end
  self.raceScene:removeEntity("packScore")
  
  local shouldShowSummary = true
  -- Don't show the scoreMerge entity if no racer was selected or the user is not on the machine
  if (self.initParams.slotOpen and self.myRacerId ~= "R0") then
    local scoreMergeEnt = self.raceScene:createEntity("ScoreMerge", cfgObstacleRace.layers.paralexLayer, "scoreMergeEnt") -- creating the racersScore entity
    -- If could not create the entity we will show the summary screen
    if (scoreMergeEnt ~= nil) then
      local racersEnt = scoreMergeEnt:get("racersEnt")
      -- Set the racersEnt to show my selection
      if (racersEnt ~= nil) then
        racersEnt:setState("racer"..self.myRacerId)
      end
      
      self:playSound("mergeScore")
      
      -- Setting the your score text
      local yourScore = tonumber(self.runData.racerMultipliers[self.myRacerId])
      local groupMultiplier = tonumber(self.runData.groupMultiplier)
      --print("showScoreDialog yourScore: "..tostring(yourScore)..", groupMultiplier: "..tostring(groupMultiplier))
      
      Analytics.reportAnalytics(BI_FEATURE, BI_CONTEXT_SUMMARY, "showGroupSummary", {xp=Analytics.getXP(), balance=Analytics.getBalance(), casinoLevel=Analytics.getCasinoLevel(), 
                                                                                     gameBrand=self.initParams.gameUIName, raceRoundId=self.initParams.roundId, 
                                                                                     racerId=self.initParams.chosenRacerId, bonusCredits=self.initParams.bonusCredits, 
                                                                                     groupMultiplier=groupMultiplier, racerMultiplier=yourScore})
      
      local yourScoreTxt = scoreMergeEnt:get("yourScore")
      if (yourScoreTxt ~= nil) then
        yourScoreTxt:useXPrefix()
        yourScoreTxt:setNumberWithParams(yourScore)
      end
      
      local yourScoreTxtGlow = scoreMergeEnt:get("yourScoreGlow")
      if (yourScoreTxtGlow ~= nil) then
        yourScoreTxtGlow:useXPrefix()
        yourScoreTxtGlow:setNumberWithParams(yourScore, true, -4)
      end
      
      local packScoreTxt = scoreMergeEnt:get("packScore")
      if (packScoreTxt ~= nil) then
        packScoreTxt:useXPrefix()
        packScoreTxt:setNumberWithParams(groupMultiplier)
      end
      
      local packScoreTxtGlow = scoreMergeEnt:get("packScoreGlow")
      if (packScoreTxtGlow ~= nil) then
        packScoreTxtGlow:useXPrefix()
        packScoreTxtGlow:setNumberWithParams(groupMultiplier)
      end
      
      -- This is the event listener to when the scores are merged and we need to show the combined multiplier
      Events.listenTo("showMergedScore", self, self.onShowMergedScore, cfgObstacleRace.listenerId)
      
      -- When the animation ends, show the summary screen
      scoreMergeEnt:addStateEndEventListener(self, self.showSummaryScreen)
      shouldShowSummary = false
    end
  end
  if (shouldShowSummary) then
    self:showSummaryScreen()
  end
  
end

-- Set the combined score on the mergeScore entity
function ObstacleRace:onShowMergedScore()
  local scoreMergeEnt = self.raceScene:get("scoreMergeEnt")
  if (scoreMergeEnt ~= nil) then
    local mergedScore = tonumber(self.runData.racerMultipliers[self.myRacerId] + self.runData.groupMultiplier)
    --print("onShowMergedScore mergedScore: "..tostring(mergedScore))
    
    local mergedScoreTxt = scoreMergeEnt:get("yourScore")
    if (mergedScoreTxt ~= nil) then
      mergedScoreTxt:useXPrefix()
      mergedScoreTxt:setNumberWithParams(mergedScore)
    end
    local mergedScoreTxtGlow = scoreMergeEnt:get("yourScoreGlow")
    if (mergedScoreTxtGlow ~= nil) then
      mergedScoreTxtGlow:useXPrefix()
      mergedScoreTxtGlow:setNumberWithParams(mergedScore, true, -4)
    end
  end
end

-- Showing the summary screen, it has two states: hasWinner and noWinner, we set it based on the endScene (if we showed it or not)
function ObstacleRace:showSummaryScreen()
  local raceScene = GameScene.getSceneById(self.sceneName)
  if (raceScene ~= nil) then
    -- Set the state based on the endScene
    local endScene = raceScene:get("endScene")
    local state = "noWinner"
    if (endScene ~= nil) then
      state = "hasWinner"
    end
    
    local scoreMergeEnt = self.raceScene:get("scoreMergeEnt")
    if (scoreMergeEnt ~= nil) then
      --print("removed state end event listener for scoreMergeEnt")
      scoreMergeEnt:removeStateEndEventListener()
    end
    
    raceScene:removeEntity("endScene")
    raceScene:removeEntity("scoreMergeEnt")
    
    local summaryScreen = raceScene:createEntity("SummaryScreenTemplate", cfgObstacleRace.layers.paralexLayer, "summaryScreen") -- creating the summaryScreen entity
    if (summaryScreen ~= nil) then
      summaryScreen:setState(state)
      
      local count = 1
      -- Go over all the racers and set the state and multiplier on the relevant entity
      -- We use pair by values, to sort the table of racers by their multipliers. where the first item has the largest multiplier
      for racer, mult in self:pairByValues(self.runData.racerMultipliers, function(t,a,b) return t[b] < t[a] end) do
        mult = tonumber(mult + self.runData.groupMultiplier)
        --print("showSummaryScreen: ", tostring(racer), tostring(mult))
        
        -- we have racerR1 to racerR4 entities, so we set the relevant states based on the sorted table
        local curRacerEnt = summaryScreen:get("racerR"..count)
        count = count + 1
        if (curRacerEnt ~= nil) then
          -- Set the state of the racersEnt to display the required racer
          -- The states are racerR1 to racerR4
          local racersEnt = curRacerEnt:get("racersEnt")
          if (racersEnt ~= nil) then
            racersEnt:setState("racer"..racer)
          end
          -- Set the multiplier
          local racerMultiplier = curRacerEnt:get("racerMultiplier")
          if (racerMultiplier ~= nil) then
            racerMultiplier:useXPrefix()
            racerMultiplier:setNumberWithParams(mult, true)
          end
        end
      end
    end
  end
  
  Timer.createTimer(5, 1, self, self.dispatchShowPersonalSummaryScreen)
end

-- This tells the bonus race that the race is over and we can show the personal summary screen.
function ObstacleRace:dispatchShowPersonalSummaryScreen()
  Events.dispatch("showPersonalSummaryScreen")
end

function ObstacleRace:handleBigOb(xDistance, ob)
	xObScreenPos = ob.xPos - xDistance -- This is the position of the obstacle on the screen (in pixels from the left)
	xCloseupReactionMargin = cfgObs.mapObType[ob.ob].closeUpReactionMargin -- This is the property at which we should handle the obstacle, from the obstacle data
  
	-- Check if should enter the close up mode (if the position is smaller than the xCloseupReactionMargin)
	if (xObScreenPos < xCloseupReactionMargin) then
		self:enterCloseUp(ob)
	end
end

function ObstacleRace:enterCloseUp(ob)
  print("enterCloseUp")
  -- Set the close up  mode to true, and keep a reference of the big obstacle
  self.bCloseUpMode = true
  -- Set the bUpdateCloseUpMode to false, so we won't update in closeup mode until the paralexTransition completes
  self.bUpdateCloseUpMode = false
  self.bigOb = ob
  
  -- Remove all obstacles, cause we don't need them in close up mode
  self.obsMgr:removeAll()
  --print("next big ob is "..ob.ob)
  
  -- creating the paralexTransition entity
  local raceScene = GameScene.getSceneById(self.sceneName)
  if (raceScene ~= nil) then
    local paralexTransition = raceScene:createEntity("ParalexTransition", cfgObstacleRace.layers.paralexTransitionLayer, "paralexTransition")
    if (paralexTransition ~= nil) then
      -- Listen to the stateEndEvent to prepare and start updating the closeUp mode
      paralexTransition:addStateEndEventListener(self, self.afterParalexTransition)
    else
      self:afterParalexTransition()
    end
  end
end

-- This function prepares the scene to the closeUp mode, it sets the paralex state, prepares the racers and sets the bUpdateCloseUpMode to true
function ObstacleRace:afterParalexTransition(eventParams)
  --print("afterParalexTransition")
  local raceScene = GameScene.getSceneById(self.sceneName)
  if (raceScene ~= nil) then
    local paralexTransition = raceScene:get("paralexTransition")
    if (paralexTransition ~= nil) then
      --print("removed state end event listener for paralexTransition")
      paralexTransition:removeStateEndEventListener()
    end
    
    raceScene:removeEntity("paralexTransition")
  end
  
  if (self.bUpdateCloseUpMode == false and self.bigOb ~= nil) then
    -- Set the paralex state to the state declared in the obstacle's data
    self.currParalexState = cfgObstacleRace.paralexStates[self.bigOb.ob].during
    self.entParalex:setState(self.currParalexState)
    
    -- Go over all the racers and prepare them to the bigObstacle
    local nNumOfRacers = #self.arrRacers
    for iRacer = 1, nNumOfRacers do
      local racer = self.arrRacers[iRacer]
      racer:prepareForBigObstacle()
    end
    
    -- Change the sky position for close up mode
    local yPos = self.entSky:y() - cfgObstacleRace.ySkyOffsetOnCloseUp
    self.entSky:y(yPos)
    
    self:playSound(tostring(self.bigOb.ob))
    
    self.bUpdateCloseUpMode = true
  else
    --print("afterParalexTransition bUpdateCloseUpMode: "..self.bUpdateCloseUpMode..", self.bigOb: "..tostring(self.bigOb))
  end
end

function ObstacleRace:exitCloseUp()
  print("exitCloseUp")
  -- Handle all the racers, remove the ones that are in stop mode
  local iRacer = 1
	while (self.arrRacers[iRacer]) do
    local racer = self.arrRacers[iRacer]
    -- check if we need to remove the racer
    if  (racer.runState == "stop") then
      --print ("removing racer "..racer.id.." runState: "..racer.runState)
      -- remove the racer from the table
      table.remove(self.arrRacers, iRacer)
      --kill the racer and remove the entity
      --print("destroying racer "..racer.id)
      racer:destroy()
      self.raceScene:removeEntity(racer.ent)
    else
      -- This racer is still in the game, increase the iRacer to move to the next on the list
      iRacer = iRacer + 1
      racer:exitBigObstacle() -- Exit the bigObstacle mode
    end
  end
  
  local numOfRacersLeft = #self.arrRacers
  
  if (numOfRacersLeft > 0) then
    -- Set the paralex state to the next state
    self.currParalexState = cfgObstacleRace.paralexStates[self.bigOb.ob].after
    self.entParalex:setState(self.currParalexState)
    
    -- Put the sky back in the original position
    local yPos = self.entSky:y() + cfgObstacleRace.ySkyOffsetOnCloseUp
    self.entSky:y(yPos)
  end
  
  if (self.bigOb.lastObstacle == true) then
    self:playBGMusic("madeItBG")
  end
  
  -- if none of the racers are left we should show the score dialog
  if (numOfRacersLeft == 0) then
    --print("no racers left, showing score dialog")
    self:showScoreDialog()
  -- else, check if this is the last obstacle, if it is the racer should leave the scene and only then show the summary screen
  elseif (self.bigOb.lastObstacle == true) then
    --print("last obstacle, racer should leave scene")
    self.bRacerLeavesScene = true
    
    -- Only one racer reaches this scene. we use his id to set the right state and callout
    local lastRacerId = self.arrRacers[1].id
    
    -- put the racer in the middle of the screen
    local racer = self.arrRacers[1]
    if (racer ~= nil) then
      racer:centerRacer()
    end
    
    self:showCallout("endScene", {lastRacerId}, self.runData.lastObstacleMultiplier)
  else
    --print("showing new part callout")
    -- This means that the race is still on, we should show the newPart callout and update the packScore tween
    self:showCallout("newPart", {}, self.bigOb.multiplier)
    self:playSound("newPart")
    
    -- Keep the prevScore for tweening of the "yourScore" template
    self.prevScore = self.yourScore
    self.yourScore = self.bigOb.multiplier
  end
  
  -- Change the bCloseUpMode value back to false and set the bigOb property to nil
  self.bCloseUpMode = false
  self.bUpdateCloseUpMode = false
  self.bigOb = nil
end

-- This is a sorting function on a map. we use this to sort the map of the racers multipliers, to show them from the winner down. 
function ObstacleRace:pairByValues(t, order)
    -- collect the keys
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end

    -- if order function given, sort by it by passing the table and keys a, b,
    -- otherwise just sort the keys 
    if order then
        table.sort(keys, function(a,b) return order(t, a, b) end)
    else
        table.sort(keys)
    end

    -- return the iterator function
    local i = 0
    return function()
      i = i + 1
      if keys[i] then
          return keys[i], t[keys[i]]
      end
    end
end

function ObstacleRace:destroy()
  print("ObstacleRace:destroy()")
  if (self.obsMgr) then
    self.obsMgr:removeAll() -- removing all obstacles
  end
  
  -- Destroy all remaining racers - we don't necessarily have all of the racers
  local nNumOfRacers = #self.arrRacers 
	for iRacer = 1, nNumOfRacers do
		self.arrRacers[iRacer]:destroy()
	end
  Events.removeAllEventListeners(cfgObstacleRace.listenerId)
  print("releasing the raceScene")
  self.raceScene:release()
  self.raceScene = nil
  _obstacleRace = nil
end

--End of class ObstacleRace---------------------------------------------------------------------------------------------------

--[[
	Obstacle Classes 
--]]

Obstacle = classes.class()	-- any type of item (obstacle or decoration). this class will handle item animations triggering

-- Create the obstacle and initialize it according to it's data
function Obstacle:init(obData, raceScene, view)
  self.id = obData.ob..obData.meter.."_"..obData.lane -- YYY should be taken from entity pool
  self.lane = obData.lane
  
  self.score = obData.score
  if (self.score == nil) then
    self.score = 0
  end
  
  self.ob = obData.ob
  self.obType = obData.obType
  self.reaction = obData.reaction
  self.multiplier = obData.multiplier
  self.lastObstacle = obData.lastObstacle
  -- This should come from the server
  if (self.obType == "big" and self.ob == "bigBear") then
    self.lastObstacle = true
  end

  self.xPos = obData.meter * view.nPixelToMeter
  --print("Obstacle init "..self.ob.." id: "..self.id)
  self.width = cfgObs.mapObType[self.ob].width
  --print("Obstacle width "..tostring(self.width))
  self.obGraphicType = cfgObs.mapObType[self.ob].obGraphicType
  --print("Obstacle obGraphicType "..tostring(self.obGraphicType))
  -- Create the entity and set it's state
  self.ent = raceScene:createEntity(cfgObs.mapObType[self.ob].tId, cfgObstacleRace.layers.obLayer, self.id)
  --print("Obstacle ent "..tostring(self.ent))
  local stateId = cfgObs.mapObType[self.ob].sId
  --print("Obstacle stateId "..tostring(stateId))
  self.ent:setState(stateId)
  self.reacted = false
  self.obInnerEnt = nil
  
  -- If this is an animated obstacle, we should get the obInner and set it's state to idle
  if (self.obGraphicType == "animated") then
    self.obInnerEnt = self.ent:get("obInner")
    if (self.obInnerEnt ~= nil) then
      self.obInnerEnt:setState("idle")
    end
  end
  
  -- Set the obstacle y position according to the lane it's on
  local yPos = cfgObstacleRace.arrLanes[self.lane].yPos
  --print("Obstacle first yPos "..tostring(yPos))
  yPos = yPos + cfgObs.mapObType[self.ob].yBaseOffset
  --print("Obstacle second yPos "..tostring(yPos))
  --print("self.ent "..tostring(self.ent))
  if (self.ent~= nil) then
    self.ent:y(yPos)
  end
end

function Obstacle:reposition(xDistance)
  -- If it's an animated obstacle and it has already reacted to the racer, return false. This will keep it in the visibleObstacles array and won't update it's x
  -- We will handle it when the animation completes
  if (self.obGraphicType == "animated" and self.reacted) then
    return false
  end
  
	local xScreenPos = self.xPos - xDistance -- This is the position in pixels from the left of the screen
  
	-- Check if the obstacle passed the left side of the screen
	if (xScreenPos + self.width < 0) then
    -- It passed the left side of the screen, it can be removed, return true
		return true;
	end
  
	-- Update the obstacle's x position
	self.ent:x(xScreenPos)
	return false;
end

-- The reaction function of the obstacle
function Obstacle:react()
  -- If it's an animated obstacle, listen to the animation complete event and dispatch the animatedObstacleReacted event.
  -- The handler of the dispatched event will show the packScore animation
  if (self.obGraphicType == "animated" and self.obInnerEnt ~= nil) then
    self.reacted = true
    self.obInnerEnt:addStateEndEventListener(self, self.onAnimatedObFinishAnim)
    -- Setting the state to the animated state
    self.obInnerEnt:setState("animated")
    Events.dispatch("animatedObstacleReacted", {obName = self.ob, score = self.score})
  end
end

-- The animated obstacle's complete animation, we should dispatch the event to remove it.
function Obstacle:onAnimatedObFinishAnim(eventParams)
  if (self.obGraphicType == "animated" and self.obInnerEnt ~= nil) then
    --print("removed state end event listener for obInnerEnt of "..self.ob)
    self.obInnerEnt:removeStateEndEventListener()
  end
  Events.dispatch("removeAnimatedObstacle", {obId = self.id})
end

--End of classes of type Obstacle-----------------------------------------------------------------------------------------

--[[
	Obstacle Manager Class
--]]

ObstacleManager = classes.class()

function ObstacleManager:init(arrObData, raceScene, view)
  self.arrObData = arrObData -- This is the data of all the obstacles in the game
  self.raceScene = raceScene -- Keep a reference of the scene, to create the obstacles
  self.view = view -- Keep a reference of the view
  self.iNextOb = 1 -- This is the indicator of the next ob in overall run (small or big), we keep increasing it when adding a new obstacle to the screen
  self.nObsCount = #self.arrObData
  self.arrVisibleObs = {} -- Create an empty array that will later hold the currently visible obstacles
end

function ObstacleManager:update(xDistance)
  local nVisibleObCount = #self.arrVisibleObs
  -- Go over all the obstacles in the list, starting from the self.iNextOb (we already handled all the obstacles before that) and check if they entered the screen from the right
	while (self.iNextOb <= self.nObsCount) do
    local obsXPos = self.arrObData[self.iNextOb].meter * self.view.nPixelToMeter - xDistance
    
    -- If the obstacle is inside the screen, create it's view and move to the next obstacle.
    if (obsXPos > 0 and obsXPos < self.view.xScreenWidth) then
      -- it is important that the array of visible obs will remain sorted, so we are adding the new obstacle to the end of the array
      self.arrVisibleObs[nVisibleObCount + 1] = Obstacle.new(self.arrObData[self.iNextOb], self.raceScene, self.view)
      self.iNextOb = self.iNextOb + 1 -- Increase the counter, so we will check the next obstacle on the list.
      -- we added a new obstacle, we need to increase the location of the last item in the array
      nVisibleObCount = nVisibleObCount + 1
    -- if it's already out of the screen don't create it and move to the next one
    elseif (obsXPos <= 0) then
      self.iNextOb = self.iNextOb + 1 -- Increase the counter, so we will check the next obstacle on the list.
      break
    -- This obstacle has yet to arrived to the screen, break
    else
      break
    end
	end
  
	-- Go over the visible obstacles and reposition them
	local iOb = 1
	while (self.arrVisibleObs[iOb]) do
    -- The reposition function returns true if the obstacle is out of the screen and should be removed
		local bShouldRemove = self.arrVisibleObs[iOb]:reposition(xDistance)
		if bShouldRemove then
      -- Removing the entity of the obstacle from the scene and from the array of visible obstacles
      --print("removing "..self.arrVisibleObs[iOb].id)
      self.raceScene:removeEntity(self.arrVisibleObs[iOb].ent)
			table.remove(self.arrVisibleObs, iOb)
		else -- proceed to next index
			iOb = iOb + 1
		end
	end
end

function ObstacleManager:removeObById(obId)
  local iOb = 1
	while (self.arrVisibleObs[iOb]) do
		if (self.arrVisibleObs[iOb].id == obId) then
      -- Removing the entity of the obstacle from the scene and from the array of visible obstacles
      self.raceScene:removeEntity(self.arrVisibleObs[iOb].ent)
			table.remove(self.arrVisibleObs, iOb)
		else -- proceed to next index
			iOb = iOb + 1
		end
	end
end

function ObstacleManager:removeAll()
  print("ObstacleManager:removeAll")
  -- Go over all the visible obstacles, remove their entity from the scene and from the array of visible obstacles
	while (self.arrVisibleObs[1]) do 
    --print("removing "..self.arrVisibleObs[1].id)
    self.raceScene:removeEntity(self.arrVisibleObs[1].ent)
		table.remove(self.arrVisibleObs, 1)
	end
end

function ObstacleManager:checkForNewObs(iLane, lastEncounteredObId)
  -- Go over the visible obstacles
	local nVisibleObCount = #self.arrVisibleObs
	for iOb = 1, nVisibleObCount do
		local ob = self.arrVisibleObs[iOb]
    -- If the obstacle is in the racer's lane and he hasn't encountered it yet, return the obstacle for the racer to handle
		if (ob.lane == iLane and ob.id ~= lastEncounteredObId) then
			return ob
		end
	end
	
	return nil
end

-- Check if there is a big obstacle in the array of visible obstacles and return it
function ObstacleManager:checkForNewBigOb()
	local nVisibleObCount = #self.arrVisibleObs
	for iOb = 1, nVisibleObCount do
		local ob = self.arrVisibleObs[iOb]
		if (ob.obType == "big") then
			return ob
		end
	end
	
	return nil
end

--End of class ObstacleManager---------------------------------------------------------------------------------------------------

--[[
	Racer Class 
--]]

Racer = classes.class()

function Racer:init(racerData, raceScene)
  -- Init the racer with it's data
	self.runState = "run" -- This is the initial state of every racer
	self.id = racerData.id
  self.statePrefix = racerData.statePrefix
	self.tId = racerData.tId
	self.lane = racerData.lane
  self.width = racerData.width
	self.changeState = nil
	self.lastEncounteredObID = nil
  self.lastHandledObId = nil
	self.nrgLevel = cfgRacers.nrg.default
  self.nextNrgLevel = nil
  -- Create the racer's entity and set it's state to the initial runState, set it's scale to the value from the config file
	self.ent = raceScene:createEntity(self.tId, cfgObstacleRace.layers.racerLayer, self.id) 
	self.ent:scale(cfgRacers.xScale, cfgRacers.yScale)
	self.ent:setState((self.statePrefix..self.runState))
  -- Add an event listener to the state animation, we will handle the racer's next state on this function
	self.ent:addStateEndEventListener(self, self.onRunCycleComplete)
	
  -- This is temp until we have the final racers
	self.ent:color(racerData.RGB[1], racerData.RGB[2], racerData.RGB[3]) -- YYY temp
  
	--Debug
	--SGS_addDebugLabel(raceScene, 150 * self.lane, 100, 1, 0, 0, "R"..self.lane)
	--raceScene:setChildLabel("R_"..self.lane, self.id.." ")
	
	-- Set the initial x position of the racer.
	self.xOffset = { delta = 0, subDelta = 0, direction = 0 }
	self:initXOffset()
	self.ent:position(self:calcXPos(), cfgRacers.yBasePos + cfgObstacleRace.arrLanes[self.lane].yPos)
end

function Racer:destroy()
	self.ent:removeStateEndEventListener()
end

-- Calculating the initial delta of the racer, so that not all of the racers will start at the same line
function Racer:initXOffset()
	self.xOffset.delta = math.random(cfgRacers.xOffset.min, cfgRacers.xOffset.max)
	self:resetXOffsetSubDelta() 
end

-- This function randomaly sets a new direction to the racer, and resets the subDelta property.
function Racer:resetXOffsetSubDelta()
  -- choose direction
  if (math.random(0, 1) > 0.50) then
    self.xOffset.direction = 1
  else
    self.xOffset.direction = -1
  end
  
  --set subDelta
  self.xOffset.subDelta = 0
end

function Racer:calcXPos()
  -- Calculates the x position base on the config xBasePos value, the nrgLevel of the racer and the delta (which is the random number between the racers)
	return cfgRacers.xBasePos + self.xOffset.delta + self.nrgLevel * cfgRacers.nrg.xLevelOffset
end

-- Prepare the racer for the big obstacle, set it's scale, send it back outside of the screen and set the lastHandledObId to nil
function Racer:prepareForBigObstacle()
  self.ent:scale(cfgRacers.xScaleOnCloseUp, cfgRacers.yScaleOnCloseUp)
  --print("racer "..self.id.." x when entering ob "..math.floor(self.ent:x()))
  self.xBeforeCloseUp = math.floor(self.ent:x())
  local distanceFromBase = (self.xBeforeCloseUp- cfgRacers.closeUpBaseOffset) * cfgRacers.closeUpOffsetMultiplier
  self.ent:position(distanceFromBase - cfgRacers.closeUpXOffset - self.width, cfgRacers.yBasePosOnCloseUp + cfgObstacleRace.arrLanes[self.lane].yPos)
  --print("racer "..self.id.." is located at x: "..math.floor(self.ent:x()).. " y: "..math.floor(self.ent:y()))
  self.lastHandledObId = nil
  self.lastEncounteredObId = nil
end

-- Exit from big obstacle. scale back and set the position to the position it should be in the race mode.
function Racer:exitBigObstacle()
  self.ent:scale(cfgRacers.xScale, cfgRacers.yScale)
  self.ent:position(self.xBeforeCloseUp, cfgRacers.yBasePos + cfgObstacleRace.arrLanes[self.lane].yPos)
end

-- Update the racer's x position
function Racer:update()
	self:updateXOffset()
	self.ent:x(self:calcXPos())	
end

-- Check if the racer should react to the big obstacle
function Racer:updateCloseUp(nDistanceDelta, bigOb)
  -- If the racer's lastEncounteredObId is not equal to the bigOb.id it means that he hasn't reacted to it yet.
  -- If his runState equals to "stop" it means that he handled the object, don't update him anymore
  if (self.lastEncounteredObId ~= bigOb.id and self.runState ~= "stop") then
    -- Update the racer's position (we sent him back out of the screen when we moved to close up mode)
    local xPos = self.ent:x() + nDistanceDelta
    self.ent:x(xPos)
    
    local racerX = xPos + self.width
    -- If the racer is entering the screen from the left, he should react to the obstacle
    if (racerX >= 0) then
      --print("racer "..self.id.." reacts to "..bigOb.ob.." racer's x "..racerX)
      self:react(bigOb)
    end
  end
end

-- Check if the racer should react to small obstacles
function Racer:handleSmallOb(xDistance, ob)
	xObScreenPos = ob.xPos - xDistance -- The obstacle's x position in pixels on the scree.
	xDistanceFromRacer = xObScreenPos - (self:calcXPos() + self.width) -- The distance of the obstacle from the racer (it's right end)
	xObReactionMargin = cfgObs.mapObType[ob.ob].reactionMargin -- The reaction margin of the racer from the obstacle
	
  -- If the distance from the racer is smaller than the margin the racer should react
	if (xDistanceFromRacer < xObReactionMargin) then
    self:react(ob)
	end
end

-- The actual reaction to an obstacle
function Racer:react(ob)
  -- This part is written like this because we had a bug when sometimes a racer interacted with a big obstacle when he had a lastHandledObId
  local shouldReact = false
  -- This means that he hasn't encountered and handled this obstacle yet.
  -- We set the lastEncounteredObId to nil after handling the obstacle (onRunCycleComplete)
  if (self.lastEncounteredObId == nil) then
    -- in the prepare for big obstacle we set the lastHandledObId to nil
    if (ob.obType == "big") then
      if (self.lastHandledObId == nil) then
        shouldReact = true
      end
    else
      if (self.lastHandledObId ~= ob.id) then
        shouldReact = true
      end
    end
  end
  
  if (self.lastEncounteredObId == nil) then
  --print("racer "..self.id.." should react "..tostring(shouldReact).." to lastEncounteredObId "..tostring(self.lastEncounteredObId).." and lastHandledObId "..tostring(self.lastHandledObId).." x: "..self.ent:x().." y: "..self.ent:y())
  end
  if (shouldReact) then
    local reactionType = cfgObs.mapObType[ob.ob].reactionType -- The reaction type of the specific obstacle
    local reaction = ob.reaction[self.id] -- Check if this racer has a reaction attached to this obstacle
    if (reaction == nil) then
      print ("racer "..self.id.." has no reaction")
      self.runState = "stop"
      self.lastEncounteredObId = ob.id
      self.ent:visible(false)
      return
    end
    
    -- For big obstacles the animation starts from x = 0 so, we set the entity's x value to 0
    if (ob.obType == "big") then
      --print(self.id.." location when reacting is x: "..self.ent:x().." lastlastEncounteredObId "..tostring(self.lastEncounteredObId).." bigOb id "..ob.id.." lastHandledObId "..tostring(self.lastHandledObId))
      self.ent:x(0)
      Events.dispatch("playObstacleRaceSound", {musicId = ob.ob.."Start"})
    else
      if (reaction.status == "pass") then
        Events.dispatch("playObstacleRaceSound", {musicId = "smallObPass"})
      else
        Events.dispatch("playObstacleRaceSound", {musicId = "smallObFail"})
      end
    end
    
    -- This is the state that the racer should be in after the reaction
    local newRunState = cfgRacers.mapRunStateMachine[self.runState][reactionType][reaction.status].moveTo
    
    -- If this is the last obstacle and the racer failed, it means that he didn't pass. we should set the newRunState to "stop".
    -- This way we can have two different animations for failure on the last obstacle, only one racer can pass this
    if (ob.lastObstacle == true) then
      if (reaction.status == "fail" or reaction.status == "stop") then
        newRunState = "stop"
        -- we set this to "fail" so that the animation will show the jumping wolf
        reaction.status = "fail"
      end
      -- Center the racer on the last obstacle, configuration make sure that only one racer gets here
      self.ent:y(cfgObstacleRace.arrLanes[1].yPos)
    end
    
    -- each state of the racer is combined of the stateId in the obstacles map and the obstacle stateId (this way we can have different animation for each obstacle)
    local obState = cfgObs.mapObType[ob.ob].sId
    -- If the ractionType is take we should not change the racers state
    if (reactionType ~= "take") then
      -- This is the state that the racer should be in when starting the reaction
      local reactionState = self.statePrefix..cfgRacers.mapRunStateMachine[self.runState][reactionType][reaction.status].state..obState
      self.ent:setState(reactionState)
    end
    
    self.runState = newRunState
    
    -- Setting the next nrg level of the racer as a result of the encounter with the obstacle, we will change it after the runCycle is completed
    if (reaction.nrgLevel ~= self.nrgLevel) then
      self.nextNrgLevel = reaction.nrgLevel
    end
    
    self.lastEncounteredObId = ob.id
    
    ob:react()
  end
end

-- Update the racer's xOffset property
function Racer:updateXOffset()	
	--if we are out of bounds, change direction
	if (self.xOffset.direction == -1 and self.xOffset.delta <= cfgRacers.xOffset.min) or
     (self.xOffset.direction == 1 and self.xOffset.delta >= cfgRacers.xOffset.max) then
      -- change direction
	    self.xOffset.direction = self.xOffset.direction * -1
		return
	end
	
	-- if we are pass sub delta interval, reset to get a new direction
	if (self.xOffset.subDelta > cfgRacers.xOffset.subDeltaInterval) then
		self:resetXOffsetSubDelta()
	end
  
  -- Calculate the new delta based on a random number between the minStep and maxStep and the direction of the racer
	local nextStep = math.random(cfgRacers.xOffset.minStep, cfgRacers.xOffset.maxStep)
	self.xOffset.delta = self.xOffset.delta + nextStep * self.xOffset.direction
	self.xOffset.subDelta = self.xOffset.subDelta + nextStep
  
  -- This is a way to handle the energy level smoothly
  -- If the nextNegLevel is nil it means that we have already handled it or it hasn't changed at all
  if (self.nextNrgLevel ~= nil) then
    -- Set the direction of the energy change, if the next energy level is lower that the current energy level, the direction is -1
    local stepDir = 1
    if (self.nrgLevel > self.nextNrgLevel) then
      stepDir = -1
    end
    
    -- Change the nrgLevel property by the configuration value of nrgLevelStepSize in the correct direction
    self.nrgLevel = self.nrgLevel + (stepDir * cfgRacers.nrg.nrgLevelStepSize)
    
    -- We need to check what is the difference between the next energy level and the actual energy level, do we can stop updating if we reached the required level
    local dif = self.nrgLevel - self.nextNrgLevel
    local shouldReset = false
    -- If the direction is right and the difference is greater than 0, it means that we have reached or passed the required level, should reset.
    if (stepDir == 1 and dif >= 0) then
      shouldReset = true
    -- The direction is left, check if the difference is lower than 0 to see if we passed the required level.
    elseif (stepDir == -1 and dif <= 0) then
      shouldReset = true
    end
    
    if (shouldReset) then
      self.nrgLevel = self.nextNrgLevel
      self.nextNrgLevel = nil
    end
  end
end

-- Gets called on every cycle of the racer's current state animation
function Racer:onRunCycleComplete(eventParams)
  --require('mobdebug').on()
  
  -- This means that the racer's last obstacle encounter stopped him, he will not continue the race.
  if (self.runState == "stop") then
    -- do shit
  end
  
  -- The lastEncounteredObId should not be nil only when reacting to the obstacle, so this means that this cycle is reaction cycle and we can set it back to nil and set
  -- the lastHandledObId to this obstacle id.
  if (self.lastEncounteredObId ~= nil) then
    self.lastHandledObId = self.lastEncounteredObId
    self.lastEncounteredObId = nil
  end
  
  -- Setting the new runState as was set on the obstacle handling in the "react" function
  if (self.runState ~= "stop") then
    self.ent:setState(self.statePrefix..self.runState)
  end
end

function Racer:centerRacer()
  local yPos = (cfgObstacleRace.arrLanes[1].yPos + cfgObstacleRace.arrLanes[#cfgObstacleRace.arrLanes].yPos) / 2
  self.ent:y(yPos)
end
