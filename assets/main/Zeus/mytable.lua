local mytable = {}

mytable.log = function(t, prefix)
    prefix = prefix or ""
    log(prefix .. tostring(t) .. " - ")
    if t then
        for k, v in pairs(t) do
            local p = prefix .. "\t"
            local t = type(v)
            if t == "table" then
                log(p .. k .. ":" .. t .. ":")
                mytable.log(v, p)
            else
                log(p .. k .. ":" .. t .. ":" .. tostring(v))
            end
        end
    end        
end

mytable.length = function(t)
    local size = 0
    for k,v in pairs(t) do
        size = size + 1
    end
    return size
end

mytable.override = function(original, replacement)
    if replacement and type(replacement) == "table" then
        for k, v in pairs(replacement) do
            if type(v) == "table" then
                if type(original[k]) ~= "table" then
                    --log(self, "mytable.override", "replacing " .. k .. "=" .. tostring(original[k]) .. " with empty table")
                    original[k] = {}
                else
                    --log(self, "mytable.override", "going into table " .. k)
                end
                mytable.override(original[k], v)
            else
                --log(self, "mytable.override", "replacing " .. k .. "=" .. tostring(original[k]) .. " with " .. tostring(v))
                original[k] = v
            end
        end
    end
end

mytable.getFromPath = function(data, path)    
    --log("mytable.getFromPath", tostring(data), tostring(path), #(path))
    if data and type(data) == "table" and path and type(path) == "table" then
        for i, v in ipairs(path) do
            --log("mytable.getFromPath", tostring(v), tostring(data[v]))
            data = data[v]
            if data == nil then
                break
            end        
        end   
    end
    return data
end

mytable.reverse = function(tbl)
  for i=1, math.floor(#tbl / 2) do
    local tmp = tbl[i]
    tbl[i] = tbl[#tbl - i + 1]
    tbl[#tbl - i + 1] = tmp
  end
end

--[[
-- gets a payload and an array of mandatory fields that should be in it.
-- returns the field that is missing, if exists. nil otherwise.
-- @param [table] payload
-- @param [table array] mandatoryFields - fields that should exist in the payload
--]]
mytable.checkMandatoryFields = function(payload, mandatoryFields)
	if not payload or not mandatoryFields then
		return
	end
	
	for k,v in ipairs(mandatoryFields) do
		if payload[v] == nil then
			return v
		end
	end
	
	return
end

return mytable