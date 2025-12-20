include("src/item_room_replacer")

local Aleatorium = RegisterMod('Aleatorium', 1)

if ItemRoomReplacer and ItemRoomReplacer.Init then
    ItemRoomReplacer.Init(Aleatorium)
end

Isaac.DebugString("Aleatorium mod loaded !")

