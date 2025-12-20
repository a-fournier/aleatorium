include("src/utils/logger")

ItemRoomReplacer = {}

-- Callback : MC_PRE_GET_COLLECTIBLE
function ItemRoomReplacer.OnPreGetCollectible(mod, poolType, decrease, seed)
    if Game():GetRoom():GetType() == RoomType.ROOM_TREASURE then
        return CollectibleType.COLLECTIBLE_SACRED_HEART
    end
end

function ItemRoomReplacer.Init(mod)
    mod:AddCallback(ModCallbacks.MC_PRE_GET_COLLECTIBLE, ItemRoomReplacer.OnPreGetCollectible)
end
