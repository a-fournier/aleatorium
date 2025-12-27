local AchievementManager = require("src/achievements/achievement_manager")
local FakeAchievementPopup = require("src/ui/fake_achievement_popup")
local ItemManager = require("src/items/item_manager")

local Aleatorium = RegisterMod('Aleatorium', 1)

AchievementManager.register(Aleatorium)
ItemManager.register(Aleatorium)
FakeAchievementPopup.register(Aleatorium)

Isaac.DebugString("Aleatorium mod loaded !")

