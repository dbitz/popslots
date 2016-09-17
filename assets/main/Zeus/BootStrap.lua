BootStrap = {}

-- client component stuff

--[[
The BootStrap object is used to start up MVC contexts. It implements the initComponent/detroyComponent/update/config interface needed
by ComponentManager.loadComponent(). If loadComponent() is successful this will create a global variable called _context that references the main context object.

It received an initialization table that looks like:
        {
            contextClass = The name of the context subclass (ie, BalloonsContext)
            modelFile = the filename of the model config file
            modelPath = the path of the model config file
            serverModel = a table containing model data sent from the server. Use this to initialize the model with any dynamic data you received. The static data in the model config will be overridden using mytable.override.
            viewFile = the filename of the view config file
            viewPath = the path of the view config file
            controlFile = the filename of the controller config file
            controlPath = the path of the controller config file
            serviceFile = the filename of the service config file
            servicePath = the path of the service config file
            basePath = base path for resources
        }
You can add any other feature specific params, and they will reach the init() function of your context subclass
        
--]]

function BootStrap.initComponent(initParamsTable)
    print("BootStrap.initComponent - context classname = " .. tostring(initParamsTable.contextClass), type(initParamsTable.contextClass))
    
    local contextClass = require(initParamsTable.contextClass)
    print("BootStrap.initComponent - context class = " .. tostring(contextClass))
  _context = contextClass.new(initParamsTable) 
  print("\n\n---------------------------------\ninit component done _context="..tostring(_context), "\n\n\n")
end

function BootStrap.destroyComponent()	
    print("\n\nBootStrap.destroyComponent\n_context="..tostring(_context))
    _context:destroy()
    _context = nil
    print("---------------------------------\n\n")
end

function BootStrap.update(dt)
    _context:update(dt)
end

function BootStrap.config()
end

return BootStrap