ItemRoomReplacer = {}

-- Callback : MC_PRE_ENTITY_SPAWN
function ItemRoomReplacer:OnPreEntitySpawn(type, variant, subtype, pos, vel, spawner, seed)
    Isaac.DebugString("======= OnPreEntitySpawn called =======")
    if type ~= EntityType.ENTITY_PICKUP or variant ~= PickupVariant.PICKUP_COLLECTIBLE then
        return
    end

    local room = Game():GetRoom()
    if room:GetType() ~= RoomType.ROOM_TREASURE then
        return
    end

    if subtype ~= CollectibleType.COLLECTIBLE_BREAKFAST then
        return {
            Type      = type,
            Variant   = variant,
            SubType   = CollectibleType.COLLECTIBLE_BREAKFAST,
            Position  = pos,
            Velocity  = vel,
            Spawner   = spawner,
            Seed      = seed
        }
    end
end

function ItemRoomReplacer.Init(mod)
    mod:AddCallback(ModCallbacks.MC_PRE_ENTITY_SPAWN, ItemRoomReplacer.OnPreEntitySpawn)
end
