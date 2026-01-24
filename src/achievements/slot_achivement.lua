local Achievement = require("src/achievements/achievement")
local CallBackIds = require("src/callback/enums/callback_ids")
local Logger = require("src/utils/logger")
local SlotManager = require("src/slots/slot_manager")

SlotAchievement = Achievement:extend()

function SlotAchievement:check()
    if SlotManager.getSlotCoins(self.properties.type) >= self.properties.coins then
        self:onAchieve()
    end
end

function SlotAchievement:register(mod)
    if not self:isAchieve() then
        mod:AddCallback(CallBackIds.MC_POST_DONATION_SLOT_COIN_INSERTED, function() self:check() end)
    end
end

function SlotAchievement:unregister(mod)
    mod:RemoveCallback(CallBackIds.MC_POST_DONATION_SLOT_COIN_INSERTED, function() self:check() end)
end

return SlotAchievement
