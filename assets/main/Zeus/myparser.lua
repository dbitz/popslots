local myparser = {}

myparser.parse = function(parseFunc, file, path, raiseError)
    log("myparser.parse", tostring(file))
    if type(parseFunc) == "function" and type(file) == "string" then
        local oldPath = nil
        if path then
            log("myparser.path", "Setting path", tostring(path))
            oldPath = package.path
            package.path = path .. file .. ";" .. path .. file ..".lua;" .. package.path
        end
        
        local old = _G.entry
        _G.entry = parseFunc
        log("parsing ", file)
        pcall(require, file)
        _G.entry = old
        
        if oldPath then
            package.path = oldPath
        end
    else
        log("myparser", tostring(file), "parse - bad params")
        if raiseError then
            error("myparser.parse: bad params for " .. tostring(file))
        end
    end
    
end

myparser.get = function(file, path)
    local obj = nil
    local getObject = function(object)
        --log("_getObject", tostring(object), #object)
        -- OFER-TODO
        if (object.includes) then
            for index, name in ipairs(object.includes) do
                object.includes[index] = myparser.get(name, path)  
                local ofer = 4
            end
                        
        end
        
        obj = object
    end
    myparser.parse(getObject, file, path)    
    return obj
end

return myparser