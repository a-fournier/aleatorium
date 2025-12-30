local AchievementManager = require("src/achievements/achievement_manager")
local FakeAchievementPopup = require("src/ui/fake_achievement_popup")
local ItemManager = require("src/items/item_manager")
local SaveManager = require("src/save/save_manager")

local MOD_REF
local ModManager = {}

-- Load all sub-managers when the game starts
-- order matters here
function loadModules()
    SaveManager.register(MOD_REF)
    ItemManager.register(MOD_REF)
    AchievementManager.register(MOD_REF)
    FakeAchievementPopup.register(MOD_REF)
end

function ModManager.register(mod)
    MOD_REF = mod
    mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, loadModules)
end

return ModManager
