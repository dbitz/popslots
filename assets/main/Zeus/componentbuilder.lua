local componentbuilder = {}

--[[
Utility class used by Factory to create a table of components defined in the config files (see Factory.init())
--]]

componentbuilder.build = function(params)
    local components = {}
        
    -- load data first
    componentbuilder.buildComponents(params, components)
    
    local includes = params.includes
    if (includes) then
        for index, value in ipairs(includes) do
            -- try to load include (components the are already loaded will be ignored)
            componentbuilder.buildComponents(value, components)
        end
    end
        
    return components
end

componentbuilder.buildComponents = function(params, components)
    local componentsToLoad = params.data or params
    for i, componentParams in ipairs(componentsToLoad) do
        local name = componentParams.name or ""
        local className = componentParams.class or ""
        local params = componentParams.params or {}
        local componentPath = componentParams.path
        
        if (components[name] == nil) then
            --log("componentbuilder.build", "Attempting to build " .. name .. " with " .. className .. "...")
            local success, class = pcall(require, className)
            if success and class then
                --log("componentbuilder.build", "Build succeeded!")
                components[name] = 
                {
                    class = class,
                    params = params
                }
            else
                log("componentbuilder.build", "Build failed for " .. name .. " with " .. className .. "! Error=" .. class)
                components[name] = nil
            end
        end
        
    end
end


return componentbuilder