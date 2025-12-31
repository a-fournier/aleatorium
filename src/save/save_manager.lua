local json = require("json")
local Logger = require("src/utils/logger")

local MOD_REF
local SaveManager = {
    rng = { attempts = 0 },
    achievements = {},
    items = {}
}

function loadDatas(isContinued)
    if MOD_REF:HasData() then
        local ok, decoded = pcall(json.decode, MOD_REF:LoadData())
        SaveManager.achievements = decoded.achievements or {}
        SaveManager.items = decoded.items or {}

        if isContinued then
            SaveManager.rng = decoded.rng or { attempts = 0 }
        end
    end
end

function getNonSerializedDatas()
    return {
        achievements = SaveManager.achievements,
        items = SaveManager.items,
        rng = SaveManager.rng
    }
end

function SaveManager.saveDatas()
    local ok, encoded = pcall(json.encode, getNonSerializedDatas())
    if ok then
        MOD_REF:SaveData(encoded)
    end
    return ok
end

function SaveManager.register(mod, isContinued)
    MOD_REF = mod
    loadDatas(isContinued)
    mod:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, SaveManager.saveDatas)
end

return SaveManager
