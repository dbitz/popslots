local Command = require("Command")
bindModule("Popup")

local OnUserProgressUpdateCmd = classes.class(Command)

function OnUserProgressUpdateCmd:execute(event)
    if (event.payload.levelUp) then
        log("OnUserProgressUpdateCmd:execute showing NewLevelUpPopup")
        Popup.showPopup("NewLevelUpPopup", {
                level = event.payload.level,
                bonusCoins = event.payload.bonusCoins,
                nextLevelMaxBet = event.payload.nextLevelMaxBet,
                balance = event.payload.balance,
                balanceVersion = event.payload.balanceVersion,
                chequeId = event.payload.chequeId
                }, true)
    end
    self:complete()
end

return OnUserProgressUpdateCmd