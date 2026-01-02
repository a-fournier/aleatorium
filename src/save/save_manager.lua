local json = require("json")
local Converter = require("src/utils/converter")
local Logger = require("src/utils/logger")

local MOD_REF
local SaveManager = {
    current_game = {
        rng = { streams = {} },
        items = { }
    },
    achievements = {},
    items = {}
}

function loadDatas(isContinued)
    if MOD_REF:HasData() then
        local ok, decoded = pcall(json.decode, MOD_REF:LoadData())
        local parsed = Converter:parseIntKeysDeep(decoded)
        SaveManager.achievements = parsed.achievements or SaveManager.achievements
        SaveManager.items = parsed.items or SaveManager.items

        if isContinued then
            SaveManager.current_game = parsed.current_game or SaveManager.current_game
        end
    end
end

function getNonSerializedDatas()
    return {
        achievements = SaveManager.achievements,
        items = SaveManager.items,
        current_game = SaveManager.current_game
    }
end

function SaveManager.saveDatas()
    local parsed = Converter:stringifyKeysDeep(getNonSerializedDatas())
    local ok, encoded = pcall(json.encode, parsed)
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
