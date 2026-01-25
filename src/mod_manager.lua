local AchievementManager = require("src/achievements/achievement_manager")
local CompletionMarkManager = require("src/completion_marks/completion_mark_manager")
local DebugManager = require("src/debug/debug_manager")
local FakeAchievementPopup = require("src/ui/fake_achievement_popup")
local ItemManager = require("src/items/item_manager")
local OnDonationSlotDestroyed = require("src/callback/onDonationSlotDestroyed")
local SlotManager = require("src/slots/slot_manager")
local SaveManager = require("src/save/save_manager")

local ModManager = {}

-- Load all sub-managers when the game starts
-- order matters here
function loadModules(isContinued)
    OnDonationSlotDestroyed.register(MOD_REF)
    SaveManager.register(MOD_REF, isContinued)
    CompletionMarkManager.register(MOD_REF)
    SlotManager.register(MOD_REF)
    ItemManager.register(MOD_REF)
    AchievementManager.register(MOD_REF)
    FakeAchievementPopup.register(MOD_REF)
    DebugManager.register(MOD_REF)
end

function unloadModules()
    OnDonationSlotDestroyed.unregister(MOD_REF)
    CompletionMarkManager.unregister(MOD_REF)
    SlotManager.unregister(MOD_REF)
    DebugManager.unregister(MOD_REF)
end

ModManager.getModRef = function()
    return MOD_REF
end

function ModManager.register(mod)
    MOD_REF = mod
    mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, loadModules)
    mod:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, unloadModules)
end

return ModManager
