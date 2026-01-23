-- https://bindingofisaacrebirth.fandom.com/wiki/Donation_Machine

local CallBackIds = require("src/callback/enums/callback_ids")
local Logger = require("src/utils/logger")
local SaveManager = require("src/save/save_manager")
local SlotType = require("src/slots/enums/slot_type")

local MOD_REF
local SlotManager = {}

local function OnDestroy(_, nbCoinsDropped)
    SaveManager.slots[SlotType.SHOP] = SaveManager.slots[SlotType.SHOP] - (nbCoinsDropped + 1)
    SaveManager.saveDatas()
    Logger.debug("Donation slot destroyed, dropped coins: ", nbCoinsDropped, SaveManager.slots[SlotType.SHOP])
end

local function OnInsert(_, type)
    SaveManager.slots[type] = SaveManager.slots[type] + 1

    if SaveManager.slots[type] == 1000 then
        SaveManager.slots[type] = 0
    end

    SaveManager.saveDatas()
    Logger.debug("Coin inserted into donation slot", type, SaveManager.slots[type])
    Isaac.RunCallbackWithParam(CallBackIds.MC_POST_DONATION_SLOT_COIN_INSERTED)
end

function SlotManager.getSlotCoins(type)
    return SaveManager.slots[type] or 0
end

function SlotManager.register(mod)
    MOD_REF = mod
    mod:AddCallback(CallBackIds.MC_POST_DONATION_SLOT_DESTROYED, OnDestroy)
    mod:AddCallback(CallBackIds.MC_PRE_DONATION_SLOT_COIN_INSERTED, OnInsert)
end

function SlotManager.unregister(mod)
    MOD_REF = nil
    mod:RemoveCallback(CallBackIds.MC_POST_DONATION_SLOT_DESTROYED, OnDestroy)
    mod:RemoveCallback(CallBackIds.MC_PRE_DONATION_SLOT_COIN_INSERTED, OnInsert)
end

return SlotManager
