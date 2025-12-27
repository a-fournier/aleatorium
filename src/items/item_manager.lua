local json = require("json")
local Logger = require("src/utils/logger")

local MOD_REF
local ItemManager = {}
local Items = {}

function ItemManager.isItemUnlocked(id)
    return ItemManager.items[id] and ItemManager.items[id].isUnlocked == true
end

function ItemManager.unlockItem(id, name)
    ItemManager.items[id] = { name = name, isUnlocked = true }
    local ok, encoded = pcall(json.encode, ItemManager)
    if ok then
        MOD_REF:SaveData(encoded)
    end
end

function loadItems()
    Logger.debug("Loading items data...")
    if MOD_REF:HasData() then
        local ok, decoded = pcall(json.decode, MOD_REF:LoadData())
        ItemManager.items = decoded.items
    else
        ItemManager.items = {}
    end
    registerItems()
end

function registerItems()
    Logger.debug("Items loaded")
    Items = require('src/items/items')
    Logger.debug("Items", Items)
end

function ItemManager.register(mod)
    MOD_REF = mod
    mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, loadItems)
end

return ItemManager
