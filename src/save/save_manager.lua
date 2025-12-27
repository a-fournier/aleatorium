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
        SaveManager = decoded
    end
end

function SaveManager.saveDatas()
    Logger.debug("BEFORE ENCODE", SaveManager)
    local ok, encoded = pcall(json.encode, SaveManager)
    Logger.debug("AFTER ENCODE", encoded)
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
