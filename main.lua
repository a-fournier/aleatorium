local Aleatorium = RegisterMod('Aleatorium', 1)
local game = Game()
local json = require("json")

Isaac.DebugString("Aleatorium mod loaded !")

-- ====== Config ======

local MIN_ACH_ID = 1
local MAX_ACH_ID = 700
local CHECK_EVERY_N_FRAMES = 10
local IGNORE = {
    -- exemple:  -- [336] = true, -- "Cracked Crown" (à titre indicatif)
}

-- =====================

local pgd = nil
local realSeen = {}                -- "vrais achievements vus" (persistance)
local randomGiven = {}             -- "achievements donnés aléatoirement" (persistance)
local frameCounter = 0
local rng = RNG()
rng:SetSeed(Random(), 1)


-- ---------- Persistance ----------
local function loadSave()
    if Aleatorium:HasData() then
        local data = json.decode(Aleatorium:LoadData())
        realSeen = data.realSeen or {}
        randomGiven = data.randomGiven or {}
    else
        realSeen = {}
        randomGiven = {}
    end
end


local function saveNow()
    local data = {
        realSeen = realSeen,
        randomGiven = randomGiven
    }
    Aleatorium:SaveData(json.encode(data))
end


local function buildPoolForRandom()
    local pool = {}
    for id = MIN_ACH_ID, MAX_ACH_ID do
        -- on exclut ce qui est déjà unlock, ce qui a été donné aléatoirement, et ce qui est ignoré
        if not randomGiven[tostring(id)] and not IGNORE[id] then
            table.insert(pool, id)
        end
    end
    return pool
end


local function pickRandomFromPool(pool)
    if #pool == 0 then return nil end
    local idx = rng:RandomInt(#pool) + 1
    return pool[idx]
end


local function tryLockAchievement(id)
    -- ATTENTION : le support sur achievements vanilla n'est pas garanti !
    -- Doc REPENTOGON/Blueprints mentionne 'lockachievement' via console (surtout pour moddés). [2](https://isaacblueprints.com/tutorials/repentogon/achievements/)[3](https://repentogon.com/xml/achievements.html)
    local ret = Isaac.ExecuteCommand("lockachievement " .. tostring(id))
    Isaac.DebugString("[Aleatorium] lockachievement(" .. id .. ") => " .. tostring(ret))
    -- on vérifiera l'effet au prochain scan (pgd:Unlocked(id) doit repasser à false)
end


local function onNewRealUnlockDetected(idA)
    local idStr = tostring(idA)
    Isaac.ConsoleOutput(string.format("[Aleatorium] Détection unlock vanilla: id=%d\n", idA))

    -- Marquer comme "réel vu" pour éviter de retraiter
    realSeen[idStr] = true

    if IGNORE[idA] then
        Isaac.ConsoleOutput(string.format("[Aleatorium] ID %d ignoré (progression logique).\n", idA))
        saveNow()
        return
    end

    -- Tenter de re-locker A (best-effort)
    tryLockAchievement(idA)

    -- Construire la pool et tirer B
    local pool = buildPoolForRandom()
    local idB = pickRandomFromPool(pool)


    if not idB then
        Isaac.ConsoleOutput("[Aleatorium] Aucune cible aléatoire disponible (pool vide).\n")
        saveNow()
        return
    end

    -- Politique : si le re-lock n'a pas pris, veux-tu quand même donner B ?
    -- Ici, on adopte une politique "souple": on donne B quoi qu'il arrive,
    -- mais on laisse une trace claire de ce qui s'est passé.

    pgd:TryUnlock(idB, true)   -- 'true' supprime la popup pour achievements moddés; pour vanilla, pas d'effet spécial. [2](https://isaacblueprints.com/tutorials/repentogon/achievements/)
    knownUnlocked[idB] = true
    randomGiven[tostring(idB)] = true

    Isaac.ConsoleOutput(string.format("[Aleatorium] Redirection: %d -> %d\n", idA, idB))
    Isaac.DebugString(string.format("[Aleatorium] Redirection: %d -> %d", idA, idB))
    saveNow()
end


local function checkNewUnlocks()
    frameCounter = frameCounter + 1
    if frameCounter % CHECK_EVERY_N_FRAMES ~= 0 then return end

    for id = MIN_ACH_ID, MAX_ACH_ID do
        local isNow = pgd:Unlocked(id)
        local was   = knownUnlocked[id] or false
        if isNow and not was then
            knownUnlocked[id] = true
            onNewRealUnlockDetected(id)
        end
    end
end


function Aleatorium:OnGameStart(isContinued)
    Isaac.DebugString("=============================== OnGameStart")
    pgd = Isaac.GetPersistentGameData()
    loadSave()
    snapshotUnlocked()
end


function Aleatorium:OnPreGameExit(shouldSave)
    if shouldSave then
        saveNow()
    end
end

function Aleatorium:OnPostUpdate()
    Isaac.DebugString("=============================== OnPostUpdate")
    checkNewUnlocks()
end

Aleatorium:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Aleatorium.OnGameStart)
Aleatorium:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, Aleatorium.OnPreGameExit)
Aleatorium:AddCallback(ModCallbacks.MC_POST_UPDATE, Aleatorium.OnPostUpdate)
