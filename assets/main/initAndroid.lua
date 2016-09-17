
local function loader(name, modpath)
    --print("in loader", name, modpath)
    local moduleCodeStr = androidLoader(name, modpath)
    local chunkFunc = load(moduleCodeStr)
    return chunkFunc()
end

package.searchers[3] = function (name)
    print("android searcher: ", name)

    for str in string.gmatch(package.path, "([^;]+)") do
        -- Only bundled paths which include a ? in the str should get to the androidSearcher function
        if (string.find(str, "main/") == 1 and string.find(str, "?") ~= nil) then
            local res = androidSearcher(name, str)
            if (res == true) then
                return loader, str
            end
        end
    end
    return nil, ""

end