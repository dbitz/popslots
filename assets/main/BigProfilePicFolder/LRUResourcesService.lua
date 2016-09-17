print("in LRUResourcesService.lua")

bindModule("LRU")
bindModule("DownloadManager")
bindModule("LocalCache")

local LRUResourcesService = classes.class()


--[[ initLRU - inits the LRU component.
-- Algotirhm:
--      1. creats an instance of LRU class.
--      2. reads from cache the existing LRU.
--      3. de-serializes it in the lru (Which also inserts it to the lru)
-- @params
-- [number] maxSize - max size of LRU
-- [number] clearPercentage - the percentage to clear when the lru gets full
-- [string] localCacheKey - the key of the LRU local cache of the feature.
-- [string] cacheTopic - the topic to download to
--]]
function LRUResourcesService:initLRU(maxSize, clearPercentage, localCacheKey, cacheTopic)
	print("LRUResourcesService:initLRU maxSize=" .. tostring(maxSize) .. " clearPercentage=" .. tostring(clearPercentage) .. " localCacheKey=" .. tostring(localCacheKey) .. " cacheTopic=" .. tostring(cacheTopic))
	
	-- get parameters
	self.lruMaxSize = maxSize
	self.clearPercentage = clearPercentage
	self.localCacheKey = localCacheKey
	self.cacheTopic = cacheTopic

	-- create lru instance
	self.lru = LRU.createInstance(self.lruMaxSize, self.clearPercentage)
	--LocalCache.clearLocalCache(self.localCacheKey)

	-- read from local cache
	local buf = LocalCache.readFromLocalCache(self.localCacheKey)
	print("lru buf read from local cache is: " .. tostring(buf))
	
	if (buf) then
		self.lru:fromString(buf)
	end
end


function LRUResourcesService:init(params)
	print("LRUResourcesService:init")

	self.context = params.context
end


function LRUResourcesService:releaseLRU()
	print("LRUResourcesService:releaseLRU")
	if (self.lru) then
		LRU.release(self.lru)
	end
end


--[[ updateLRU -
--LRU holds all bundleIds.
-- 1. Updating LRU means to add a new value to the LRU.
-- 2. in case the LRU exeecds its max size, as a result of that new insert, LRU will clean a cetrain percentage of its contents.
-- the keys that were cleaned will be returned in a dictionary that holds all the items that were removed from LRU.
-- 3. All those items should now be deleted from the bundle directory in cache (this is the final purpose of working with the LRU that way.)
-- 4. finally, serialize the new LRU and write it to local cache, as it was just changed.
--]]
function LRUResourcesService:updateLRU(key)
	print("LRUResourcesService:updateLRU key=" .. tostring(key))
	local itemsToDelete = self.lru:put(key)

	if (itemsToDelete) then
		print("Got items to delete in LUA. num of items: " .. tostring(#itemsToDelete))
		for k,v in pairs(itemsToDelete) do
			print(">> deleting item key: " .. k .. " value: " .. tostring(v))
			DownloadManager.deleteBundleAndCache(v, self.cacheTopic)
			self.lru:eraseItem(v)
			--EYALBTODO - write to local cache here after every change?
		end
		
		print("Finished deleteing all items!")
	end

	-- update cache
	local buf = self.lru:toString()
	LocalCache.writeToLocalCache(self.localCacheKey, buf)
end

--[[ downloadResource -
-- @brief downloads a url, using bundleid as its hashUrl, and manages the lru accoridngly.
-- @param [string] url - url to download

-- before starting the download - we update LRU with the new key (key is the bundle id).
-- the reason we do this here, and not in download complete, is because in a case of a crash - we might encounter a scenario 
-- in which the file is downloaded but the LRU doens't know about it.

--]]
function LRUResourcesService:downloadResource(url)
	print("LRUResourcesService:downloadResource url=" .. tostring(url))
	local hashedUrl = DownloadManager.hashResourceURL(url)

	if (hashedUrl) then
		print("LRUResourcesService:downloadResource url=" .. tostring(url) .. " hashedUrl=".. tostring(hashedUrl))
		self:updateLRU(hashedUrl)
		DownloadManager.loadSimpleResource(hashedUrl, url, "1", self.cacheTopic, self, self.onLuaBundleLoaded)
	else
		print("Error downloading pic. hash url returned nil")
	end
end

--[[ onLuaBundleLoaded - callback function for download complete.
--]]
function LRUResourcesService:onLuaBundleLoaded(event)
	print("onLuaBundleLoaded - lua bundle loaded. bundleId=" .. tostring(event.id) .. " success=" .. tostring(event.success))
end

function LRUResourcesService:getLruSize()
	return self.lru:getSize()
end

function LRUResourcesService:existsInLru(key)
	return self.lru:exists(key)
end

return LRUResourcesService