--[[
CheaterController.lua
1. We use MVC of model, view and controller.
2. The controller is always alive with the app. View and Model will be initialized on demand, and destroyed when done.
3. The connection between the cheater flow to the main app is an event dispached by a trigger (currently a 3 fingers click). This will case a URL request to the server to get the cheats (it happens every time per-click again, because there is a meaning to the state of the user when the cheat tool is initialized - for example, if the user sits on a machine, we will get cheats relavant to slots machine also.
4. after the request for cheat menu from the server is completed, we initalize the model and the view. Then, using the view, we will create the scene and present the UI for the cheat menu.
5. Important: Button indexing and flow explained:
  A. when we initialize the model, we sparate all cheats into categories. each category will hold an array of all its buttons, indexed from 1 to the num of cheats in the category. Meaning, we ignore the actual cheat ID and other params of the cheat, and recognize the cheat from now on only by its id and the category its related to.
  B. when a button is clicked from the view - we get the category that was clicked, and the button number, and by those 2 params we get the button itself and can get its payload (Which holds the id, etc..).
--]]


bindModule("ScriptController")
bindModule("ScriptUtils")
bindModule("Events")
bindModule("Http")
bindModule("Alerts")
bindModule("Analytics")

CheaterViewClass = require("CheaterView")
CheaterModelClass = require("CheaterModel")
require("CheaterEvents")

CheaterController = classes.class()

------------------------------------------------------------------------------------------------------------------------
---                                                      Consts                                                      ---
------------------------------------------------------------------------------------------------------------------------
local FLA_CATEGORY_PREFIX_NAME = "cat"
local FLA_BUTTON_NAME_PREFIX = "rectButton"
local ALERT_BUTTON0_LATER_TEXT = "Later"
local ALERT_BUTTON1_KILLAPP_TEXT = "Kill App!"
local BI_FEATURE = "Cheat"
local BI_ACTION = "ActivateCheat"


------------------------------------------------------------------------------------------------------------------------
---                                                       Init                                                       ---
------------------------------------------------------------------------------------------------------------------------

function CheaterController:init(initParams)
    --print("---------------------CheaterController init-----------------")

    -- init fields
    self.isSessionAlive = false    -- from the moment we got a 3 fingers event, until the menu is destroyed, this flag will be true.
    self.cheaterView = nil  -- holds the view
    self.cheaterModel = nil -- holds the model
    self.getCheatMenuRequest = nil  -- will hold the http request for cheat menu
    self.activateCheatRequest = nil  -- will hold the http request for activate cheat
    self.nameOfActivatedCheat = nil   --  will hold the name of current activated cheat
    self.alertButtons = {}

    -- init from initParams
    self.assetUrl = initParams.assetUrl
    self.myName = initParams.assetName --"Cheater"
    self.listenerId = self.myName

    -- init fields related to urls
    local actionsUrl = Http.getActionsUrl()
    self.cheatMenuUrl = actionsUrl .. "cheat/menu"
    self.activeCheatUrl = actionsUrl .. "cheat/cheat"

    -- register event listeners
    self:registerEventListeners()
end

-- register event listeners
function CheaterController:registerEventListeners()
    Events.listenTo(THREE_FINGERS_PRESSED_EVENT, self, self.onThreeFingersPressed, self.listenerId)
end

-- remove event listeners
function CheaterController:removeEventListeners()
    Events.removeEventListener(THREE_FINGERS_PRESSED_EVENT, self.listenerId)
    self:removeViewButtonsClickEvents()
end


------------------------------------------------------------------------------------------------------------------------
---                                              On Three Fingers Press                                              ---
------------------------------------------------------------------------------------------------------------------------

-- callback to event of three fingers pressed.
-- here we start the url request to get the cheat menu
function CheaterController:onThreeFingersPressed()
    --print("CheaterController:onThreeFingersPressed")

    -- if there is a living session - do nothing
    -- otherwise - we send request for the server to get the cheat menu.
    if (self.isSessionAlive == false) then
        self.isSessionAlive = true
        --print("sending http request")
        self.getCheatMenuRequest = Http.sendRequest(self.cheatMenuUrl, self, self.onCompleteGetCheatMenuRequest, "GET")
    else
        --print("there is a living session. ignore three fingers press.")
    end
end

-- callback to url request of cheat menu
-- this is a main function - here we initialize the model and the view
-- when we did the http request we saved the return value in a field, and now we need it to get the payload.
function CheaterController:onCompleteGetCheatMenuRequest(event)
    --print("onCompleteGetCheatMenuRequest", tostring(self))

    -- for some reason it sometimes returns nil. this is currently considered a bug.
    if (self.getCheatMenuRequest == nil) then
        print("ERROR because self.getCheatMenuRequest == nil")
        --if (self.isSessionAlive == false) then
        --print("so calling destroy..")
        self:semiDestroy()
        --end
        do return end
    end

    if (event) then
        --print("Event")
        if (event.success == true) then
            --print("event success")
            self:onSuccessCheatMenuResponse(event)
        else
            print("destroying cheater")
            self:semiDestroy()
            do return end
        end
    else
        print("url request for cheat menu returned with nil event params !")
        local errorMsg = "httpRequest went wrong. please try again."
        self:showAlertForFailedHttpRequest(errorMsg)
        self:semiDestroy()
        do return end
    end
end

-- when we successfully got cheat menu from the server request
function CheaterController:onSuccessCheatMenuResponse(params)
    local response = self.getCheatMenuRequest:getTableResponse()
    if (response.payload) then
        --print("got payload successfully")

        self:addClientCheats(response.payload);

        --for k,v in pairs(response.payload) do
        --  print("key: " .. k .. " v.caption: " .. tostring(v.caption))
        --  print("key: " .. k .. " v.category: " .. tostring(v.category))
        --  print("key: " .. k .. " v.subCategory: " .. tostring(v.subCategory))
        --end

        -- register to events of cheat menu buttons
        self:registerViewButtonsClickEvents()

        -- INITIALIZE CHEATER VIEW AND MODEL classes.
        self.cheaterView = CheaterViewClass.new(self.assetUrl)
        self.cheaterModel = CheaterModelClass.new()

        -- create map with cheater model, get categories, and initialize the UI.
        local categories = self.cheaterModel:createMap(response.payload, self.activeCheatUrl)
        self.cheaterView:setCategoriesAndButtons(categories, self.cheaterModel:getCategoryColors())
    end

    -- reset the field that holded the http request
    self.getCheatMenuRequest:release()
    self.getCheatMenuRequest = nil

end


function CheaterController:addClientCheats(_payload)
    local cheat1 = {id = 10001, category = "ClientCheats",  subCategory = "ALL" , caption = "Clear Cache"}
    local cheat2 = {id = 10002, category = "ClientCheats",  subCategory = "SMART_ASSET", caption = "Machine Cache"}
    local cheat3 = {id = 10003, category = "ClientCheats",  subCategory = "CRASHLYTICS", caption = "Crash App"}

    table.insert(_payload, cheat1);
    table.insert(_payload, cheat2);
    table.insert(_payload, cheat3);
end



-- register to all button clicks from view
function CheaterController:registerViewButtonsClickEvents()
    --print("CheaterController:registerViewButtonsClickEvents")
    Events.listenTo(CHEAT_BUTTON_CLICKED_EVENT, self, self.onButtonClicked, self.listenerId)
    Events.listenTo(CHEAT_X_BUTTON_CLICKED_EVENT, self, self.onXButtonClicked, self.listenerId)
    Events.listenTo(CHEAT_CATEGORY_CLICKED_EVENT, self, self.onCategoryClicked, self.listenerId)
end

-- remove registeration from all button clicks from view
function CheaterController:removeViewButtonsClickEvents()
    Events.removeEventListener(CHEAT_BUTTON_CLICKED_EVENT, self.listenerId)
    Events.removeEventListener(CHEAT_X_BUTTON_CLICKED_EVENT, self.listenerId)
    Events.removeEventListener(CHEAT_CATEGORY_CLICKED_EVENT, self.listenerId)
end

------------------------------------------------------------------------------------------------------------------------
---                                                View Interaction                                                  ---
------------------------------------------------------------------------------------------------------------------------
-- when a category button clicked - get the category buttons from the model and set it in the view.
function CheaterController:onCategoryClicked(eventParams)
    local dispatcherId = eventParams.dispatcherIdKey
    local buttonNamePrefix = FLA_CATEGORY_PREFIX_NAME
    local num = tonumber(string.sub(dispatcherId, string.len(buttonNamePrefix) + 1))
    local curCategory = self.cheaterModel:getCategory(num);
    self:setTextsOnAllButtons(curCategory, num)
end

function CheaterController:onXButtonClicked(eventParams)
    self:semiDestroy()
    --self:setTextsOnAllButtons(curCategory, num)
end

--[[sendCheatAnalytics
-- sends analytics when cheat is activated.
-- @param [string] cheatName - the name of the string the was activated. (can send ID when its server cheats).
-- @param (table) addParams - optional addparams
--]]
function CheaterController:sendCheatAnalytics(cheatName, addParams)
    if (cheatName) then
        Analytics.reportAnalytics(BI_FEATURE, cheatName, BI_ACTION, addParams)
    end
end


--[[
-- when the button  that is clicked is a client cheat.
-- apply cheat and send client analytic
--]]
function CheaterController:onClientCheatClicked(buttonNum)
    local subCat = self.cheaterModel:getSubCategoryByButtonNum(buttonNum)
    local cheatName = "none"
    if (subCat == "ALL") then
        print("clearing cache")
        Utils.clearCache()
        self:showCacheClearedAlert()
        cheatName = "clientClearCacheAll"
    elseif (subCat == "SMART_ASSET") then
        print("clearing smart asset cache")
        Utils.clearCache(subCat)
        self:showCacheClearedAlert()
        cheatName = "clientClearCacheSmartAsset"
    elseif (subCat == "CRASHLYTICS") then
        Utils.crashlyticsSetCustomValue("crashReason", "userAction")
        self:killApp(true)
        cheatName = "clientCrashApp"
    end

    self:sendCheatAnalytics(cheatName)
end

function CheaterController:onButtonClicked(eventParams)
    --print("CheaterController onClick!")

    -- destroy view because we don't want to enable anymore cheats.
    self:destroyView()

    local dispatcherId = eventParams.dispatcherIdKey
    --print("dispatcherId: " .. tostring(dispatcherId))
    local buttonNamePrefix = FLA_BUTTON_NAME_PREFIX

    -- get the button num from the button
    local buttonNum = string.sub(dispatcherId, string.len(buttonNamePrefix) + 1) 
    --print("button caption is: " .. self.cheaterModel:getTextByButtonNum(buttonNum))

    local category = self.cheaterModel:getCategoryByButtonNum(buttonNum)
    --print("category " .. category)

    if (category == "ClientCheats") then
        self:onClientCheatClicked(buttonNum)
    else
        self:onServerCheatClicked(buttonNum)
    end
end

------------------


-- @param [dictionary] payload - holds key/value of cheats of a certain category. key is numeric, the value is the cheat payload from server.
function CheaterController:setTextsOnAllButtons(payload, _num)
    local textsAndColorsArray = { }

    for k,v in pairs(payload) do
        local textForButton = v.caption--self.cheaterModel:getTextByButtonNum(k)  
        --print("text for button " .. k .. "is: " .. tostring(textForButton))

        textsAndColorsArray[k] = {text = textForButton, color = self.cheaterModel:getRGBTable(v.subCategory, _num)}
    end

    self.cheaterView:createView(textsAndColorsArray)
end


------------------------------------------------------------------------------------------------------------------------
---                                                 Cheat Activation                                                 ---
------------------------------------------------------------------------------------------------------------------------

function CheaterController:handleCheatResponsePayload(payload)
    -- default values
    local descriptionText = ""
    local shouldRestartApp = false

    -- get reponse
    if (payload.descriptionText) then
        --print("found description text: " .. tostring(payload.descriptionText))
        descriptionText = payload.descriptionText
    end

    if (payload.shouldRestartApp) then
        --print("found shouldRestartApp text: " .. tostring(payload.shouldRestartApp))
        shouldRestartApp = payload.shouldRestartApp
    end

    return ""..descriptionText, shouldRestartApp
end

function CheaterController:onSuccessActivateCheat(currentCheatStr)
    --print("in success")

    local descriptionText = ""
    local shouldRestartApp = false
    local res = nil

    local response = self.activateCheatRequest:getTableResponse()

    if(response)then
        if (response.payload) then
            --print("got payload for cheat activate http request complete. printing payload...")
            descriptionText, shouldRestartApp = self:handleCheatResponsePayload(response.payload)
        end
    end

    if(currentCheatStr)then
        self:showAlertForCheat(true, currentCheatStr, shouldRestartApp, descriptionText)
    end

    if(self.activateCheatRequest)then
        self.activateCheatRequest:release()
    end

    self.activateCheatRequest = nil
end

function CheaterController:onFailedActivateCheat(currentCheatStr)
    print("onFailedActivateCheat")
    self:showAlertForCheat(false, currentCheatStr)
end

-- for some cheats, we will retreive a payload.
function CheaterController:onCompleteActivateCheatRequest(event)
    --print("onCompleteActivateCheatRequest")

    -- for some reason it sometimes returns nil. this is currently considered a bug.
    if (self.activateCheatRequest == nil) then
        print("self.activateCheatRequest == nil")
        --if (self.isSessionAlive == false) then
        print("so calling destroy2..")
        self:semiDestroy()
        if (self.nameOfActivatedCheat) then
          self:showAlertForCheat(false, self.nameOfActivatedCheat)
        end
        --end
        do return end
    end

    if (event) then
        if (event.success) then
            self:onSuccessActivateCheat(self.nameOfActivatedCheat)
        else
            self:onFailedActivateCheat(self.nameOfActivatedCheat)
        end
    else
        print("url request for cheat menu returned with nil event params !")
        local errorMsg = "httpRequest went wrong. please try again."
        self:showAlertForFailedHttpRequest(errorMsg)
    end

    self:semiDestroy()
end

--[[ onServerCheatClicked -
-- activates cheat that its index is buttonNum.
-- sends http request to server, and saves the current name of the activated cheat for future use.
-- sends analytics
--]]
function CheaterController:onServerCheatClicked(buttonNum)
    local url = self.cheaterModel:getUrl(buttonNum)
    self.nameOfActivatedCheat = self.cheaterModel:getTextByButtonNum(buttonNum)

    if not self.nameOfActivatedCheat then
      print("[ERROR CHEAT] name of activate cheat is nil. buttonNum=" .. tostring(buttonNum) .. " url="..tostring(url))
    end

    print("[DEBUG] url=" ..tostring(url))
    self.activateCheatRequest = Http.sendRequest(url, self, self.onCompleteActivateCheatRequest, "GET")

    local cheatId = self.cheaterModel:getCheatIdFromPayload(buttonNum)
    local cheatAddParams = self.cheaterModel:getParamsMapByButtonNum(buttonNum)

    --for k,v in pairs(cheatAddParams) do print("CHEATEYALDEBUG k=" .. k .. " v=" .. tostring(v)) end

    self:sendCheatAnalytics(tostring(cheatId), cheatAddParams)
end


------------------------------------------------------------------------------------------------------------------------
---                                                      Alerts                                                      ---
------------------------------------------------------------------------------------------------------------------------

--@param (bool) shouldRestart-  optional - show the user interactive alert with option to kill ap.
--@param (string) addDescription - optional additional msg
function CheaterController:showAlertForCheat(isSuccess, currentCheat, shouldRestart, addDescription)
    local title = "Request"
    local msg

    if (isSuccess) then
        title = title.. " Confirmed"
        msg = "YES! IT WORKED!"
    else
        title = title.. " Faliure"
        if (currentCheat == nil) then
            currentCheat = ""
        end

        msg = "Cheat '".. currentCheat .. "' couldn't make it.."
    end

    if(addDescription) then
        -- add description, if exists
        if (string.len(addDescription) > 0) then
            msg = msg .. "\n" .. tostring(addDescription)
        end
    end

    if (shouldRestart) then
        -- We set the alertButtons index with the button we want, so we will know what to do with it on alert dismiss
        self.alertButtons[0] = ALERT_BUTTON0_LATER_TEXT
        self.alertButtons[1] = ALERT_BUTTON1_KILLAPP_TEXT
        Events.listenTo(LUA_ALERT_DISMISSED_EVENT, self, self.onAlertDismissed, self.listenerId)
        Alerts.showInteractiveAlert(title, msg, ALERT_BUTTON0_LATER_TEXT, ALERT_BUTTON1_KILLAPP_TEXT)
    else
        Alerts.showSimpleAlert(title, msg, "Ok")
    end
end

function CheaterController:showCacheClearedAlert()
    -- We set the alertButtons index with the button we want, so we will know what to do with it on alert dismiss
    self.alertButtons[0] = ALERT_BUTTON1_KILLAPP_TEXT
    Events.listenTo(LUA_ALERT_DISMISSED_EVENT, self, self.onAlertDismissed, self.listenerId)
    Alerts.showInteractiveAlert("Cache Cleared", "Please restart the app", ALERT_BUTTON1_KILLAPP_TEXT)
end

function CheaterController:onAlertDismissed(event)
    --print("CheaterController:onAlertDismissed")

    Events.removeEventListener(LUA_ALERT_DISMISSED_EVENT, self.listenerId)
    local buttonIndex = event.buttonIndex

    -- in case of ALERT_BUTTON0_LATER_TEXT (button num 0) , don't do anything.
    -- in case of ALERT_BUTTON1_KILLAPP_TEXT (button num 1), do kill.
    if (self.alertButtons[buttonIndex] == ALERT_BUTTON1_KILLAPP_TEXT) then
        self:killApp()
    end
end

function CheaterController:killApp(sendCrash)
    --print("killing app.. sendCrash", tostring(sendCrash))

    Utils.exitApp(sendCrash)
end

-- shows alert with message according to param
function CheaterController:showAlertForFailedHttpRequest(errorMsg)
    local title = "Cheat Http Request"
    local buttonText = "Ok"
    Alerts.showSimpleAlert(title, errorMsg, buttonText)
end


------------------------------------------------------------------------------------------------------------------------
---                                                     Destroys                                                     ---
------------------------------------------------------------------------------------------------------------------------
function CheaterController:destroyView()
    --print("destroyView")
    -- remove registeration from all button clicks from view
    self:removeViewButtonsClickEvents()

    -- destroy view
    -- we need to defend all those fields because there is an async http request that might return to call semiDestroy() again, after the user already closed the cheat window and those fields are now nil
    if (self.cheaterView) then
        self.cheaterView:destroy()
        self.cheaterView = nil
    end
end


--[[
-- @brief function destroys only the current session. meaning - after this is called the controller remains alive and keeps listening to triggers from app.
-- @param (errorMsg) - if exists, we also show alert with error msg.
--]]
function CheaterController:semiDestroy()
    --print("semidestroy called")

    -- destroy view
    self:destroyView()

    -- destroy model
    if (self.cheaterModel) then
        self.cheaterModel:destroy()
        self.cheaterModel = nil
    end

    if (self.getCheatMenuRequest) then
        self.getCheatMenuRequest:release()
        self.getCheatMenuRequest = nil
    end

    if (self.activateCheatRequest) then
        self.activateCheatRequest:release()
        self.activateCheatRequest = nil
    end

    self.nameOfActivatedCheat = nil
    self.isSessionAlive = false
end

function CheaterController:destroy()
    --print("CheaterController destroy")
    self:semiDestroy()
    self:removeEventListeners()
end

return CheaterController
