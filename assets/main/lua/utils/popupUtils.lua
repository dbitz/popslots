bindModule("GameEntity")

local DOBBERS_START_MARK_ID = "dobbersStart"

-- initParamsTable should always hold popupX,popupWidth,popupY,popupHeight params. we use those in case marker wasn't found.
function onCollectGetDobbersMarker(scene, initParamsTable)
  local startingPoint = { x=0, y=0 }
  local scale = 1.0

  if (scene) then
    -- get dobbers marker entity and retrieve startingPoint and scale.
    local dobbersMark = scene:get(DOBBERS_START_MARK_ID)

    if (dobbersMark) then
      startingPoint = dobbersMark:getAbsolutePosition()

      -- get only width of scale. we consider scale of dobber as uniform.
      scale = dobbersMark:scale().w
    else   -- if no marker found - use middle of the popup
      if (initParamsTable and initParamsTable.popupX and initParamsTable.popupWidth and initParamsTable.popupY and initParamsTable.popupHeight) then
          startingPoint = { x = (initParamsTable.popupX + initParamsTable.popupWidth / 2) , y = (initParamsTable.popupY + initParamsTable.popupHeight / 2) }
      end
    end
  end

  return startingPoint, scale
end

--this is used for cases where you have a pop up with a dynamic amount label, and a coin image to its right, and you want to center them. 
--takes in the scene in question(pop up), the coinName, textLabel name, the name of the container of the txt and coin, and the instance name of a makrjer item that marks the middle of the pop up.


local CENTER_MARKER_NAME = "centerPopUp";
--this function does not nessissarely get all parameters- so we set defaults in case it can't find some of the strings it needs
function centerTextOnPopUp(scene, txtLabelStr, centerMarkerStr,  txtCoinContainerStr)

--get the textField
  local tf = scene:get(txtLabelStr);
  --we might have situations where we have more than one textAre to be centered in our popup. for that reason we add a suffix to asset names. we need to make sure we are dealing with such a case.
  
  if(tf ~= nil) then
    local suffix = "";
    
    --this should handle cases where there are popups with more than one textfield to be aligned. so we check if the textfield's dad is a TextArea (could be textArea1 or 2 etc), and if so- we proceed.
    local tfParentName = tf:parentId();
    
    if(tfParentName)then
      --see if our textField is inside a textArea
      local contains = string.find(tfParentName, "textArea");
      
      if(contains) then
        
        local index = string.sub(tfParentName, 9);
        --if the two strings are identical that means there is no index at the end of the string
        if(index ~= tfParentName) then
          suffix = index;
        end
        
      --get rightItem 
      --get outside marker
        local markerName = "centerPopUp"..suffix;
        local markerMC = scene:get(markerName);
        
        
        if( markerMC == nil ) then
          markerMC= scene:get("centerPopUp");
        end
        
        --if we found a marker by that name- center the textArea according to it!
        if( markerMC ~= nil ) then
          --the textArea that wraps the coin and textField
          local textArea = scene:get(tfParentName);
          
          local innerLeftAsset = textArea:get("leftItem");
          local innerRightAsset = textArea:get("rightItem");
          
        
          --the center marker we will be aligning to
          
          if(tf and textArea and markerMC) then
            
            local centerX = markerMC:x();
            local textAreaWidth;
            local newXPos;
            
            textAreaWidth = tf:getTextWidth();

            if(innerLeftAsset) then
              print("aligning left 1");
              innerLeftAsset:x(0);
              print("aligning left 2");
              tf:x(innerLeftAsset:width());
              print("aligning left 3");
              textAreaWidth = textAreaWidth + innerLeftAsset:width();
            else
              print("no left!");
            end
            
            if(innerRightAsset) then
              innerRightAsset:x(tf:getTextWidth() + tf:x());
              textAreaWidth = textAreaWidth + innerRightAsset:width();
              print("aligning right");
            end

            newXPos = centerX - (textAreaWidth /2);
            textArea:x( newXPos );
          end
        end
      end
    end
  end
end

function setDefaultCharSpacing(currentEntity,destTextFieldName, _model)
  local tf = currentEntity:get(destTextFieldName)
  if(tf) then
    local charSpace = currentEntity:getCharSpacingByEntity(destTextFieldName)
    _model.fontSpacing = charSpace
    tf:setCharSpacing(_model.fontSpacing);
    print("setting " .. destTextFieldName ..  " with char spacing " .. _model.fontSpacing)
  end
end

--[[ getCharSpacerFromMarker
-- this function is used to get char space for an entity.
-- we are using a marker that it's width implies us what the desired char space is.
-- sometimes we will multiply it by -1.
-- @param [object] scene - scene to get marker item entity from
-- @param [string] spacerEntityIdStr - id of the marker item entity
-- @param [bool] useNegativeVal - flag indicates if to multiply result by -1 or not.
-- @returns [int] desired char space
--]]
--[[
function getCharSpacerFromMarker(scene, spacerEntityIdStr, useNegativeVal)
  -- If we have a spacer entity, we get it's width's value and multiply by -1 if useNegativeVal is true.
  local spacerEntityId = scene:get(spacerEntityIdStr)
  local charSpace = 0

  if (spacerEntityId) then
    -- those marker items don't hold width, so we'll get it by getting its scale and multiplying by 2.
    charSpace =  spacerEntityId:scale().w * 2
    if (useNegativeVal) then
      charSpace = -1 * charSpace
    end
    print("SPACERPRINT FOUND spacerentity")
  end

  print("SPACERPRINT charSpace for " .. spacerEntityIdStr .. " is: " .. tostring(charSpace))

  return charSpace
end
--]]
