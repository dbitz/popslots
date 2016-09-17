--[[
integrationTestUtils - 
holds general functions, for the use of Integration Tests.
--]]

bindModule("ScriptUtils")
bindModule("Users")
bindModule("IntegrationTests")
bindModule("PortalManager")
bindModule("Http")
bindModule("UserActivityLogger")
bindModule("SlotsGame")
bindModule("GameFrame")
bindModule("PerformanceMonitor")

local cheatsTable = require("cheatsTable")
local activateCheatRequest = nil

---------------------------------------------------------------------
----------------------- CONSTANTS --------------------------
---------------------------------------------------------------------

local DEFAULT_EVENT_WAIT_TIME = 150000
local BIG_CASINO_SLOTS_VIEW_SCENE = "SlotsView"
local BIG_CASINO_SPIN_BUTTON = "m_spinButton"

---------------------------------------------------------------------
-------------------------- LOGS AND ASSERTS -------------------------
---------------------------------------------------------------------

function createErrorMsgAux(...)
	local line = debug.getinfo(3, 'l').currentline
	local file = debug.getinfo(3,'S').short_src
	file = getFileNameFromPath(file)
	file = addExtentionToFileName(file)

	local str = file .. '(' .. line .. '): '
	local arg={...}
	for i,v in ipairs(arg) do
		str = str .. tostring(v)
	end

	return str
end


--[[function traceback ()
  local level = 1
  while true do
	local info = debug.getinfo(level, "Sl")
	if not info then break end
	if info.what == "C" then   -- is a C function?
	  print("[LUATEST] EYALDEBUG00 ", level, "C function")
	else   -- a Lua function
	  print("[LUATEST] EYALDEBUG11 ", string.format("[%s]:%d",
						  info.short_src, info.currentline))
	end

	level = level + 1
  end
end--]]

function LOGWRAP(level, ...)
	local str=""
	local arg={...}
	for i,v in ipairs(arg) do
		str = str .. tostring(v) .. "\t"
	end

	local line = debug.getinfo(3, 'l').currentline
	local file = debug.getinfo(3,'S').short_src

    --print("[LUATEST] EYALDEBUG 000")
    --recursive_log(debug.getinfo(3,"S"))

	file = getFileNameFromPath(file)
	file = addExtentionToFileName(file)

	LOG(level, file, line, str)
end


--------------------------------------------------------------------
---------------------- GENERAL AUX FUNCTIONS -----------------------
--------------------------------------------------------------------


-- gets the filname from a full path.
function getFileNameFromPath(fullpath)
	local res = "fileNameMock"

	local index = fullpath:match'^.*()/'
	if (index) then
		res = string.sub(fullpath, index+1)
	end

	return res
end

-- if needed, adds .lua extention to the filename.
function addExtentionToFileName(filename)
-- print("[LUATESTS] got to addExtentionToFileName. filename is: " .. filename)
	local startIdx1, endIdx1, startIdx2 = string.find(filename, "%.lua", 1)

	if (startIdx2 ~= nil) then
		LOG_ERROR("Error. '.lua' string appears twice in the file")
	end

	if (startIdx1 == nil) then
		filename = filename .. '.lua'
	end

	return filename
end


---------------------------------------------------------------------
------------------------- FUNCTION WRAPPERS -------------------------
---------------------------------------------------------------------

-- builds a url request to activate cheat, by the format we need.
function buildUrlWithParams(baseUrl, id, paramsDict, valuesDict)
	local urlWithParams = baseUrl .. "?"
	urlWithParams = urlWithParams .. "id=".. id

-- params and defaultValues should be of the same size
-- add all default params to request

	if (paramsDict) then
		for k1, v1 in pairs(paramsDict) do
			urlWithParams = urlWithParams .. "&" .. v1 .. "=" .. valuesDict[k1]
		end
	end

	return urlWithParams
end

--[[ onCompleteActivateCheatRequestIntegTest-
--  notice that this callback function happens on a the main thread, while applying the cheat happened on the test thread, that is now on wait for cheat activated event.
--]]
function onCompleteActivateCheatRequestIntegTest(event)
	--LOG_INFO("onCompleteActivateCheatRequestIntegTest")
	--recursive_log(event)

	if (event) then
		if (event.success == true) then
			UserActivityLogger.logUserActivity("CHEAT_ACTIVATED")
		else
			LOG_ERROR("cheat http request succeeded, but acticvation itself failed!")
		end

        if (activateCheatRequest) then
            activateCheatRequest:release()
            activateCheatRequest = nil
        end
	else
		LOG_ERROR("cheat http request failed!")
	end
end

-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------- EXPOSED API  ---------------------------------------------------
-------------------------------------------------------------------------------------------------------------------


--------------------------- LOGS AND ASSERTS ----------------------------

--[[ recursive_log
-- @brief prints a table recursively (the table and all contained tables)
-- @param [table] t - a table
--]]
function recursive_log(t, prefix)
	prefix = prefix or ""
	print("[LUATESTS] " .. prefix .. tostring(t) .. " - ")
	if t and type(t) == "table" then
		for k, v in pairs(t) do
			local p = prefix .. "\t"
			local t = type(v)
			if t == "table" then
				print("[LUATESTS] " .. p .. k .. ":" .. t .. ":")
				recursive_log(v, p)
			else
				print("[LUATESTS] " .. p .. k .. ":" .. t .. ":" .. tostring(v))
			end
		end
	end
end

--[[ LOG_INFO
-- @brief this functions writes to LOG. Log is of type INFO.
-- @param [string] ... - all params will be concancated into a string, which is the msg of the LOG.
--]]
function LOG_INFO(...)
	LOGWRAP("INFO", ...)
end

--[[ LOG_WARN
-- @brief this functions writes to LOG. Log is of type WARN.
-- @param [string] ... -all params will be concancated into a string, which is the msg of the LOG.
--]]
function LOG_WARN(line, ...)
	LOGWRAP("WARN", ...)
end

--[[ LOG_DEBUG
-- @brief this functions writes to LOG. Log is of type DEBUG.
-- @param [string] ... - all params will be concancated into a string, which is the msg of the LOG.
--]]
function LOG_DEBUG(line, ...)
	LOGWRAP("DEBUG", ...)
end

--[[ LOG_ERROR
-- @brief this functions writes to LOG. Log is of type ERROR. This function also kills the application, by sending an error.
-- @param [string] ... - all params will be concancated into a string, which is the msg of the LOG.
--]]
function LOG_ERROR(...)
	LOGWRAP("ERROR", ...)
	local str = createErrorMsgAux(...)
	error(str)
end

--[[ ASSERT
-- @brief this functions asserts an condition. If the assert fails - an error will be send and the app will be killed.
-- @param [bool] cond - the condition to check
-- @param [string] ... - all params will be concancated into a string, which is the msg of the LOG.
--]]
function ASSERT(cond, ...)
	if cond == false then
		-- LOG_INFO("got to false assert")
		LOGWRAP("ERROR", "==ASSERTION FAILED== " .. ...)
		local str = createErrorMsgAux(...)
		error(str)
	end
end


--------------------------- CHEATS ----------------------------

--[[ printAllCheats
@brief prints all cheats
@param [string] machineScene - the scene name of the machine. for example, 'cleopatra' or "SlotsView" in popslots.
@param [optional] [string] spinBtnName - if provided, we will use this name as the spin button we press on. otherwise, "m_spinBtn" as default (which is the name in casa).
@return [dictionary] the result from SPIN_ENDED event
--]]
function printAllCheats()
	LOG_INFO("Utils print all cheats")
	if (cheatsTable) then
		recursive_log(cheatsTable)
	else
		LOG_INFO("Error. cheatsTable was not initialized properly.")
	end
end


--[[ applyCheat
-- @brief Applys a cheat for user. when applying the cheat, http request will be sent, and we wait for "CHEAT_APPLYED". some cheats has a list of parameters. it is possible to send values for those parameters. Notice - u must send values for ALL parameters in the list. If no params are sent - we anyway build a list of parameters and apply them with their default values, because server expects that.
--    Usage examples:
--    -- applyCheat("spin", { "5row", "RANDOM"})     -- GOOD. Will use the supplied params.
--    -- applyCheat("spin")                          -- GOOD. Will use default params.
--    -- applyCheat("spin")                         -- GOOD. Params are not needed for this cheat.
--
--    Bad examples:
--    -- applyCheat(100, { "5row" })              -- BAD!! Must supply values for all params.
--
-- @param [string] id - the cheat nameKey (for example: for 'setCoin' cheat
-- @param (dictionary) params - list of params. MUST BE ACCORDING TO THE PARAMS LIST FOR THE CHEAT.
-- @param (dictionary) values - list of values for the params. MUST BE ACCORDING TO THE PARAMS LIST - value for each param.
-- @return doesn't return anything.
--]]
function applyCheat(nameKey, values)
	LOG_INFO("applyCheat - name key is: " .. tostring(nameKey))


	if ((nameKey == nil) or (type(nameKey) ~= "string")) then
		LOG_ERROR("applyCheat - Must provide a valid name key, which is of type string. instead got: " .. tostring(nameKey))
	end

	local id = cheatsTable.nameKeyToIDMap[nameKey]

	if (id == nil) then
		LOG_ERROR("applyCheat - Couldn't find the nameKey:" .. nameKey)
	end

	LOG_INFO("ACTIVATING CHEAT... nameKey: '" .. tostring(nameKey) .. "'. id: '" .. tostring(id) .. "'. usage: '" .. cheatsTable[nameKey].usage .. "'.")

-- init fields related to urls
	local actionsUrl = Http.getActionsUrl()
	local activeCheatUrl = actionsUrl .. "cheat/cheat"
	local urlWithParams

	if ( values and (#values ~= #cheatsTable[nameKey].params) ) then
		LOG_ERROR("applyCheat - number of params provided is not coherented with number of params for cheat")
	end

	if (values) then
		urlWithParams = buildUrlWithParams(activeCheatUrl, id, cheatsTable[nameKey].params , values)
	else
		urlWithParams = buildUrlWithParams(activeCheatUrl, id, cheatsTable[nameKey].params , cheatsTable[nameKey].defaultValues)
	end

	LOG_INFO("sending http request. url: " .. tostring(urlWithParams))
	activateCheatRequest = Http.sendRequest(urlWithParams, nil, onCompleteActivateCheatRequestIntegTest, "GET")
	waitForEventWrapper("CHEAT_ACTIVATED")
end



--------------------------- GENERAL AUX FUNCTIONS ----------------------------


-- for key,value in pairs(res) do LOG_INFO(1,key,value) end
function printAllButtons(buttons)
	LOG_INFO("printing all active buttons...")
	for i,v in ipairs(buttons) do
		LOG_INFO("button["..i.."] is: "..v:id())
	end
end

--[[PROTECTED_RETRIEVE  -
-- @bried retireves a field named 'fieldStr' from myTable. first asserts myTable is not nil
-- @param [optional] expectedValue - If provided, we also assert the result equals it.
--]]
function PROTECTED_RETRIEVE(myTable, fieldStr, expectedValue)
	ASSERT(myTable~=nil, "Error. Attempt to retrieve field from a nil table")
	local res = myTable.eventData[fieldStr]

	if (expectedValue) then
		ASSERT(res==expectedValue, "Error. Value of field '"..fieldStr.."' is different from expected!  Expected: " ..expectedValue.. " .  Got: "..res.." .")
	end
	return res
end

--[[ login -
-- logins with an allocated user.
-- waits for "USER_LOGGED_IN" and "PORTAL_DISPLAYED" events.
--]]
function login()
	LOG_INFO("login")
	local fisrtTimeLogin = IntegrationTests.login()
	waitForEventWrapper("USER_LOGGED_IN")
	LOG_INFO("Login complete.")

	-- varify that the user is properly reseted
	if (fisrtTimeLogin) then
		LOG_INFO("first time login - checking user was properly reseted")
		local isGuideActive = IntegrationTests.isGuideActive()
		-- LOG_INFO("isGuideActive: " .. tostring(isGuideActive))
		ASSERT(isGuideActive, "Error - the new allocated user was not reseted properly")

        --[[ on first time login we start creating the default scene.
        -- we have a special treat for the scene creation... if a reset happens during that - we handle it with special resetOnComplete.
        -- to avoid having a "regular" reset, caused by finished the config user file, and starting the next test, we wait for the scene creation to be completed.
        -- then, it is safe to do a reset.
        --]]
        LOG_INFO("first time login - waiting for scene loading finished")
        waitForEventWrapper("SCENE_LOADING_FINISHED")
	end

	waitForEventWrapper("PORTAL_DISPLAYED")

    -- we want to clear PORTAL_HIDDEN from the events map - because it might have been fired as a result of reset caused by the login.
    IntegrationTests.clearEvent("PORTAL_HIDDEN")

    -- LOG performace details
    logPerformanceDetails("portal")
end


function logPerformanceDetails(context)
    local dic = PerformanceMonitor.getPerformanceDetails()
    LOG_INFO("performanceMonitor:" ..
                " time=" .. tostring(Utils.getCurrentTime()) ..
                " cpname=" .. context ..
                " fps=" .. dic.fps ..
                " usedMemory=" .. dic.usedMemory .. "KB" ..
                " freeMemory=" .. dic.freeMemory .. "KB" ..
                " totalBytesDownloaded=" .. dic.totalBytesDownloaded .. "KB" ..
                " audioMemBuffer=" .. dic.audioMemBuffer ..
                " audioMemPersist=" .. dic.audioMemPersist)
end

--[[ waitForEventWrapper -
-- @brief waits for event. checks the event's result field: waitEventResult - returns 0 for success, and -1 otherwise.
-- @param [string] eventString - the event to   wait for.
-- @param (int) timer - time to wait before failure. default is defined in a constant.
-- @return the event
--]]
function waitForEventWrapper(eventString, timer)
	local myTimer = timer or DEFAULT_EVENT_WAIT_TIME
	LOG_INFO("..before waiting for event: '" .. eventString .. "'. wait time is " .. tostring(myTimer / 1000) .. "s.")
	local event = IntegrationTests.waitForEventSynced(eventString, myTimer)
	local res = event.waitEventResult
	--print("event is: " .. tostring(event))
	--print("res is: " .. tostring(res))
	--print("eventString is: " .. tostring(eventString))
	--print("condition res~=1 is: " .. tostring(res~=-1))
	ASSERT(res~=-1, "Event '" ..  eventString .. "' didn't fire.")
	LOG_INFO("after waiting for event: '" .. eventString .. "'.")
	return event
end


----------------------------------------------------------------------------


--[[ chooseMachineFromPortal
-- choose a machine from GamesMenu (for casa only)
-- @param machineStr [string] the name of the machine we want to choose, for example "Diamonds"
--]]
function chooseMachineFromPortal(machineStr)
	local button = PortalManager.getButtonEntity(machineStr)
	ASSERT(button~=nil, "ASSERT FAILED. button==nil! couldn't find the machine in portal.")
	pressButtonWrapper("portal", button)
end

--[[ enterMachineFromGamesMenu
-- choose a machine from GamesMenu (for PopSlots only)
-- @param machineStr [string] the name of the machine we want to choose, for example "btn_MGM"
--]]
function enterMachineFromGamesMenu(machineStr)
	local gamesMenuScene = GameScene.getSceneById("GamesMenu")
	ASSERT(gamesMenuScene~=nil, "ASSERT FAILED. gamesMenuScene==nil! 'GamesMenu' scene was not found.")

	local btnMGM = gamesMenuScene:get(machineStr)
	ASSERT(btnMGM~=nil, "ASSERT FAILED. btnMGM==nil!")

	pressButtonWrapper(btnMGM, 'gameButton')
end

function printActiveButtons(scene)
	return getActiveButtonsWrapper(scene, true)
end


--[[ getActiveButtonsWrapper
-- @brief Get All active buttons (visiable and not disabled) from scene
-- @param [string|table] the id of the scene or its instance, to get the buttons from
-- @param [boolean] printButtons - if to also print the buttons or not. default is faulse.
-- @return [table] all the active button entities in the scene. nil if none exists.
--]]
function getActiveButtonsWrapper(scene, printButtons)
	LOG_INFO("..getting active buttons from scene '" .. tostring(scene) .."'")
	printButtons = printButtons or false

	local buttons = GameScene.getActiveButtons(scene)
	if (buttons) then
		LOG_INFO("found buttons. Num of buttons: " .. tostring(#buttons))
		if (printButtons == true) then
			printAllButtons(buttons)
		end
	else
		LOG_INFO("didn't find any buttons")

	end


	ASSERT(buttons ~= nil, "ASSERT(#buttons ~= nil) for scene: ".. tostring(scene).. " Failed!")
	-- LOG_INFO("#buttons is " .. #buttons)
	ASSERT(#buttons ~= 0, "ASSERT(#buttons ~= 0) Failed!")



	return buttons
end

--[[ runSpinSequence
-- @brief run spin sequence - check balance, spin, wait for spin to end, varify balance.
-- @param (dictionary) params - additional params. available key/values are:
--   -- [bool] assertBalance - false will disable balance asserts. true by default.
--   -- [string] buttonName - to override the default button name (BIG_CASINO_SPIN_BUTTON) send this parameter.
--   -- [string] sceneName - to override the default scene name (BIG_CASINO_SLOTS_VIEW_SCENE) send this parameter.
--   -- [number] expectedBonus - if provided, we will assert the bonusCoins we got in the spin result equals the expected. default is 0 - so we can avoid un-expected bonuscoins which we don't know about.
--   -- [number] expectedTotalBet - if provided, we will assert the totalBet.
-- @return [dictionary] the result from SPIN_ENDED event

-- BALANCE_UPDATED event explained:
-- first - we clear the maps from balance update event.
-- after pressing on spin button, we expect a balance update from the client (balanceVer is -1). This is the balance update after the total bet is decreased from the user's blanace.
-- when spin is ending - we expect another balance update. this is the balance update from the server, and it has a balanceversion. we use this balance update to verify the user's new balance, wether the user won or not in the spin (if he didn't win - we will still get that blanace update, but with the same value as the old balance).
-- notice that when a user wins in a spin, in the following spin there would be an extra balance_update event (for some reason..), but with "balanceVerUpdated" false. therefore we will check this field and if its false we'll ignore that balnace update.

-- levelup explained:
-- if we get levelup, we will get it in the spin results. if levelup is true, we need to consider the coins we got from this levelup (which are held in bonusCoins field) - and to sum them up when checking balance after the balance_update event assets.
--]]
function runSpinSequence(params)
	LOG_INFO("======================= SPINNNINNGG =======================")

    logPerformanceDetails("spinning")

	local assertBalance = true
	local buttonName = BIG_CASINO_SPIN_BUTTON
	local sceneName = BIG_CASINO_SLOTS_VIEW_SCENE
	local expectedBonus = 0
    local expectedTotalBet = nil

	if (params) then
		print("printing params table:")
		recursive_log(params)
		assertBalance = params.assertBalance or assertBalance
		buttonName = params.buttonName or buttonName
		sceneName = params.sceneName or sceneName
		expectedBonus = params.expectedBonus or expectedBonus
        expectedTotalBet = params.expectedTotalBet or expectedTotalBet
	end

	print("assertBalance is: " .. tostring(assertBalance))
	print("buttonName is: " .. tostring(buttonName))
	print("sceneName is: " .. tostring(sceneName))
	print("expectedBonus is: " .. tostring(expectedBonus))
    print("expectedTotalBet is: " .. tostring(expectedTotalBet))

	local game = SlotsGame.getCurrent()
	if (game == nil) then
		LOG_ERROR("Error - runSpinSequence failed! There is no opened machine!")
	end

	-- asign default value to buttonName
	-- assign default value 'true' to assertBalance
	--if (assertBalance == nil) then
	--  assertBalance = true
	--end

	IntegrationTests.clearEvent("BALANCE_UPDATED")
	local balanceBefore = Users.myBalance()

	pressButtonWrapper(sceneName, buttonName)

	-- casacasino case
	-- pressButtonWrapper(machineScene, "m_spinBtn")
	--end

	-- get total bet
	local result = waitForEventWrapper("BALANCE_UPDATED")

    -- LOG_INFO("printing result table:")
    -- recursive_log(result)

	local balanceVerUpdated = PROTECTED_RETRIEVE(result, 'balanceVerUpdated')
	local balanceVersion = PROTECTED_RETRIEVE(result, 'balanceVersion')

    -- LOG_INFO("balanceVerUpdated: " .. tostring(balanceVerUpdated))
    -- LOG_INFO("balanceVersion: " .. tostring(balanceVersion))

	-- if we got a blanace_update with a balanceVerUpdated false (as string!) - this is the extra balance update that we know we get (See function documnetation). we know we need to wait for another balance update
	if balanceVerUpdated=="false" and tostring(balanceVersion)~="-1" then
		LOG_INFO("got a balance update event with flag 'balanceVerUpdated' false. waiting for another balance update event..")
		result = waitForEventWrapper("BALANCE_UPDATED")
	end

	local balanceAfterDecreasedBet = PROTECTED_RETRIEVE(result, 'newBlanace')

    ------------------------------------------------
    ------------------------------------------------
    ------------------------------------------------
    -- wait for SPIN_ENDED event
	local spinresult = waitForEventWrapper("SPIN_ENDED")
	local chipsWon = PROTECTED_RETRIEVE(spinresult, 'chipsWon')
	local totalBet = PROTECTED_RETRIEVE(spinresult, 'totalBet')
	local levelUp = PROTECTED_RETRIEVE(spinresult, 'levelUp')
	local bonusCoins = PROTECTED_RETRIEVE(spinresult, 'bonusCoins')
	local levelTimeReward = PROTECTED_RETRIEVE(spinresult, 'levelTimeReward')

	-- protect this field until we update slots 2.0 in server
	if (bonusCoins == nil) then
		LOG_INFO("Problem - didn't get bonusCoins field")
		bonusCoins = "0"
	end

    -- check totalBet
    if (expectedTotalBet ~= nil) then
        ASSERT(tonumber(totalBet) == tonumber(expectedTotalBet), "totalBet doesn't equal expectedBonus")
    end

	-- check expectedBonus
	if (expectedBonus ~= nil) then
		if (bonusCoins ~= nil) then
			ASSERT(tonumber(bonusCoins) == tonumber(expectedBonus), "bonusCoins doesn't equal expectedBonus")
		else
			LOG_ERROR("expectedBonus is not nil, but bonusCoins is nil")
		end
	end

    -- wait for another BALANCE_UPDATE event
	LOG_INFO("waiting for another balance_update...")
	result = waitForEventWrapper("BALANCE_UPDATED")
	local finalBalance = PROTECTED_RETRIEVE(result, 'newBlanace')

	LOG_INFO("=======================  balanceBefore: " .. balanceBefore)
	LOG_INFO("=======================  chipsWon is: " .. chipsWon)
	LOG_INFO("=======================  bonusCoins is: " .. bonusCoins)
	LOG_INFO("=======================  totalBet is: " .. totalBet)
	LOG_INFO("=======================  balanceAfterDecreasedBet: " .. tostring(balanceAfterDecreasedBet))
	LOG_INFO("=======================  finalBalance: " .. tostring(finalBalance))

	if (assertBalance == true) then
		-- check totalbet
		local diff = math.abs(tonumber(balanceBefore) - tonumber(totalBet) - tonumber(balanceAfterDecreasedBet))
		ASSERT(diff<=2, "ASSERT FAILED. total bet calculation went wrong. diff is: " .. tostring(diff))

		-- check final balance
		diff = math.abs(tonumber(balanceBefore) + tonumber(chipsWon) + tonumber(bonusCoins) - tonumber(totalBet) - tonumber(finalBalance))
		ASSERT(diff<=2, "ASSERT FAILED. final balance calculation went wrong. diff is: " .. tostring(diff))
		LOG_INFO("Balance updated successfully!")
	end

	spinresult["finalBalance"] = finalBalance
	spinresult["balanceAfterDecreasedBet"] = balanceAfterDecreasedBet
	return spinresult
end


--[[ checkButtonIsActive
-- @brief Checks if the button is actually an active button in the provided scene
-- @param [string|table] scene - the scene name or its instance
-- @param [string] buttonId - the button id
-- @return [boolean] true/false if the button is active
--]]
function checkButtonIsActive(scene, buttonId)
	local found = false

	local buttons = getActiveButtonsWrapper(scene)
	if (buttons) then
		for i,v in ipairs(buttons) do
			if (v:id() == buttonId) then
				LOG_INFO("found button '" .. tostring(buttonId) .. "'!")
				found = true
				break
			end
		end
	end

	return found
end

--[[ pressButtonWrapper
-- @brief Presses on a button in scene. Checks if the button is actually an active button - if not, fails the test.
-- @param [string|table] scene - the scene, or its instance.
-- @param [string|table] button - the button. can send either the button id (as string, for example: "m_spinBtn") or the button instance.
--]]
function pressButtonWrapper(scene, button)
	LOG_INFO("pressButtonWrapper. scene: " .. tostring(scene) .. " button: " .. tostring(button))
	if (button == nil) then
		LOG_ERROR("can't press on a nil button")
		do return end
	end

	if (scene == nil) then
		LOG_ERROR("can't press on a nil scene")
		do return end
	end

	local id
	if (type(button) == "string") then
		--LOG_INFO("button is string")
		id = button
	else
		--LOG_INFO("button is table")
		ASSERT(type(button) == "table", "ASSERT(type(button) == 'table') Failed!")
		id = button:id()
	end

---- make sure the button is active
--  local res = checkButtonIsActive(scene, id)
--  if (res == false) then
--    LOG_ERROR("Error - button '" .. tostring(id) .. "' is not active in the scene.")
--  end

	LOG_INFO("..before pressing button '" .. id .. "'.") -- TODO : convert id() to something like string()
	GameScene.pressButton(scene, button) -- cals lua_GameScene.cpp / pressButton
	LOG_INFO( "after pressing button '" .. id .. "'.")
end

--[[ isTimeRewardReady
-- @brief Checks if there is a bunos time reward available
-- @param none
-- @return [boolean] true/false if time reward ready
--]]
function isTimeRewardReady()
	return GameFrame.isTimeRewardReady()
end

--[[ clearGamesButtonEvents
-- @brief Clears games button related events from events map.
-- @param none
-- @return none
--]]
function clearGamesButtonEvents()
	IntegrationTests.clearEvent("GAMES_BUTTON_DISPLAYED")
	IntegrationTests.clearEvent("GAMES_BUTTON_HIDDEN")
end

--[[ pressButtonInsideEntity -
--  presses a button when the button is inside an entity.
--  @param [string] sceneId
--  @param [string] entityId
--  @param [string] buttonId
--]]
function pressButtonInsideEntity(sceneId, entityId, buttonId)
    LOG_INFO("pressButtonInsideEntity sceneId=" .. sceneId .. " entityId=" .. entityId .. " buttonId=" .. buttonId)
    local sceneEnt = GameScene.getSceneById(sceneId)
    ASSERT(sceneEnt~=nil, "ASSERT FAILED. sceneEnt==nil!")
    local entity = sceneEnt:get(entityId)
    ASSERT(entity~=nil, "ASSERT FAILED. entity==nil!")
    pressButtonWrapper(entity, buttonId)
end


function clickGamesMenuWrapper(machineStr)
	LOG_INFO("Going to click game menu button: " ..tostring(machineStr))
	waitForEventWrapper("GAMES_MENU_DISPLAYED")
	pressButtonInsideEntity("GamesMenu", machineStr, "gameButton")
end

function pickASeat(seatNum)
  seatNum = seatNum or 1
  ------------------------------------>> PICK A SEAT <<------------------------------------
  --[[
    Function starting point is right after click on game button in clickGameMenu()
  ]]
  LOG_INFO("Started pickASeat() function")
  waitForEventWrapper("GAMES_MENU_HIDDEN")
  waitForEventWrapper("PICK_A_SEAT")
  
  activeButtons = getActiveButtonsWrapper("PickASeat")
  button=activeButtons[seatNum]
  LOG_INFO("button name: '" .. button:id() .. "'.") -- GameEntity
  ASSERT(button:id() == "arrowBtn", "ASSERT(button:id() == arrowBtn) Failed.")
  pressButtonWrapper("PickASeat", activeButtons[seatNum])
  
  ------------------------------------>> WAIT FOR MACHINE LOADED <<------------------------------------
  waitForEventWrapper("GAME_DISPLAYED")
  LOG_INFO("Completed pickASeat() function")
end

--[[
-- @brief this function enters Venue by clicked on the casino button on portal.
-- the venue that will be entered is the one currently presented in the portal.
-- It is to be placed after login() has completed
-- ]]
function enterVenue()
  LOG_INFO("Started enterVenue() function")
  pressButtonInsideEntity("smart_lobby_paginator", "casino", "button")

  --[[
  --This clause needs a solution for handling CDS
  --currently every cds change can break tests
  --waitForEventWrapper("POPUP_DISPLAYED")
  --pressButtonWrapper("SpecialDeal","closeBtn")
  ]]

  waitForEventWrapper("PORTAL_HIDDEN")
  LOG_INFO("Completed enterVenue() function")

  logPerformanceDetails("env")
 end

