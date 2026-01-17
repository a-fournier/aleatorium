local AchievementManager = require("src/achievements/achievement_manager")
local FakeAchievementPopup = require("src/ui/fake_achievement_popup")
local ItemManager = require("src/items/item_manager")
local OnDonationSlotDestroyed = require("src/callback/onDonationSlotDestroyed")
local SaveManager = require("src/save/save_manager")

local ModManager = {}

-- Load all sub-managers when the game starts
-- order matters here
function loadModules(isContinued)
    OnDonationSlotDestroyed.Init(MOD_REF)
    SaveManager.register(MOD_REF, isContinued)
    ItemManager.register(MOD_REF)
    AchievementManager.register(MOD_REF)
    FakeAchievementPopup.register(MOD_REF)
end

ModManager.getModRef = function()
    return MOD_REF
end

function ModManager.register(mod)
    MOD_REF = mod
    mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, loadModules)
end

return ModManager
