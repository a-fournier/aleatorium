local json = require("json")
local FakeAchievementPopup = require("src/ui/fake_achievement_popup")
local Logger = require("src/utils/logger")

local MOD_REF
local ItemManager = {}
local Items = {}

function ItemManager.isItemUnlocked(id)
    return ItemManager.items and ItemManager.items[id] and ItemManager.items[id].isUnlocked == true
end

function ItemManager.pickRandomLockedItem()
    local lockedItems = {}
    for id, item in pairs(Items) do
        if not item.isUnlocked then
            table.insert(lockedItems, item)
        end
    end
    local randomIndex = math.random(1, #lockedItems)
    return lockedItems[randomIndex]
end

function ItemManager.unlockItem(item)
    ItemManager.items[item.id] = { name = item.name, isUnlocked = true }
    local ok, encoded = pcall(json.encode, ItemManager)
    if ok then
        MOD_REF:SaveData(encoded)
        FakeAchievementPopup.Show({ sprite = item.unlockSprite })
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
