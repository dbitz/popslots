--[[
CheaterModel.lua
See CheaterController.lua for documentation.
--]]
bindModule("ScriptController")
bindModule("ScriptUtils")
bindModule("Events")

CheaterModel = classes.class()

function CheaterModel:init(initParams)
  --print("-----------------CheaterModel init---------------------")

  -- map keys are the buttons ids (1,2,3..) and value is the params of the cheat
  self.map = {}
  self.urlMap = {}
  self.categories = {}
  self.currentCategory = nil;
  self.colors = {}
  self.catColors = {{R = 86, G = 139, B = 202} , {R = 214, G = 214, B = 98}, {R = 184, G = 61, B = 214}, {R = 110, G = 195, B = 171}}
end


function CheaterModel:getCategoryColors()
  return self.catColors;
end

-- builds a url request to activate cheat, by the format we need.
function CheaterModel:buildUrlWithParams(baseUrl, id, paramsMap)
  local urlWithParams = baseUrl .. "?"
  urlWithParams = urlWithParams .. "id=".. id

  -- params and defaultValues should be of the same size
  -- add all default params to request

  if (paramsMap) then
    for k1, v1 in pairs(paramsMap) do
      urlWithParams = urlWithParams .. "&" .. k1 .. "=" .. v1
    end
  end

  return urlWithParams
end

-- creates a map from dictionary
function CheaterModel:createMap(payload, activeCheatUrl)
  --print("createMap")

  if (payload == nil) then
    print("Error. payload is nil.")
    do return end
  end

  self.map = payload

  for k,v in pairs(self.map) do
    local cat = tostring(v.category)
    --create the inner array on the dict if non existant
    if(self.categories[cat] == nil) then
       --print("creating table ".. cat)
      self.categories[cat] = {}
    end

    local paramsMap = self:createParamsKeyValueMap(v.params, v.defaultValues)
    local urlWithParams = self:buildUrlWithParams(activeCheatUrl, v.id, paramsMap)

    self.urlMap[k] = ""..urlWithParams
    local innerDict = {id = v.id, caption = v.caption, url = ""..urlWithParams, subCategory = v.subCategory, category = cat, paramsMap = paramsMap};
    table.insert(self.categories[cat], innerDict)
  end
  
  return self.categories;  
end

function CheaterModel:createParamsKeyValueMap(params,  values)
    local res = { }
    if (params) then

        for k1, v1 in pairs(params) do
            res[v1] = values[k1]
        end
    end
    return res
end

function CheaterModel:getRGBTable(subCatName,  _catNum)
  
  local currentColor = nil;
  if(self.colors[subCatName] == nil)then
    
    --currentColor = {R = math.floor(math.random() * 255), G = math.floor(math.random() * 255), B = math.floor(math.random() * 255)};
    
  if(self.catColors[_catNum]) then
    currentColor = {R = self.catColors[_catNum].R, G = (tonumber(self.catColors[_catNum].G )- math.floor(math.random() * 100)), B = self.catColors[_catNum].B};
  else
    currentColor = {R = 60, G = math.floor(math.random() * 255), B = 0};
  end
    
   
    self.colors[subCatName] = currentColor
  else
    currentColor = self.colors[subCatName];
  end
  return currentColor
end

function CheaterModel:getCategory(num)
  local _num = 1;
  self.currentCategory = nil;
  for k,v in pairs(self.categories) do
    if(num == _num) then
        self.currentCategory = v;
    end
    _num = _num+1
  end
  return self.currentCategory;
end
function CheaterModel:getUrl(buttonNum)
    --return self.urlMap[tonumber(buttonNum)]
    return self.currentCategory[tonumber(buttonNum)].url
end

function CheaterModel:getCheatIdFromPayload(buttonNum)
  return self.currentCategory[tonumber(buttonNum)].id
end

function CheaterModel:getParamsMapByButtonNum(buttonNum)
  return self.currentCategory[tonumber(buttonNum)].paramsMap
end

function CheaterModel:getTextByButtonNum(buttonNum)
  return self.currentCategory[tonumber(buttonNum)].caption
end

function CheaterModel:getCategoryByButtonNum(buttonNum)
  return self.currentCategory[tonumber(buttonNum)].category
end

function CheaterModel:getSubCategoryByButtonNum(buttonNum)
  return self.currentCategory[tonumber(buttonNum)].subCategory
end


function CheaterModel:destroy()
  --print("CheaterModel destroy")
  self.map = {}
  self.urlMap = {}
  self.categories = {}
  self.currentCategory = nil;
  self.colors = {}
 end
 
return CheaterModel
