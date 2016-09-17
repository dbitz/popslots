--LoyaltyPopup.lua

bindModule("Analytics")
bindModule("SmartAsset")
bindModule("AppConfig")
bindModule("PortalManager")

local Module = classes.class()

function Module:onClose()
    print("onClose")
    self.scene:removeButtonClickEventListener("closeButton")
    closePopup(_module.this)
end

function Module:init(initParamsTable)
    print("LoyaltyPopup Init")
    -- cheque collector the popup instance
    self.this = initParamsTable.this
    self.scene = GameScene.getSceneById(initParamsTable.sceneName)

    local params = {}
    params.casinoLevel = Analytics.getCasinoLevel()
    if (PortalManager.isPortalShown()) then
        params.src = "lobby"
    else
        params.src = "env"
    end

    Analytics.reportAnalytics("loyaltyPopup", "loyaltyPopup", "show", params)

    local lpEnabled = AppConfig.getBoolean("lpEnabled")
    local rewardsEnabled = AppConfig.getBoolean("rewardsEnabled")
    print("lpEnabled and rewardsEnabled", tostring(lpEnabled), tostring(rewardsEnabled))

    -- If one of the flags is on, we would like to change the state of the bg entity
    if (lpEnabled == true or rewardsEnabled == true) then
        local bgEnt = self.scene:get("bg")
        if (bgEnt) then
            -- If the rewardsEnabled flag is on, we should set the state to rewardsState
            if (rewardsEnabled == true and bgEnt:hasState("rewardsState")) then
                bgEnt:setState("rewardsState")

                -- Add event listener to the rewardsBtn to launch the Rewards smart asset
                self.scene:addEventListener("rewardsBtn", self, self.onRewardsClicked)
            elseif (bgEnt:hasState("lpState")) then
                bgEnt:setState("lpState")
            end
        end
    end

    -- saving the data
    self.scene:addEventListener("closeButton", self, self.onClose)

end

function Module:onRewardsClicked()
    print("onRewardsClicked")
    self.scene:removeButtonClickEventListener("rewardsBtn")

    local params = {}
    params.casinoLevel = Analytics.getCasinoLevel()

    if (PortalManager.isPortalShown()) then
        params.src = "lpOnLobby"
    else
        params.src = "lpOnEnv"
    end

    Analytics.reportAnalytics("rewards", "mall", "clickRewardButton", params)

    SmartAsset.preload("Rewards")
    SmartAsset.launch("Rewards", true)

    self:onClose()
end

function moduleInit(initParamsTable)
    _module = Module.new(initParamsTable)
    print("in LoyaltyPopup script")

    return "success"
end

function moduleRelease()
    _module = nil
end