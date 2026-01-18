local Logger = require("src/utils/logger")

local onDonationSlotFilled = {
    ID = "MC_PRE_DONATION_SLOT_FILLED",
    heardedDonationSound = false,
    i = 0
}

local function listenForCoinInserted()
    local isSoundPlaying = SFXManager():IsPlaying(SoundEffect.SOUND_COIN_SLOT)
    local isSoundHeared = onDonationSlotFilled.heardedDonationSound

    if isSoundPlaying and not isSoundHeared then
        onDonationSlotFilled.heardedDonationSound = true
        onDonationSlotFilled.i = onDonationSlotFilled.i + 1
        Logger.debug("Inserted coin detected", onDonationSlotFilled.i)
    elseif not isSoundPlaying and isSoundHeared then
        onDonationSlotFilled.heardedDonationSound = false
    end
end

function onDonationSlotFilled.Init(mod)
    mod:AddCallback(ModCallbacks.MC_POST_UPDATE, onDonationSlotFilled._tick)
end

function onDonationSlotFilled._tick()
    local donationMachines = Isaac.FindByType(EntityType.ENTITY_SLOT, 8, -1, false, false)
    --local greedDonationMachines = Isaac.FindByType(EntityType.ENTITY_SLOT, 11, -1, false, false)

    if (donationMachines and #donationMachines > 0)
    then
        for _, e in ipairs(donationMachines) do
            local spr = e:GetSprite()
            local oanim  = spr.GetOverlayAnimation and spr:GetOverlayAnimation() or ""
            local oframe = spr.GetOverlayFrame and spr:GetOverlayFrame() or 0
            Logger.debug(oanim, oframe)
            --if anim and anim == "Prize" then
            --    onDonationSlotFilled.i = onDonationSlotFilled.i + 1
            --    Logger.debug("Donation slot filled detected", onDonationSlotFilled.i)
            --end
        end
    end
end

return onDonationSlotFilled
