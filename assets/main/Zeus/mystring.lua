local mystring = {}

mystring.trim = function(s)
	return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end

mystring.getPath = function(str, sep)
	sep=sep or "[/\\]"
	return str:match("(.*"..sep..")")
end

mystring.formatTime = function(time)
	local result
	local seconds = time % 60
	local minutes = math.floor(time / 60) % 60
	local hours = math.floor(time / (60 * 60))

	local strSeconds = tostring(seconds)
	if seconds < 10 then
		strSeconds = "0" .. strSeconds
	end
	local strMinutes = tostring(minutes)
	if minutes < 10 then
		strMinutes = "0" .. strMinutes
	end

	if hours == 0 then
		result = strMinutes .. ":" .. strSeconds
	else
		local strHours = tostring(hours)
		result = strHours .. ":" .. strMinutes .. ":" .. strSeconds
	end

	return result
end


--[[ Compute the difference in milli seconds between local time and UTC.
--]]
mystring.get_timezone = function()
	local now = os.time()
--local fakenow = os.time() - 20000
	return os.difftime(now, os.time(os.date("!*t", now)))
end

--[[ getEpochByDate -
--  response is in seconds
--]]
mystring.getEpochByDate = function(origDate, pattern)
	local totalEpoch = nil

	if (origDate and pattern) then
		local origparams = { }
		origparams.year, origparams.month, origparams.day, origparams.hour, origparams.minute, origparams.seconds = origDate:match(pattern)
		
		if origparams.year and origparams.month and origparams.day and origparams.hour and origparams.minute and origparams.seconds then
			totalEpoch = os.time
			{
				year = origparams.year,
				month = origparams.month,
				day = origparams.day,
				hour = origparams.hour,
				min = origparams.minute,
				sec = origparams.seconds
			}
		end
		
	end
	return totalEpoch
end

mystring.convertEpochToLocal = function(epoch)
	local timezone = mystring.get_timezone()
	return epoch + timezone
end

mystring.getTimeDiffFromNowInDaysByEpochUTC = function(epochUTC)
	--print("epoch=" .. tostring(epoch))
	local nowUTC = os.time()
	--print("now=" .. tostring(now))
	local diff = epochUTC - nowUTC    -- in seconds
	--print("diff=" .. tostring(diff))
	local diffInDays = diff / 60 / 60 / 24
	--print("diffInDays=" .. tostring(diffInDays))
	-- remove the floating point
	return string.format("%d",diffInDays)
end


return mystring