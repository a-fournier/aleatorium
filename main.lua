local AchievementManager = require("src/achievements/achievement_manager")
local FakeAchievementPopup = require("src/ui/fake_achievement_popup")

local Aleatorium = RegisterMod('Aleatorium', 1)

AchievementManager.register(Aleatorium)
FakeAchievementPopup.register(Aleatorium)

Isaac.DebugString("Aleatorium mod loaded !")

