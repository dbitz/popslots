--CDSPopup.lua
bindModule("Events")
bindModule("AppConfig")
bindModule("ScriptUtils")

require("popupUtils")

local Module = classes.class()

function Module:onTick(eventParamsTable)
    local ticker = self.scene:get("expirationTime")
    if ticker then
        -- update the ticker with the seconds left
        local secondsLeft = eventParamsTable.secondsLeft
        local showHours = true
        local shortTimer = self.scene:get("shortTimer");
        if shortTimer then
            showHours = false
        end

        local tickerStr = os.date("!%M:%S", secondsLeft)
        if showHours then
            tickerStr = os.date("!%X", secondsLeft)
        end

        ticker:setStringWithParams(tickerStr)
    end
end

function Module:onTimesUp(eventParamsTable)
    self:onClose()
end

function Module:onBuy(eventParamsTable)
    local buyIndexStr = string.sub(eventParamsTable.dispatcherId, 7)
    local buyIndex = tonumber(buyIndexStr)
    buyIndex = buyIndex - 1

    -- perform buy for the appropiate item
    doBuy(_module.this, buyIndex)

    self:onClose()
end

function Module:onShowSale(eventParamsTable)
    showSale(_module.this)
    self:onClose()
end

function Module:onShowStore(eventParamsTable)
    showSale(_module.this, self.flowId)
    self:onClose()
end

function Module:onTos(eventParamsTable)
    local defaultTosURL = "https://www.casacasino.com/tos.html"
    local tosURL = AppConfig.getString("termsOfServiceUrl")
    if (tosURL == nil or string.len(tosURL) == 0) then
        tosURL = defaultTosURL
    end
    WebUtils.launchUrl(tosURL)

    self:onClose()
end

function Module:onClose(eventParamsTable)
    -- remove buy button listeners

    local buyCounter = 1;
    local buyBtnEntityId = "buyBtn" .. buyCounter
    local buyBtn = self.scene:get(buyBtnEntityId)
    while buyBtn do
        buyBtn:removeButtonClickEventListener()
        -- get the next buy button
        buyCounter = buyCounter + 1
        buyBtnEntityId = "buyBtn" .. buyCounter
        buyBtn = self.scene:get(buyBtnEntityId)
    end

    -- remove close, show sale, and terms-of-service button listeners
    local btn = self.scene:get("closeBtn")
    if (btn) then
        btn:removeButtonClickEventListener()
    end

    btn = self.scene:get("tosBtn")
    if (btn) then
        btn:removeButtonClickEventListener()
    end

    btn = self.scene:get("showBtn")
    if (btn) then
        btn:removeButtonClickEventListener()
    end

    btn = self.scene:get("showStoreBtn")
    if (btn) then
        btn:removeButtonClickEventListener()
    end

    closePopup(_module.this)
end

function Module:onCloseBtnCuePoint()
    print("onCloseBtnCuePoint")

    Events.removeEventListener("closeBtnCuePoint")
    
    -- we recieved the cuePoint, add the close button listener
    local btn = self.scene:get("closeBtn")
    if (btn) then
        self.scene:addEventListener("closeBtn", self, self.onClose)
    end
end

function Module:init(initParamsTable)
    print("CDS Popup Init")
    -- store the popup instance
    self.this = initParamsTable.this
    self.scene = GameScene.getSceneById(initParamsTable.sceneName)

    -- saving the data
    self.flowId = initParamsTable.flowId
    self.ruleId = initParamsTable.ruleId
    self.mainResourceName = initParamsTable.mainResourceName
    self.id = initParamsTable.id
    self.contentType = initParamsTable.contentType
    self.vipLevel = initParamsTable.vipLevel

    print(self.scene:id() .. " - " .. self.contentType)
    local customProperties = initParamsTable.customProperties

    if (customProperties ~= nil) then
        for key,value in pairs(customProperties) do
            local textField = self.scene:get(key)
            local spacer = 0
            if textField ~= nil then
                spacer = self.scene:getCharSpacingByEntity(key)
                --print("CDSPopup spacer for key: " .. key .. " is: " .. tostring(spacer))
                textField:setStringWithParams(value, true, spacer)
                centerTextOnPopUp(self.scene, key)
            end
        end
    end

    -- check if there is an entity called waitForCuePoint
    local waitForCuePoint = self.scene:get("waitForCuePoint")
    if (waitForCuePoint == nil) then
        -- there is no such entity, add the close button listener
        local btn = self.scene:get("closeBtn")
        if (btn) then
            self.scene:addEventListener("closeBtn", self, self.onClose)
        end
    else
        -- If there is an entity called waitForCuePoint we need to wait for the cuePoint before adding a listener to the close button
        print("waiting for cue point")
        Events.listenTo("closeBtnCuePoint", self, self.onCloseBtnCuePoint)
    end

    -- add show sale, and terms-of-service button listeners
    btn = self.scene:get("tosBtn")
    if (btn) then
        self.scene:addEventListener("tosBtn", self, self.onTos)
    end

    btn = self.scene:get("showBtn")
    if (btn) then
        self.scene:addEventListener("showBtn", self, self.onShowSale)
    end

    btn = self.scene:get("showStoreBtn")
    if (btn) then
        self.scene:addEventListener("showStoreBtn", self, self.onShowStore)
    end

    -- add buy button listeners
    local buyCounter = 1;
    local buyBtnEntityId = "buyBtn" .. buyCounter
    local buyBtn = self.scene:get(buyBtnEntityId)
    while buyBtn do
        print("adding buy listener for " .. buyBtnEntityId)
        self.scene:addEventListener(buyBtnEntityId, self, self.onBuy)
        -- get the next buy button
        buyCounter = buyCounter + 1
        buyBtnEntityId = "buyBtn" .. buyCounter
        buyBtn = self.scene:get(buyBtnEntityId)
    end

    -- if this is a limited time sale, register for the special deal timer messages
    if self.contentType == "ltSale" then
        Events.listenTo("MSG_SPECIAL_DEAL_TIMER_TICK", self, self.onTick)
        Events.listenTo("MSG_SPECIAL_DEAL_TIMER_TIMES_UP", self, self.onTimesUp)
        local eventTable = {secondsLeft=initParamsTable.secondsLeft}
        self:onTick(eventTable)
    end

    --local vipLayer = self.scene:createEntity("vipEntity", 0, "vipEntity")
    local vipLayer = self.scene:get("vipTopLayer")
    if (vipLayer ~= nil) then
        if vipLayer:hasState(self.vipLevel) then
            vipLayer:setState(self.vipLevel)
        else
            vipLayer:setState("nonMember")
        end
    end
    -- The vip bg layer will only be displyed when the player vip level isn't none
    self.scene:setChildVisible("vipBGLayer", self.vipLevel ~= "nonMember")
end

function moduleInit(initParamsTable)
    _module = Module.new(initParamsTable)
    return "success"
end

function moduleRelease()
    _module = nil
end