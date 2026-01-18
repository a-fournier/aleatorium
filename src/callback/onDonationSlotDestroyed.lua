local Logger = require("src/utils/logger")
local CallBackIds = require("src/callback/enums/callback_ids")
local Table = require("src/utils/table")

local onDonationSlotDestroyed = {
    _roomCoins = {},
    _known = {},
    _gone = {},
    _sessions = {}
}

function onDonationSlotDestroyed.register(mod)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, onDonationSlotDestroyed._resetRoomState)
    mod:AddCallback(ModCallbacks.MC_POST_UPDATE, onDonationSlotDestroyed._tick)
end

function onDonationSlotDestroyed.unregister(mod)
    mod:RemoveCallback(ModCallbacks.MC_POST_NEW_ROOM, onDonationSlotDestroyed._resetRoomState)
    mod:RemoveCallback(ModCallbacks.MC_POST_UPDATE, onDonationSlotDestroyed._tick)
end

local function scanCoins()
    local ents  = Isaac.GetRoomEntities()
    for _, e in ipairs(ents) do
        if e.Type == EntityType.ENTITY_PICKUP and e.Variant == PickupVariant.PICKUP_COIN and not onDonationSlotDestroyed._roomCoins[e.InitSeed] then
            onDonationSlotDestroyed._roomCoins[e.InitSeed] = true
        end
    end
end

local function openSession(seed)
    onDonationSlotDestroyed._sessions[seed] = {
        startedFrame = Game():GetFrameCount(),
        window = 20,
    }
end

local function isCoinInserted(machine)
    local spr = machine:GetSprite()
    local oanim  = spr:GetOverlayAnimation() or nil
    local oframe = spr:GetOverlayFrame() or -1

    return (oanim == "CoinInsert" or  oanim == "CoinInsert2" or  oanim == "CoinInsert3") and oframe == 0
end

local function listenToDonationSlotDestroyed()
    local frame = Game():GetFrameCount()
    for seed, info in pairs(onDonationSlotDestroyed._known) do
        if info.anim == "Death" then
            onDonationSlotDestroyed._known[seed] = nil
            onDonationSlotDestroyed._gone[seed] = { frame = frame }
            openSession(seed)
        end
    end
end

local function scanSlots(slots, greedSlots)
    for _, e in ipairs(slots) do
        if isCoinInserted(e) then
            Isaac.RunCallbackWithParam(CallBackIds.MC_PRE_DONATION_SLOT_COIN_INSERTED, nil, "shop")
        end

        local spr = e:GetSprite()
        local anim = spr:GetAnimation() or nil
        local prevAnim = onDonationSlotDestroyed._known[e.InitSeed] and onDonationSlotDestroyed._known[e.InitSeed].anim or nil
        if anim ~= nil and (prevAnim ~= nil or anim ~= "Death") then
            if prevAnim ~= anim then
                onDonationSlotDestroyed._known[e.InitSeed] = { anim = anim, prevAnim = prevAnim }
            end
        end
    end

    for _, e in ipairs(greedSlots) do
        if isCoinInserted(e) then
            Isaac.RunCallbackWithParam(CallBackIds.MC_PRE_DONATION_SLOT_COIN_INSERTED, nil, "greed")
        end
    end

    listenToDonationSlotDestroyed()
end

local function aggregateDroppedCoins()
    if next(onDonationSlotDestroyed._sessions) == nil then
        scanCoins()
        return
    end

    local frame = Game():GetFrameCount()

    for seed, s in pairs(onDonationSlotDestroyed._sessions) do
        if frame - s.startedFrame >= s.window then
            local nbCoinsBefore = Table.length(onDonationSlotDestroyed._roomCoins)
            scanCoins()
            local nbCoinsAfter = Table.length(onDonationSlotDestroyed._roomCoins)

            local nbCoinsDropped = nbCoinsAfter - nbCoinsBefore
            Isaac.RunCallbackWithParam(CallBackIds.MC_POST_DONATION_SLOT_DESTROYED, nil, nbCoinsDropped)
            onDonationSlotDestroyed._sessions[seed] = nil
        end
    end
end

function onDonationSlotDestroyed._resetRoomState()
    onDonationSlotDestroyed._roomCoins = {}
    onDonationSlotDestroyed._known = {}
    onDonationSlotDestroyed._gone = {}
    onDonationSlotDestroyed._sessions= {}
    onDonationSlotDestroyed.i = 0
end


function onDonationSlotDestroyed._tick()
    local slots = Isaac.FindByType(EntityType.ENTITY_SLOT, 8, -1, false, false)
    local greedSlots = Isaac.FindByType(EntityType.ENTITY_SLOT, 11, -1, false, false)
    scanSlots(slots, greedSlots)

    if slots and #slots > 0 then aggregateDroppedCoins() end
end

return onDonationSlotDestroyed
