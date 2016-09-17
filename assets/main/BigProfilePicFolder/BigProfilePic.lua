--BigProfilePic.lua
bindModule("Events")
bindModule("Users")
bindModule("ShakerEngine")
bindModule("SlotsGame")

BigProfilePic = classes.class()

local lruResourcesService = require("LRUResourcesService")

------------------------------------------------------------------------------------------------------------------------
---                                                    consts                                                        ---
------------------------------------------------------------------------------------------------------------------------
local PROFILE_BIG_PIC_CLASS = "BigProfilePic"

-- LRU
local BIG_PROFILE_LOCAL_CACHE_LRU = "BIG_PROFILE_LRU"
local BIG_PROFILES_TOPIC = "BIG_PROFILES"
local DEFAULT_CLEAR_PERCENTAGE = 10
local DEFAULT_MAX_LRU_SIZE = 200

-- Events
local USER_PROFILE_TYPE_USER_JOINED = "userJoined"
local USER_PROFILE_EVENT = "USER_PROFILE_EVENT"
local AVATAR_SET_EVENT = "CShakerAvatarHandler_avatar_set_event";
local MACHINE_OPENED = "EVENT_GAME_DISPLAYED"


------------------------------------------------------------------------------------------------------------------------
---                                                     init                                                        ---
------------------------------------------------------------------------------------------------------------------------


function BigProfilePic:init(initParamsTable)
	-- for k,v in pairs(initParamsTable.params) do print("key:  " .. k .. ".  value: " .. tostring(v)) end
	--  self.listenerId = initParamsTable.name
	self.listenerId = initParamsTable.scriptName
	self.myShakerId = nil

	if (lruResourcesService) then
		lruResourcesService:initLRU(DEFAULT_MAX_LRU_SIZE, DEFAULT_CLEAR_PERCENTAGE, BIG_PROFILE_LOCAL_CACHE_LRU, BIG_PROFILES_TOPIC)
	end

	-- register event listeners
	self:registerEventListeners()
end


function BigProfilePic:destroy()
	print("BigProfilePic:destroy")
	self:removeEventListeners()

	if (lruResourcesService) then
		lruResourcesService:releaseLRU()
	end
end


------------------------------------------------------------------------------------------------------------------------
---                                                   events                                                     ---
------------------------------------------------------------------------------------------------------------------------

function BigProfilePic:registerEventListeners()
	Events.listenTo(USER_PROFILE_EVENT, self, self.onUserProfileEvent, self.listenerId)
	Events.listenTo(AVATAR_SET_EVENT, self, self.onAvatarSet, self.listenerId)
	Events.listenTo(MACHINE_OPENED, self, self.onMachineOpened, self.listenerId)
end

function BigProfilePic:removeEventListeners()
	Events.removeEventListener(USER_PROFILE_EVENT, self.listenerId)
	Events.removeEventListener(MACHINE_OPENED, self.listenerId)
end

--[[  onAvatarSet event
-- When i connect to the env - download my profile pic. we only need to do it once, on the first env we join.
--]]
function BigProfilePic:onAvatarSet(event)
	print("BigProfilePic:onAvatarSet")
	Events.removeEventListener(AVATAR_SET_EVENT, self.listenerId)

	if not self.myShakerId then
		self.myShakerId = Users.getMyShakerId()
	end

	-- download pic for myself on init
	self:downloadPic(self.myShakerId)
end

--[[ onMachineOpened event
-- when I open a machine - download pics for all the sittings users.
--]]
function BigProfilePic:onMachineOpened(event)
	print("onMachineOpened") 
	local activeGroup = ShakerEngine.getActiveGroupUsers()
	if (activeGroup) then
		for k,v in pairs(activeGroup) do 
			-- don't download for myself
			if (v ~= self.myShakerId) then
				self:downloadPic(v)
			end
		end
	else
		print("active group returned nil")
	end
end

--[[ onUserJoinedEvent event
-- when a user joins my active group - download pic for that user.
--]]
function BigProfilePic:onUserProfileEvent(event)
	local eventType = event.type

	-- for k,v in pairs(initParamsTable.params) do print("key:  " .. k .. ".  value: " .. tostring(v)) end
	local userId = event.userId

	if eventType == USER_PROFILE_TYPE_USER_JOINED then

		-- check if a user is joining my group. if yes - send request to download its profile pic.
		-- if not - check if myself has joined a group. if yes -
		if userId ~= self.myShakerId then
			local isActiveGame = SlotsGame.isActiveGame()
			local neighbour = Users.isUserInMyGroup(userId)
			print("activitiy userJoined. userid:" .. tostring(userId) .. "isActiveGame: " .. tostring(isActiveGame) .. " neighbour: " , tostring(neighbour))

			if isActiveGame and neighbour then
				self:downloadPic(userId)
			end
		end
	end
end

--[[ downloadPic - 
-- @brief gets the big profile url for a user, and calls LRU manager to download it.
-- @param [string] userId - userId to download big pic for 
--]]
function BigProfilePic:downloadPic(userId)
	print("BigProfilePic:downloadPic userId=" .. tostring(userId))

	local userData = Users.getData(userId)
	if (userData) then
		local url = userData.bigPicUrl
		if (url) then
			if (lruResourcesService) then
				lruResourcesService:downloadResource(url)
			end

		else
			print("Error downloading pic. userData bigPicUrl is nil")
		end
	else
		print("Error downloading pic. getting data for userId returned nil")
	end
end


return BigProfilePic
