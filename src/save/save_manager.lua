local json = require("json")
local Logger = require("src/utils/logger")

local MOD_REF
local SaveManager = {
    achievements = {},
    items = {}
}

function loadDatas()
    if MOD_REF:HasData() then
        local ok, decoded = pcall(json.decode, MOD_REF:LoadData())
        SaveManager.achievements = decoded.achievements or {}
        SaveManager.items = decoded.items or {}
    end
end

function getNonSerializedDatas()
    return {
        achievements = SaveManager.achievements,
        items = SaveManager.items
    }
end

function SaveManager.saveDatas()
    local ok, encoded = pcall(json.encode, getNonSerializedDatas())
    if ok then
        MOD_REF:SaveData(encoded)
    end
    return ok
end

function SaveManager.register(mod)
    MOD_REF = mod
    loadDatas()
end

return SaveManager
