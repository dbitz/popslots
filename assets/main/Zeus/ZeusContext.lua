-- ZeusContext
local classes = require("classes")
local Context = require("Context")

local ZeusContext = classes.class(Context)

ZeusContext.init = function(self, params)
    self.listenerId = "ZeusContext_listener"

    print("ZeusContext.init")
    
    self.assetsPath = params.viewPath
  
    Context.init(self, params)
    
    self:initServices()
    
    self:addExternalListeners()
    
    self.initialized = true
end

function ZeusContext:initServices()
    --get call only to initialize services
    --self.model.gameServerListener = self.factory:getService("gameServerListener", self)
end

function ZeusContext:addExternalListeners()
    self:listenToExternalEvent("UserProgressUpdateEvent", "onUserProgressUpdate")
end

ZeusContext.initController = function(self)
    log(self, "ZeusContext.initController", tostring(self.controller))
    --self.controller:mapCommand("showEncourageBtn", "showEncourageBtn")
    
    -- listen to external event of game displayed
    --self:listenToExternalEvent("TreatsManager_showingTreat", "encourageTreat")
end

ZeusContext.destroy = function(self)
    if not self.initialized then
      return
    end
    log(self, "ZeusContext.destroy")
    self:removeExternalEventListeners()
    -- kill context and all updatables
    Context.destroy(self)
    self.controller:resetAllCommands()
end

return ZeusContext