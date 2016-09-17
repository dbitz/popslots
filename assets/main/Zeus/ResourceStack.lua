local ResourceStack = classes.class()

function ResourceStack:init(initParams)
    self.sourceStack = initParams.sources or {}
end

function ResourceStack:pushSource(source)
    table.insert(self.sourceStack, source)
end

function ResourceStack:popSource()
    return table.remove(self.sourceStack)
end

function ResourceStack:getSources()
    return (self.sourceStack)
end

function ResourceStack:topSource()
    return self.sourceStack[#self.sourceStack]
end

function ResourceStack:createEntity(entTemplateId, layer, instanceId, stateId)
    local stackTop = #self.sourceStack
    local entity = nil
    for i = stackTop, 1, -1 do
        local scene = self.sourceStack[i]
        entity = scene:createEntity(entTemplateId, layer, instanceId, false, stateId)
        if (entity ~= nil) then            
            break
        end        
    end
    
    return entity
    
end

function ResourceStack:playSound(soundId, isLooping)
    local stackTop = #self.sourceStack
    local entity = nil
    for i = stackTop, 1, -1 do
        local scene = self.sourceStack[i]
        if (scene:hasSound(soundId)) then 
            scene:playSound(soundId, isLooping)
            break
        end        
    end
end

function ResourceStack:playBGMusic(soundId, isLooping)
    local stackTop = #self.sourceStack
    local entity = nil
    for i = stackTop, 1, -1 do
        local scene = self.sourceStack[i]
        if (scene:hasSound(soundId)) then 
            scene:playBGMusic(soundId, isLooping)
            break
        end        
    end
end

function ResourceStack:stopBGMusic(soundId, isLooping)
    local stackTop = #self.sourceStack
    local entity = nil
    for i = stackTop, 1, -1 do
        local scene = self.sourceStack[i]
        if (scene:hasSound(soundId)) then 
            scene:stopBGMusic(soundId)
            break
        end        
    end
end

function ResourceStack:playRandomSound(soundId, isLooping)
    local stackTop = #self.sourceStack
    local entity = nil
    for i = stackTop, 1, -1 do
        local scene = self.sourceStack[i]
        if (scene:hasSound(soundId)) then 
            scene:playRandomSound(soundId, isLooping)
            break
        end        
    end
end

function ResourceStack:playSoundSequence(soundId, isLooping)
    local stackTop = #self.sourceStack
    local entity = nil
    for i = stackTop, 1, -1 do
        local scene = self.sourceStack[i]
        if (scene:hasSound(soundId)) then 
            scene:playSoundSequence(soundId, isLooping)
            break
        end        
    end
end

function ResourceStack:resetSoundSequence(soundId, isLooping)
    local stackTop = #self.sourceStack
    local entity = nil
    for i = stackTop, 1, -1 do
        local scene = self.sourceStack[i]
        if (scene:hasSound(soundId)) then 
            scene:resetSoundSequence(soundId)
            break
        end        
    end
end

function ResourceStack:stopSound(soundId)
    local stackTop = #self.sourceStack
    local entity = nil
    for i = stackTop, 1, -1 do
        local scene = self.sourceStack[i]
        if (scene:hasSound(soundId)) then 
            scene:stopSound(soundId)
            break
        end        
    end
end



return ResourceStack