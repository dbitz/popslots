--[[
Base class for views in the MVC framework. Subclasses the Actor class so that views are context-aware, and adds functionality for a view hierarchy with it's addChild() method.
--]]

local classes = require("classes")
local Actor = require("Actor")

local View = classes.class(Actor)

View.LOAD_COMPLETE = "VIEW_LOAD_COMPLETE"
View.LOAD_ERROR = "VIEW_LOAD_ERROR"
View.SHOW_COMPLETE = "VIEW_SHOW_COMPLETE"

local defaultEnableLock = {}

--[[
@memberof View
@brief Initializes the view
@param [table] A table of initialization parameters
--]]
View.init = function(self, params)
    --log(self, "View:init", context="..tostring(params.context)..", name="..tostring(params.name))
    Actor.init(self, params)
    
    self.loaded = false
    self.loadComplete = false
    self.shown = false
    self.enabled = false
    self.enableLocks = {}
    self.childViews = {}
end

local returnTrue = function() return true end

View.setLoaded = returnTrue
View.setShown = returnTrue
View.setEnabled = returnTrue

--[[
@memberof View
@brief Loads the view. Note that this function only does some bookkeeping and the actual loading of resources is implemented in the setLoaded() function of the view subclasses.
@return [boolean] The return value from setLoaded()
--]]
View.load = function(self, ...)
    self.loaded = true
    self.loadComplete = self:setLoaded(true, ...)
    return self.loadComplete
end

--[[
@memberof View
@brief Unloads the view. Note that this function only does some bookkeeping and the actual unloading of resources is implemented in the setLoaded() function of the view subclasses.
@return [boolean] The return value from setLoaded()
--]]
View.unload = function(self, ...)
    self.loaded = false
    self.loadComplete = false
    return self:setLoaded(false, ...)
end

--[[
@memberof View
@brief Shows the view. Note that this function only does some bookkeeping and the actual showing of the view is implemented in the setShown() function of the view subclasses.
@return [boolean] The return value from setShown()
--]]
View.show = function(self, ...)
    self.shown = true
    return self:setShown(true, ...)
end

--[[
@memberof View
@brief Hides the view. Note that this function only does some bookkeeping and the actual hiding of the view is implemented in the setShown() function of the view subclasses.
@return [boolean] The return value from setShown()
--]]
View.hide = function(self, ...)
    self.shown = false
    return self:setShown(false, ...)
end

--[[
@memberof View
@brief Enables the view. Note that this function only does some bookkeeping and the actual enabling of the view is implemented in the setShown() function of the view subclasses.
@param [anything] An enabling lock. If the view was disabled using a lock, you need to pass the same object to enable it.
@return [boolean] The return value from setEnabled()
--]]
View.enable = function(self, lock, ...)
    self.enableLocks[lock or defaultEnableLock] = nil
    for k, v in pairs(self._enableLocks) do
        -- other objects still own a disabling lock, don't enable
        return
    end
    self.enabled = true
    return self:setEnabled(true, ...)
end

--[[
@memberof View
@brief Disables the view. Note that this function only does some bookkeeping and the actual disabling of the view is implemented in the setShown() function of the view subclasses.
@param [anything] An enabling lock. If the view is disabled using a lock, you will need to pass the same object to enable it.
@return [boolean] The return value from setEnabled()
--]]
View.disable = function(self, lock, ...)
    self.enableLocks[lock or defaultEnableLock] = true
    self.enabled = false
    return self:setEnabled(false, ...)
end

--[[
@memberof View
@brief Add a child to this view
@param [string] The name of the child
@param [table] The child view
@return If a view with this key already existed, it is returned by this function
--]]
View.addChild = function(self, key, child)
    --log(self, "View:addChild key", tostring(key), "child", tostring(child))
    local replacedView = self.childViews[key]
    if replacedView then
        self:removeChildByKey(key)
    end    
    self.childViews[key] = child
    child.context = self.context
    child:onAdded(self)    
    return replacedView
end

--[[
@memberof View
@brief Gets one of this view's children
@param [string] The key for this child
@return The view if it exists
--]]
View.getChild = function(self, key)
    return self.childViews[key]
end

--[[
@memberof View
@brief Default implementation for view addition callback. Can be overriden by views if they wan't to take special action when added to a new parent
@param [table] The parent to which this view was added. This function is called by addChild() with self as the parent parameter.
--]]
View.onAdded = function(self, parent)
end

--[[
@memberof View
@brief Removes a child view by key
@param [string] The key for the view to be removed
@return The view that was removed (can be nil if there was no view for this key)
--]]
View.removeChildByKey = function(self, key)
    local removedView = nil
    if self.childViews[key] then
        removedView = self.childViews[key]
        self.childViews[key] = nil
        removedView:onRemoved(self)
    end
    return removedView
end

--[[
@memberof View
@brief Removes a child view by value
@param [table] The view to be removed
@return If a view is removed, the functions returns the view and the key under which it was stored. If no matching child view is found, the function returns nil
--]]
View.removeChildByValue = function(self, child)
    local removedView = nil
    for key, view in pairs(self.childViews) do
        if child == view then
            child:onRemoved(self)
            self.childViews[key] = nil
            return child, key
        end
    end
    return nil
end

--[[
@memberof View
@brief Default implementation for view removal callback. Can be overriden by views if they wan't to take special action when removed from it's parent
@param [table] The parent to which this view was added. This function is called by removeChildByKey() and removeChildByValue() with self as the parent parameter.
--]]
View.onRemoved = function(self, parent)
end

--[[
@memberof View
@brief Shortcut for getting the model from this context
@return The model
--]]
View.getModel = function(self)
    return self.context:getModel()
end

View.onLoadComplete = function(self)
    self:postEvent({ eventId = View.LOAD_COMPLETE })
    self.loadComplete = true
end

View.onLoadError = function(self, message)
    self:postEvent( { eventId = View.LOAD_ERROR, payload = { message = message } } )
    self.loaded = false
    self.loadComplete = false
end

return View