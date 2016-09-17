local classes = require("classes")
local Actor = require("Actor")
local Factory = require("Factory")

--[[
@class Controller
@brief Controller class for the MVC module. Manages the mapping of events to commands.
--]]
local Controller = classes.class(Actor)

Controller.init = function(self, params)
    log(self, "Controller:init")
    self.context = params.context
    self.commandMap = {}
    -- used to store commands we would to later restore
    self.storedCommandMap = {}
end

--[[
@memberof Controller
@brief Handles an event. Instantiates and executes command associated with the event.
@param [Event] The event.
--]]
Controller.processEvent = function(self, event)
    local eventId = event.eventId
    --log(self, "Controller:processEvent ", eventId)
    if self.commandMap[eventId] then
        --log(self, "Controller:processEvent", "Has commands", #(self.commandMap[eventId]))
        for i, c in ipairs(self.commandMap[eventId]) do
            if not c.dispatcher or c.dispatcher == event.dispatcher then
                --log(self, "Controller:processEvent", "Executing command : ", tostring(c.name))
                local command = self.context.factory:getCommand(c.name, self.context)
                command:execute(event)
                if c.oneshot then
                    self:unmapCommand(eventId, c.name, c.dispatcher)
                end                
            end
        end
    end
end

--[[
@memberof Controller
@brief Map a command to an event.
@param [string] The eventId that triggers the command.
@param [string] The name of the command. The controller will call Factory.getCommand() with this name to create the command instance.
@param [table|nil] A dispatcher that can map the command only to events dispatched by a specific entity. If nil the command is mapped to any event with matching id.
@param [boolean|nil] If true the command will fire once and then me unmapped automatically.
--]]
Controller.mapCommand = function(self, eventId, commandName, dispatcher, oneshot)
    if not self.commandMap[eventId] then
        self.commandMap[eventId] = {}
        self.context.eventManager:addListener(eventId, {selfReference = self, callback = self.processEvent})
    end
    for i, c in ipairs(self.commandMap[eventId]) do
        if commandName == c.name and dispatcher == c.dispatcher then
            -- command already mapped - no doubles
            return
        end
    end
    --log(self, "Controller:mapCommand", eventId, tostring(commandName))
    table.insert(self.commandMap[eventId], 
        {
            name = commandName, 
            dispatcher = dispatcher, 
            oneshot = oneshot or false
        }
    )
end

--[[
@memberof Controller
@brief Unmaps a command from an event.
@param [string] The eventId that triggered the command.
@param [string] The name of the command to be unmapped.
@param [table|nil] The dispatcher this command was mapped to.
--]]
Controller.unmapCommand = function(self, eventId, commandName, dispatcher)
    if self.commandMap[eventId] then
        local eventCommands = self.commandMap[eventId]
        for i, c in ipairs(eventCommands) do
            if commandName == c.name and dispatcher == c.dispatcher then
                log(self, "Controller:unmapCommand", eventId, tostring(commandName))
                local command = table.remove(eventCommands, i)
                -- if no more commands are registered for this eventId, remove the listener
                if (#eventCommands) == 0 then               
                    self.commandMap[eventId] = nil
                    self:removeListener(eventId, {selfReference = self,callback = self.processEvent})
                end
                return command
            end
        end
    end
    return nil
end

--[[
@memberof Controller
@brief Unmaps all commands from an event
@param [string] The eventId that triggered the command.

--]]
Controller.unmapAllCommands = function(self, eventId)
    if self.commandMap[eventId] then
       self.commandMap[eventId] = nil 
       self:removeListener(eventId, {selfReference = self,callback = self.processEvent})
    end    
end

Controller.storeCommands = function(self, eventId)
    if self.commandMap[eventId] then
       self.storedCommandMap[eventId] = self.commandMap[eventId] 
    end    
end

Controller.restoreCommands = function(self, eventId)
    if self.storedCommandMap[eventId] then
        if not self.commandMap[eventId] then        
            self.context.eventManager:addListener(eventId, {selfReference = self, callback = self.processEvent})
        end
       self.commandMap[eventId] = self.storedCommandMap[eventId] 
    end
end

Controller.resetAllCommands = function(self)
    for key, value in ipairs(self.commandMap) do
        self:removeListener(key, {selfReference = self,callback = self.processEvent})
    end
    
    self.commandMap = {}
end

return Controller