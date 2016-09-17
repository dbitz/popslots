--[[
CheaterViewl.lua
See CheaterController.lua for documentation.
--]]

require("CheaterEvents")

bindModule("ScriptController")
bindModule("ScriptUtils")
bindModule("Events")

local SCENE_FILE = "Cheater.scene"
local POPUP_LAYER = "kPopupLayer"
local FLA_NUMBER_OF_BUTTONS = 15

CheaterView = classes.class()

function CheaterView:init(assetUrl)
  --print("----------------------CheaterView init-------------------")

  g_sceneName = SCENE_FILE
  self.initParams = {}
  self.assetUrl = assetUrl;
  g_scenePath = self.assetUrl
  self.initParams.screen_width = 1136;
  self.initParams.screen_height = 640;
end


function CheaterView:loadSceneForResolution(_width, _height)
  --print("loadScene")
  local str = _width.."_".._height

  --print("scenePath " .. g_scenePath .. " sceneName " .. g_sceneName .. " str: " .. str)

  if (g_scene == nil) then
    g_scene = GameScene.createFromFile(g_sceneName, g_scenePath, false, false, g_sceneName, str)

    if (g_scene) then
      --print("g_scene success")
    else
      print("g_scene is nil!")
    end

    -- create entity by template id
    g_currentEntity = g_scene:createEntityByFormFactor("RectEntTemplate");

    GameScene.addToManager(g_scene, POPUP_LAYER)
  end
end

function CheaterView:onClick(event)
  local dispatcherId = event.dispatcherId
  --print("CheaterView onClick! dispatcherId: " .. tostring(dispatcherId))

  -- create the string again because the local string will die at end of block
  Events.dispatch(CHEAT_BUTTON_CLICKED_EVENT, { dispatcherIdKey = ""..dispatcherId} )
end


-- when X button is called
function CheaterView:onXClicked(event)
  --print("onXClicked")
  Events.dispatch(CHEAT_X_BUTTON_CLICKED_EVENT)
end



function CheaterView:createView(_textsAndColorsArray)

  --self:loadSceneForResolution(self.initParams.screen_width, self.initParams.screen_height);
  --print("creating view!!!")
  local buttonPrefix = "rectButton"
  local btnHolder = g_currentEntity:get("buttonsEnt")
  local btn = nil;
  local currentButtonName= nil;

  -- eventListener to X button
  btnHolder:addEventListener("xButton", self, self.onXClicked)

  for i=1,FLA_NUMBER_OF_BUTTONS do
    currentButtonName = buttonPrefix .. i
    btn = g_currentEntity:get(currentButtonName)
    if (btn) then
      btn:visible(false)
    end
  end

  for k,v in pairs(_textsAndColorsArray) do
    currentButtonName = buttonPrefix .. k

    --print("currentButtonName " .. currentButtonName)
    btn = g_currentEntity:get(currentButtonName)
    if (btn) then
      btn:visible(true)
      btn:color(v.color.R, v.color.G, v.color.B)
      --print("found btn: " .. buttonPrefix .. k)
      g_currentEntity:setButtonLabel(currentButtonName, v.text, 0);
      btnHolder:addEventListener(currentButtonName, self, self.onClick)
    else
      print("btn not found:" .. buttonPrefix .. k)
    end
  end
end

function CheaterView:setCategoriesAndButtons(_cats, _catColors)
  self:loadSceneForResolution(self.initParams.screen_width, self.initParams.screen_height);
  
  local catPrefix = "cat"
  local count = 1;
  local btn;
  local currentCatBTNName
  local btnHolder = g_currentEntity:get("buttonsEnt")
  
  ---first remove all cat buttons
  for i=1,4 do
    currentCatBTNName = catPrefix .. i
    btn = g_currentEntity:get(currentCatBTNName)
    if (btn) then
      btn:visible(false)
      --btn:color(_catColors[i].R, _catColors[i].G, _catColors[i].B)
     end
  end
  
  for k,v in pairs(_cats) do
    currentCatBTNName = catPrefix .. count
    --print("---CheaterView:currentCatBTNName " .. currentCatBTNName)
    btn = g_currentEntity:get(currentCatBTNName)
    if (btn) then
      btn:visible(true)
      --btn:alpha(0.5)
      --print("found btn: " .. catPrefix .. count)
      g_currentEntity:setButtonLabel(currentCatBTNName, k, 0);
      btnHolder:addEventListener(currentCatBTNName, self, self.onCategoryClicked)
    end

    --[[
    --prints:
    --print(k .. " : " .. tostring(v))
    --for kk,vv in pairs(v) do
    --  print("   " .. kk .. " : " .. tostring(vv))
    --  for kkk,vvv in pairs(vv) do
    --    print("        " .. kkk .. " :  " .. tostring(vvv))
    --  end
    --end
    --]]

    count = count +1;
  end
  self:turnOnCatBTN("cat1")
end

function CheaterView:onCategoryClicked(event)
  local dispatcherId = event.dispatcherId
  print("onCategoryClicked! dispatcherId: " .. tostring(dispatcherId))
  self:turnOnCatBTN(dispatcherId)
end

function CheaterView:turnOnCatBTN(dispatcherId)

  local ent = nil;
  for i=1,4 do
     btn = g_currentEntity:get("cat"..i)
     if (btn) then
        ent = btn:get("ent")
        if(ent) then
            ent:setState("unselected")
        end
--btn:alpha(0.5)
     end
  end
  local btn = g_currentEntity:get(dispatcherId)
    ent = btn:get("ent")
    if(ent) then
        ent:setState("selected")
    end
 btn:alpha(1)
	-- create the string again because the local string will die at end of block
  btnIndex = 1;
	Events.dispatch(CHEAT_CATEGORY_CLICKED_EVENT, { dispatcherIdKey = ""..dispatcherId} )
  
end

function CheaterView:destroy()
  --print("CheaterView destroy")
  g_currentEntity = nil
  GameScene.removeFromManager(g_scene)
  g_scene = nil
end

return CheaterView