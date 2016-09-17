local requirePath = {}

requirePath.trim = function(s)
    return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end

requirePath.getPath = function(str,sep)
    sep=sep or "[/\\]"
    return str:match("(.*"..sep..")")
end

requirePath.setPath = function(...)
    local dirs = {...}
    local path = package.path
    local me = arg[0]
    local myDir = requirePath.getPath(me)
    local newDirs = myDir.."?;"..myDir.."?.lua;";
    
    for i, dir in ipairs({...}) do
        local d = myDir..requirePath.trim(dir)
        newDirs = newDirs..d.."\\?;"..d.."\\?.lua;"
    end
    
    package.path = newDirs..path
    
    return path
end

requirePath.setPathAbsolute = function(...)
    local dirs = {...}
    local path = package.path
    local newDirs = "";
    
    for i, dir in ipairs({...}) do
        local d = requirePath.trim(dir)
        newDirs = newDirs..d.."?;"..d.."?.lua;"
    end
    
    package.path = newDirs..path
    
    return path
end

return requirePath