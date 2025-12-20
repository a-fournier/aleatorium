include("src/item_room_replacer")
include("src/on_kill_achievement")

local Aleatorium = RegisterMod('Aleatorium', 1)

ItemRoomReplacer.Init(Aleatorium)
OnKillAchievement.Init(Aleatorium)

Isaac.DebugString("Aleatorium mod loaded !")

