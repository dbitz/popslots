--TmpUserProfileFile.lua
bindModule("PlatformAppData")
bindModule("Events")
bindModule("ScriptController")
bindModule("Timer")
bindModule("Avatar")
bindModule("SlotsGame")
bindModule("Users")
bindModule("UserProfile")
bindModule("PlatformAppData")
bindModule("SmartAsset")
bindModule("ShakerEngine")
bindModule("Analytics")
bindModule("DownloadManager")

--[[
-- TODO:
-- 3. don't set the profile pic in setParams ? (its all states entity. can do it once).
-- 0. use a high-res picture? do it only when opening big profile (when closing big profile no need to load it again).
-- 0. remove setTypeState after floaters uploaded.
-- 1. maybe remove the userProfileEventdispatcher ?
-- 1. change prints to LOG.
-- 2. refactor "isMedBoundries" to using that event shnel showed me.
--5. time of show?
--]]

------------------------------------------------------------------------------------------------------------------------
---                                                   Consts                                                         ---
------------------------------------------------------------------------------------------------------------------------

local SCENE_POPUP_LAYER = "kScenePopupLayer"

local SCENE_FILE = "userProfile.scene"
local MY_CLASS_NAME = "TmpUserProfile"
local BUBBLE_TEMPLATE_NAME = "BubbleTemplate"

-- Events
local USER_PROFILE_EVENT = "USER_PROFILE_EVENT"
local SHOW_TREAT_EVENT = "TreatsManager_showingTreat"  -- this event is fired whenever a ballooon is shared
local SHAKER_SERVER_ACTIVITY_UPDATE_EVENT = "shaker_server_activity_update_event"
local SLOTS_JOINED_EVENT = "SLOTS_JOINED_EVENT"
local MACHINE_OPENED = "EVENT_GAME_DISPLAYED"
local EVENT_GAME_UI_HIDE_STARTED  = "EVENT_GAME_UI_HIDE_STARTED"

-- Types
local TYPE_AVATAR_CLICKED = "avatarClicked"
local TYPE_SHARED_BALLOONS = "sharedBalloons"

-- Prefix
local PREFIX_BIG = "big"
local PREFIX_MED = "med"

-- States
local MED_OPEN = PREFIX_MED .. "Open"
local MED_CLOSE = PREFIX_MED .. "Close"
local BIG_OPEN = PREFIX_BIG .. "Open"
local BIG_CLOSE = PREFIX_BIG .. "Close"

-- FLA entity id's
local FLA_FLAG_PIC_HOLDER_ID = "flagPicHolder"
local FLA_PROFILE_PIC_HOLDER_ID = "profilePicHolder"
local FLA_LEVEL_NUMBER_TXT_MC = "levelNumberTXTMC"
local FLA_NAME_TXT_MC = "nameTXTMC"
local FLA_TYPES_MC = "typesMC"
local FLA_INNER_PIC_ENTITY_ID = "innerPicEntity"
local FLA_SIZE_ITEM_CONTAINER_NAME = "medSizeItemContainerEnt"
local FLA_LEVEL_TXT_MC = "levelTXTMC"
local FLA_COUNTRY_TXT_MC = "countryTXTMC"
local FLA_USA_STATE_TXT_MC = "usaStateTXTMC"
local FLA_RECORD_TXT_MC = "recordTXTMC"
local FLA_ZODIAC_TXT_MC = "zodiacTXTMC"
local FLA_ZODIACS_MAIN_ENTITY_NAME = "zodiacsMainEntity"
local FLA_OPEN_PROFILE_SOUND_ID = "POP_UserProfileOpen"
local FLA_CLOSE_PROFILE_SOUND_ID = "POP_UserProfileClose"

local FLA_LEVEL_LABEL_TXT = "levelLabelTXT"
local FLA_COUNTRY_LABEL_TXT = "countryLabelTXT"
local FLA_ZODIAC_LABEL_TXT = "zodiacLabelTXT"
local FLA_RECORD_LABEL_TXT = "recordLabelTXT"

local PROFILE_LABEL_LEVEL = "LEVEL"
local PROFILE_LABEL_LOCATION = "LOCATION"
local PROFILE_LABEL_ZODIAC = "ZODIAC"
local PROFILE_LABEL_TOP_WIN = "TOP WIN"

-- timer consts (in seconds)
local DURATION_MED_PROFILE = 3
local DURATION_BIG_PROFILE = 8

local TOUCH_DOWN_EVENT_NUM = 0

-- zodiac consts
local ZODIAC_NAMES = { "N/A", "Capricorn", "Aquarius", "Pisces", "Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio",  "Sagittarius" }

-- Analytics
local BI_CLICK_FROM_MEDIUM = "medium"
local BI_CLICK_FROM_IDLE = "idle"
local BI_FEATURE_NAME = "profile"
local BI_CONTEXT_NAME = "profile"
local BI_ACTION_NAME = "openProfile"

------------------------------------------------------------------------------------------------------------------------
---                                         class basic implementation and init                                      ---
------------------------------------------------------------------------------------------------------------------------

TmpUserProfile = classes.class()

-- initializing all params and members
function TmpUserProfile:init(initParamsTable)
	print("init")
	--self.this = initParamsTable.this

	-- members that are used to creating the scene
	self.sceneResPath = initParamsTable.assetUrl
	self.sceneFile = SCENE_FILE
	self.formFactor = PlatformAppData.getGraphicFormFactor()
	self.myName = MY_CLASS_NAME
	self.listenerId = self.myName
	self.profileBlocked = false

	-- when a user sits on a machine - he is in active mode, until he leaves the machine.
	self.isActiveMode = false

	-- currUP will hold any relevant data for a currnetly-presented user profile, including the entity itself.
	-- we don't want to keep some self.avatar because the avatar can disconnect any moment during the animation and stuff. we will re-find it using the id.
	self.currUP =
	{
		entity = nil,   -- the entity itself
		prefix = nil,   -- the prefix. Indicated the state of the element. Values can be ["big", "med"], big is for a big opened state ("bigOpen"), and med is for the medium one ("medOpen").
		timer = nil,    -- timer to display the entities
		userId = nil,   -- the current user Id of the profile we present.
		currMedType = nil, -- Relevant only to med-profile. the current type of the USER_PROFILE_EVENT that we recieved. Values: ["userJoined", "bigWin", "megaWin"] .
		textFieldsParams = nil, -- params to fill text fields. needed values: "userName", "userLevel", "userCountry". (in med state we only present userName and userLevel).
		playingCloseAnim = false
	}

	-- TreatsManager_showTreat
	self:loadScene()
end

function TmpUserProfile:registerEventListeners()
	Events.listenTo(MACHINE_OPENED, self, self.startActiveMode, self.listenerId)
end

function TmpUserProfile:removeEventListeners()
	Events.removeEventListener(MACHINE_OPENED, self.listenerId)
end

function TmpUserProfile:registerEventListenersForActiveState()

	Events.listenTo("FULLSCREEN_TOUCH_EVENT", self, self.onTouchEvent, self.listenerId)
	Events.listenTo(USER_PROFILE_EVENT, self, self.onUserProfileEvent, self.listenerId)
	Events.listenTo(SHAKER_SERVER_ACTIVITY_UPDATE_EVENT, self, self.onServerActivityUpdate, self.listenerId)

	Events.listenTo("SLOTS_WIN_CALLOUT_EVENT", self, self.onWinCallout, self.listenerId)
	Events.listenTo("SHOW_FSM_PICKER_PROFILE", self, self.onShowFSMPicker, self.listenerId)
	
	Events.listenTo(SLOTS_JOINED_EVENT, self, self.onJoined, self.listenerId)
	Events.listenTo(SHOW_TREAT_EVENT, self, self.onShowTreatEvent, self.listenerId)
	Events.listenTo(EVENT_GAME_UI_HIDE_STARTED, self, self.onGameUIHideStarted, self.listenerId)

	Events.listenTo("MY_BALLOON_DISAPPEARS", self, self.onMyBalloonDisappears, self.listenerId)
	Events.listenTo("MY_BALLOON_APPEARS", self, self.onMyBalloonAppears, self.listenerId)

	Events.listenTo("BLOCK_USER_PROFILE", self, self.onBlockUserProfile, self.listenerId)
	Events.listenTo("UNBLOCK_USER_PROFILE", self, self.onUnBlockUserProfile, self.listenerId)
	Events.listenTo("FORCE_CLOSE_USER_PROFILE", self, self.freeCurrEntityAfterClosed, self.listenerId)
	
	--this launches the picker
	-------
	--Events.dispatch("SHOW_FSM_PICKER_PROFILE", {type="picker" })
	-------
end

function TmpUserProfile:removeEventListenersForActiveState()
	Events.removeEventListener("FULLSCREEN_TOUCH_EVENT", self.listenerId)
	Events.removeEventListener(USER_PROFILE_EVENT, self.listenerId)
	Events.removeEventListener(SHOW_TREAT_EVENT, self.listenerId)
	Events.removeEventListener(SHAKER_SERVER_ACTIVITY_UPDATE_EVENT, self.listenerId)
	
	Events.removeEventListener("SHOW_FSM_PICKER_PROFILE", self.listenerId)
	Events.removeEventListener("SLOTS_WIN_CALLOUT_EVENT", self.listenerId)
	Events.removeEventListener(SLOTS_JOINED_EVENT, self.listenerId)
	Events.removeEventListener(SHOW_TREAT_EVENT, self.listenerId)
	Events.removeEventListener(EVENT_GAME_UI_HIDE_STARTED, self.listenerId)

	Events.removeEventListener("MY_BALLOON_DISAPPEARS", self.listenerId)
	Events.removeEventListener("MY_BALLOON_APPEARS", self.listenerId)
	
	Events.removeEventListener("BLOCK_USER_PROFILE", self.listenerId)
	Events.removeEventListener("UNBLOCK_USER_PROFILE", self.listenerId)
	Events.removeEventListener("FORCE_CLOSE_USER_PROFILE", self.listenerId)
end

--if i passed in "removeClickListener" then i will also remove the touch event listener which will disable all possible user profile events.
--otherwise, clicking on a user profile will open up the profile
function TmpUserProfile:onBlockUserProfile(event)
	--print("[DEBUG] onMyBalloonAppears")
	
	if (event.removeClickListener == true) then
		Events.removeEventListener("FULLSCREEN_TOUCH_EVENT", self.listenerId)
	end

	self.profileBlocked = true
end

function TmpUserProfile:onUnBlockUserProfile(event)
	Events.listenTo("FULLSCREEN_TOUCH_EVENT", self, self.onTouchEvent, self.listenerId)
	--print("[DEBUG] onMyBalloonDisappears. reason=" ..tostring(event.reason))
	self.profileBlocked = false
end


--------the balloon functions are old and need to be deprecated in the next released version of the balloons-------
function TmpUserProfile:onMyBalloonAppears(event)
	--print("[DEBUG] onMyBalloonAppears")
	Events.removeEventListener("FULLSCREEN_TOUCH_EVENT", self.listenerId)
	self.profileBlocked = true
end

function TmpUserProfile:onMyBalloonDisappears(event)
	Events.listenTo("FULLSCREEN_TOUCH_EVENT", self, self.onTouchEvent, self.listenerId)
	--print("[DEBUG] onMyBalloonDisappears. reason=" ..tostring(event.reason))
	self.profileBlocked = false
end
-----------------------------------------------------

function TmpUserProfile:destroy()
	print("destroy")
	self:removeEventListeners()
	GameScene.removeFromManager(self.scene)
	self.scene = nil
end

function TmpUserProfile:reset()
	print("reset")
end


------------------------------------------------------------------------------------------------------------------------
---                                                   Scene loading                                                      ---
------------------------------------------------------------------------------------------------------------------------


function TmpUserProfile:loadScene()
	print("loadScene")
	self.scene = GameScene.createFromFileAsync(self.sceneFile, self.sceneResPath, self, self.onSceneLoaded, self.listenerId.."scene", false, false, self.myName, self.formFactor)
end

function TmpUserProfile:onSceneLoaded()
	print("onSceneLoaded")

	-- register all event listeners
	self:registerEventListeners()

	-- add to scene manager
	GameScene.addToManager(self.scene, SCENE_POPUP_LAYER)
	self.scene:preloadSounds(true)
end


------------------------------------------------------------------------------------------------------------------------
---                                             Outter Events Callbacks                                              ---
------------------------------------------------------------------------------------------------------------------------

--[[ onGameUIHideStarted -
-- on big machine - when changing camera to machine - hide profile.
--]]
function TmpUserProfile:onGameUIHideStarted(event)
	print("closing entity as a result of game ui hide")
	self:playClose()
end

--[[ we  end active mode when we left the machine
-- when not active mode - we don't want to keep listening to all touch in screen, etc..
--]]
function TmpUserProfile:endActiveMode()
	print("active mode ended")
	self.isActiveMode = false
	self:removeEventListenersForActiveState()
	self:playClose()
end

--[[ we start active mode when we sit on a machine.
-- when in active mode - we listen to all clicks and server activities, to know how to handle the user profile
--]]
function TmpUserProfile:startActiveMode()
	print("starting active mode..")
	self.isActiveMode = true
	self:registerEventListenersForActiveState()
	self.profileBlocked = false
end


--[[ onServerActivityUpdate -
-- when a user activity updates - check if the activity is really that user left machine. if yes - check if its id is the current shown user profile. if yes - close it.
--]]
function TmpUserProfile:onServerActivityUpdate(event)
	--for k,v in pairs(event) do print("key: " .. k .. ". value: " .. tostring(v)) end
	local userId = event.userId
	local activity = event.type
	--print("got params. userId: " .. tostring(userId) .. "activity: " , activity)

	-- if the user that left is myself - change my state (sittingOnMachine = false) , and remove event listeners
	if (self.isActiveMode == true) then
		if activity == "Standing" or activity == "userExit" then
			if Users.isMeByShakerId(userId) then
				self:endActiveMode()
			end
		end
	end

	-- if we are in active mode, and there is an opened entity - check if the user that left had a profile opened
	if (self.currUP.entity) then
		if userId == self.currUP.userId then
			if activity == "Standing" or activity == "userExit" then
				print("closing entity as a result of user left machine")
				self:playClose()
			end
		end
	end
end


--[[ onWinCallout-
-- This is callback to SLOTS event (NOT server).
-- from slots we get all the callouts of wins of MYSELF.
-- from the server we keep getting them for my neighbours.
--]]
function TmpUserProfile:onWinCallout(event)
	print("onWinCallout " .. tostring(event.type))
	if (event.type ~= "WIN1" and event.type ~= "WIN2" and event.type ~= "WIN3") then
		event.userId = Users.getMyShakerId()
		self:onUserProfileEvent(event)
	end
end

function TmpUserProfile:onShowFSMPicker(event)
	if (event.userId == nil)then
		event.userId = Users.getMyShakerId()
	end
	self:onUserProfileEvent(event)
end

function TmpUserProfile:onJoined(event)
	--print("[DEBUG] on user joined event")
	event.userId = Users.getMyShakerId()
	event.type = "userJoined"
	self:onUserProfileEvent(event)
end

-- when a user shared a balloon (even if its myself) we want to show the relavant user profile
function TmpUserProfile:onShowTreatEvent(event)
	--print("[DEBUG] onShowTreatEvent")

	-- add needed fields to the event and call the regular handler to user profile event
	event.userId = event.initiator.stringUserId
	event.type = TYPE_SHARED_BALLOONS
	self:onUserProfileEvent(event)
end

-- this works on touch down events.
-- this helps us with the situation when an avatarClicked (and then we get 2 events, the touch and the userProfile event). So the userProfile event of avatarClicked will happen on touch up.
-- touch always works! when blocking the user profile the click listener will still work unless explicitly told to remove the listener
-- it will always open the user profile with forceOpen = true
function TmpUserProfile:onTouchEvent(event)
	
	if event.type == TOUCH_DOWN_EVENT_NUM and self.isActiveMode == true then

		local x = event.pointX
		local y = event.pointY
		--local currentState = self.currUP.entity:getState()
		-- print("TmpUserProfile currentState is : " .. currentState)

		-- avatarClickedId will hold the id of the avatar that was clicked. nil if none.
		local avatarClickedId = ShakerEngine.hitTestMovingItems({ x = x, y = y })

        -- the conditions to medium profile enlargment are:
        -- 1. there is a med profile presented, and the click is in the medium profile bounderies.
        -- 2. there is a med profile presented, and the click is on the avatar who's medium profile is presented (even if the click is not in the med profile)
		local medProfileClicked = self.currUP.entity and self.currUP.entity:getState() == MED_OPEN and (self:isTouchInMedBoundries(self.currUP.entity, x, y) or self.currUP.userId == avatarClickedId)

        -- the conditions to invoke an avatarClickEvent (open big profile as a result of avatar clicked) are that:
        -- 1. the click is not enlragement of med profile (medProfileClicked is false)
        -- 2. the current presented big profile is not the same as the avatar that is clicked (in this case, only close it).
		local invokeAvatarClickedEvent = avatarClickedId and (not medProfileClicked) and (not (self.currUP.userId == avatarClickedId and self.currUP.entity:getState() == BIG_OPEN))

		if (self.currUP.entity) then
			print("onTouchEvent continuing..")

			-- there is an interuption. something gonna change. kill timer cause its not relavant anymore..
			self:clearTimer()

			-- if the entity that is opened is medium - check if the click is inside the med-profile borders and animate big if it is.
			if (medProfileClicked) then
				print("onTouchEvent - enlarging profile from med to big..")
				self.currUP.prefix = PREFIX_BIG
				self:playOpen(BI_CLICK_FROM_MEDIUM)
			elseif not invokeAvatarClickedEvent then
				print("closing entity as a result of touch event")
				-- if we are going to open the profile after closing the current one - don't play close sound
				self:playClose(true)
			end
        end

        if (invokeAvatarClickedEvent and not medProfileClicked) then
			print("onTouchEvent - clicked an avatar. userId is: " .. avatarClickedId)
			local newEvent = { }
			newEvent.type = TYPE_AVATAR_CLICKED
			newEvent.userId = avatarClickedId
			newEvent.forceOpen = true
			self:onUserProfileEvent(newEvent)
		end
	end
end

------------------------------------------------------------------------------------------------------------------------
---                                        Main interuptions events callbacks                                        ---
------------------------------------------------------------------------------------------------------------------------

--[[ isSittingOnMachine
--  @brief returns true if myself is sitting on a machine, and false otherwise
--]]
--function TmpUserProfile:isSittingOnMachine()
--  return SlotsGame.isActiveGame()
--end


function TmpUserProfile:onUserProfileEvent(event)
	
	if (self.profileBlocked == true and event.forceOpen ~= true) then
		return
	end
	
	-------------------------- parse event fields --------------------------
	local eventType = event.type
	local userId = event.userId
	print("onUserProfileEvent.  eventType: "  .. tostring(eventType) .. "  userId: " .. tostring(userId))

	local isMe = Users.isMeByShakerId(event.userId)
	-- notifyAll is false by default
	local notifyAll = event.notifyAll or false

	-------------------------- conditions checking --------------------------
	local shouldStartUP = self:shouldStartUserProfile(notifyAll, eventType, userId, isMe)
	--print("shouldStartUserProfile result: " .. tostring(shouldStartUP))
	if (shouldStartUP == false) then
		return
	end

	-- get pos of top-head of the avatar and convert with display scale
	local avatar = Avatar.get(event.userId)

	if (avatar == nil) then
		print("avatar is: nil !!")
		return
	end

	local pos = avatar:getTopHeadPosition()
	if (pos == nil) then
		print("top head position is nil !!")
		return
	end

	--print("top head position is (x,y) is: " .. tostring(pos.x) .. "," .. tostring(pos.y))

	-------------------------- handle the events --------------------------
	-- free any thing related to current entity.
	self:freeCurrEntityAfterClosed()

	-- entity creation
	-- first try to create the entity (because if it returns nil, we don't want to initialzie other fields of currUP)
	self.currUP.entity = self.scene:createEntity(BUBBLE_TEMPLATE_NAME);
	if (self.currUP.entity == nil) then
		print("error creating entity!")
		return
	end

	-- set the currUP params
	self.currUP.userId = userId
	self.currUP.isMe = isMe

	self.currUP.textFieldsParams = UserProfile.getTextFieldsParams(self.currUP.userId)
	self.currUP.currMedType = eventType

	-- set position
	self.currUP.entity:x(pos.x)
	self.currUP.entity:y(pos.y)

	-- check type and open in the correct state
	if (eventType == TYPE_AVATAR_CLICKED) then
		--print("setting prefix: big")
		self.currUP.prefix = PREFIX_BIG
	else
		--print("setting prefix: med")
		self.currUP.prefix = PREFIX_MED
	end
	-- play open
	self:playOpen(BI_CLICK_FROM_IDLE, eventType)
end



--[[ checks all conditions, and decides if to start user profile or not.
-- @param [bool] notifyAll
-- @param [string] event type
-- @param [string] userId
-- @param [bool] isMe
-- @return [bool] true/false if to start a user profile
--]]
function TmpUserProfile:shouldStartUserProfile(notifyAll, eventType, userId, isMe)
	local result = true

	-- in any case - don't show justJoined on myself.
	if (isMe) then
		-- if the avatar is myself, AND the event is userJoined event - return false.
		if (eventType == TYPE_USER_JOINED) then
			result = false
		end
	else
		-- if notifyAll - show the event
		if (notifyAll == true) then
			result = true
		else
			-- first check that i'm in a machine - otherwise return false
			if (self.isActiveMode == false) then
				result = false
			else
				-- make sure that the user is my neighbour
				if (Users.isUserInMyGroup(userId) == false) then
					result = false
				end
			end
		end
	end

	return result
end

------------------------------------------------------------------------------------------------------------------------
---                                                   all functions                                                      ---
------------------------------------------------------------------------------------------------------------------------



--[[ TmpUserProfile:playOpen
-- we are supposed to get here after self.currUp are properly initialized.
-- we still need to call setParams every time (also when enlarging a presented profile) because change of states.
-- @param [string] clickFrom - where did the open clicked from. medium profile, or idle.
--]]
function TmpUserProfile:playOpen(clickFrom, eventType)
	if (self.currUP.entity) then
		print("playOpen. state: ".. self.currUP.prefix.."Open")

		-- play sound in big mode only
		if self.currUP.prefix == PREFIX_BIG then
			self.scene:playSound(FLA_OPEN_PROFILE_SOUND_ID)
		end
		
		self:setSmallProfileVisibility(self.currUP.userId, false)
		
		self:createTimer(self.currUP.prefix)
		
		print("[DEBUG] playOpen setState: " .. self.currUP.prefix.."Open")
        self.currUP.entity:removeStateEndEventListener()
		self.currUP.entity:setState(self.currUP.prefix.."Open")
		self.currUP.entity:addStateEndEventListener(self, TmpUserProfile.onOpenStateAnimEnded)
		
		if(eventType ~= nil )then
			local msgEnt = self.currUP.entity:get("msgEnt")
			if(msgEnt)then
				if(msgEnt:hasState(eventType))then -- picker
					msgEnt:setState(eventType)
				end
			end
		end


		--print("setting user profile pic and flag")
		local data = Users.getData(self.currUP.userId)
		local hashedUrl = ""
		if (data) then
			local url = data.bigPicUrl
			hashedUrl = DownloadManager.hashResourceURL(url)
		end

		--print("trying to set pic holder with bundleid: " .. tostring(hashedUrl))
		if (hashedUrl) then
			self.currUP.entity:setPicHolderUserImage(FLA_PROFILE_PIC_HOLDER_ID , self.currUP.userId, "bundleId", hashedUrl)
		else
			self.currUP.entity:setPicHolderUserImage(FLA_PROFILE_PIC_HOLDER_ID , self.currUP.userId)
		end

		self.currUP.entity:setPicHolderUserImage(FLA_FLAG_PIC_HOLDER_ID , self.currUP.userId, "flag")

		print("[DEBUG] calling setParams from playOpen")
		self:setParams()

		-- send analytics(only if its a big profile)
		if self.currUP.prefix == PREFIX_BIG then
			self:reportProfileAnalytics(self.currUP.userId, clickFrom)
		end
	else
		print("playOpen. no valid living entity")
	end
end

-- we call setParams so we see the params during close animation
function TmpUserProfile:playClose(playSound)  
	if (self.currUP.entity) then
        if (not self.currUP.playingCloseAnim) then
            print("closing the entity.. state: " .. self.currUP.prefix .. "Close")

            -- playsound true by default
            if (playSound == nil) then
                playSound = true
            end

            -- dont play sound for medium profile
            if self.currUP.prefix == PREFIX_MED then
                playSound = false
            end

            self.currUP.playingCloseAnim = true
            print("[DEBUG] playClose setState: " .. self.currUP.prefix.."Close")
            self.currUP.entity:removeStateEndEventListener()
            self.currUP.entity:setState(self.currUP.prefix.."Close")
            self.currUP.entity:addStateEndEventListener(self, TmpUserProfile.onCloseStateAnimEnded)

            if (playSound) then
                self.scene:playSound(FLA_CLOSE_PROFILE_SOUND_ID)
            end

            print("[DEBUG] calling setParams from playClose")
            self:setParams()
        end
	else
		print("calling freeCurrEntityAfterClosed even though no entity alive")
		-- in any case - call free entity if not found an entity.
		self:freeCurrEntityAfterClosed()
	end
end



function TmpUserProfile:onCloseStateAnimEnded()
	print("onCloseStateAnimEnded")
    -- remove state end event listener will happen on freeCurrEntityAfterClosed
	self:freeCurrEntityAfterClosed()
end

function TmpUserProfile:onOpenStateAnimEnded()
	print("[DEBUG] onOpenStateAnimEnded")

	if (self.currUP.entity) then
		self.currUP.entity:removeStateEndEventListener()
	end
end


-- this function clears timer , restores profile pic to avatar and finally removes entity.
-- this funciton will be called after the entity closing animation was played.
function TmpUserProfile:freeCurrEntityAfterClosed()
	-- clear curr entity

    local logMsg = ""

	if (self.currUP.entity) then
        logMsg = logMsg .. "self.currUP.entity=" .. tostring(self.currUP.entity)
		self.currUP.entity:removeStateEndEventListener()
		self.scene:removeEntity(BUBBLE_TEMPLATE_NAME)
		self.currUP.entity = nil
	end

	-- set small profile back to visible
	if (self.currUP.userId) then
        logMsg = logMsg .. " self.currUP.userId=" .. tostring(self.currUP.userId)

		-- print("setting small profile visibility")
		self:setSmallProfileVisibility(self.currUP.userId, true)
	end

    print("[DEBUG] freeCurrEntityAfterClosed. " .. logMsg)

	self:clearTimer()

	-- reset fields
	self.currUP.entity = nil
	self.currUP.prefix = nil
	self.currUP.timer = nil
	self.currUP.userId = nil
	self.currUP.isMe = nil
	self.currUP.currMedType = nil
	self.currUP.textFieldsParams = nil
	self.currUP.playingCloseAnim = false

	print("[DEBUG] finished freeing user profile")
end

------------------------------------------------------------------------------------------------------------------------
---                                                   set params                                                     ---
------------------------------------------------------------------------------------------------------------------------

-- when the user we present is myself, we set a different frame for the picture.
function TmpUserProfile:setInnerFrame()
	local innerPicEnt = self.currUP.entity:get(FLA_INNER_PIC_ENTITY_ID)

	if (self.currUP.isMe == true) then
		print("[DEBUG] setInnerFrame setState: " .. "me")
		innerPicEnt:setState("me")
	else
		print("[DEBUG] setInnerFrame setState: " .. "other")
		innerPicEnt:setState("other")
	end
end


function TmpUserProfile:setZodiacStateAndTXT(zodiacFLANum)
	-- set zodiac state (add 1 to the zodiac num because its 0-index, and in the fla we started from 1)
	local zodiacNeededState = "z" .. tostring(zodiacFLANum)

	local zodiacStatesEnt = self.currUP.entity:get(FLA_ZODIACS_MAIN_ENTITY_NAME)
	if (zodiacStatesEnt) then
		zodiacStatesEnt:setState(zodiacNeededState)
	end

	local zodiacName = ZODIAC_NAMES[zodiacFLANum + 1] -- array in lua is 1numbered so we inc 1.
	self:setParamsAux(FLA_ZODIAC_TXT_MC, string.upper(zodiacName), 1)
end


function TmpUserProfile:setParamsAux(entName, value, charSpace)
    if (self.currUP.entity) then
        local ent = self.currUP.entity:get(entName);
		if (ent) then
			ent:setStringWithParams(value, true, charSpace)
		else
			print("MOF111!!! entName is: " .. tostring(entName));
		end
    end
end

-- this function set the params of the entity
-- sets also the inner frame.
function TmpUserProfile:setParams()
    print("setting params");
    if (self.currUP.entity) then
		local params = self.currUP.textFieldsParams

		-- set the userName as upper case
		self:setParamsAux(FLA_NAME_TXT_MC, string.upper(params.userName), 0)

		-- set inner frame
		self:setInnerFrame()

		-- if the profile is big right now, set param also for the country
		if (self.currUP.prefix == PREFIX_BIG) then
			-- const fields
			--self:setParamsAux(FLA_LEVEL_LABEL_TXT, PROFILE_LABEL_LEVEL, 0)
			self:setParamsAux(FLA_COUNTRY_LABEL_TXT, PROFILE_LABEL_LOCATION, 0)
			self:setParamsAux(FLA_ZODIAC_LABEL_TXT, PROFILE_LABEL_ZODIAC, 0)
			self:setParamsAux(FLA_RECORD_LABEL_TXT, PROFILE_LABEL_TOP_WIN, 0)

			--if a usa state exists - set the USAState text field also
			if (string.len(params.userUSAState) > 0) then
				params.userCountry = params.userUSAState
			end

			-- set the country as upper case
			self:setParamsAux(FLA_COUNTRY_TXT_MC, string.upper(params.userCountry), 1)
			self:setParamsAux(FLA_RECORD_TXT_MC, string.upper(params.userRecord), 1)
			--self:setParamsAux(FLA_LEVEL_TXT_MC, string.upper("Keep Going!"), 1)
			self:setParamsAux(FLA_LEVEL_NUMBER_TXT_MC, string.upper(params.userLevel), -1)

			self:setZodiacStateAndTXT(params.userZodiac)

			-- if the user profile is med - handle the type of the event
		elseif (self.currUP.prefix == PREFIX_MED) then
			--self:setTypeState()

			-- if the user profile is not one of the types above, we got an error.
		else
			print("Error. prefix is not a legitimate value.")
		end
    else
        print("[ERROR] we tried to setParams() on a nil entity..")
    end
end

------------------------------------------------------------------------------------------------------------------------
---                                                       Timer                                                      ---
------------------------------------------------------------------------------------------------------------------------

function TmpUserProfile:clearTimer()
	if (self.currUP.timer) then
		--print("clearing existing timer..")
		self.currUP.timer:kill()
		self.currUP.timer = nil
	end
end

function TmpUserProfile:createTimer(prefixState)
	self:clearTimer()
	local time

	if (prefixState == PREFIX_MED) then
		time = DURATION_MED_PROFILE
	else
		time = DURATION_BIG_PROFILE
	end

	--print("createTimer with time duration " .. tostring(time))
	self.currUP.timer = Timer.createTimer(time, 1, self, self.onTimerEnded)
end

function TmpUserProfile:onTimerEnded()
	--print("onTimerEnded")
	self.currUP.timer = nil

	if (self.currUP.entity) then
		print("closing entity as a result of timer ended")
		self:playClose()
	end
end

------------------------------------------------------------------------------------------------------------------------
---                                                       Utils                                                      ---
------------------------------------------------------------------------------------------------------------------------

--[[ reportUserProfileAnalytics -
-- @param targetAgoraId - the userId we gonna show porfile for.
-- @param clickFrom - where did the profile clicked from. medium profile or idle state.
--]]
function TmpUserProfile:reportProfileAnalytics(targetAgoraId, clickFrom)
	local targetSonId = Users.getSonIdByAgoraId(targetAgoraId)
	clickFrom = clickFrom or ""

	Analytics.reportAnalytics(
		BI_FEATURE_NAME,
		BI_CONTEXT_NAME,
		BI_ACTION_NAME,
		{ balance=Analytics.getBalance(), 
			xp=Analytics.getXP(),
			casinoLevel=Analytics.getCasinoLevel(),
			gameBrand=Analytics.getGameBrand(),
			targetSonId = targetSonId, 
			clickFrom = clickFrom
		})
end

-- return boolean true or false, if click is in the boundaries of the medium entity.
function TmpUserProfile:isTouchInMedBoundries(entity, touchX, touchY)
	--print("isTouchInMedBoundries")
	local result = false

	if (entity) then
		--print("in entity")
		local sizeItemContainer = entity:get(FLA_SIZE_ITEM_CONTAINER_NAME)

		-- the size item container will exist only in medOpen state.
		local sizeItem = nil

		if (sizeItemContainer) then
			--print("found sizeItemContainer")
			sizeItem = sizeItemContainer:size()
		else
			print("error! didn't find sizeItemContainer")
		end

		if (sizeItem) then

			--print("found size item. width: " .. tostring(sizeItem.w) .. "height: " .. tostring(sizeItem.h))
			-- convert to absolute position
			local displayScale = PlatformAppData.getDisplayScale()
			local elementXAbs = entity:x() * displayScale.y
			local elementYAbs = entity:y() * displayScale.x
			local elementHAbs = sizeItem.h * displayScale.y
			local elementWAbs = sizeItem.w * displayScale.x
			if ( ( touchY <= elementYAbs) and (touchY >= elementYAbs-elementHAbs) ) then
				if ( ( touchX >= elementXAbs - elementWAbs/2 ) and ( touchX <= elementXAbs + elementWAbs/2 ) ) then
					--print("got a touch inside medprofile rect")
					result = true
				end
			end
		end
	end

	return result
end

-- finds the avatar by user id, and sets its profile pic visibility
function TmpUserProfile:setSmallProfileVisibility(userId, value)
	if (userId) then
		local avatar = Avatar.get(userId)
		if (avatar) then
			--print("setSmallProfileVisibility found avatar. userId=" .. tostring(userId) .. " value=" .. tostring(value))
			avatar:setProfilePicVisibility(value)
		end
	end
end



------------------------------------------------------------------------------------------------------------------------
---                                                                                                                  ---
------------------------------------------------------------------------------------------------------------------------


return TmpUserProfile
