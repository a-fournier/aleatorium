local Item = require("src/items/item")

return {
    BOOK_OF_REVELATIONS = Item:new(CollectibleType.COLLECTIBLE_BOOK_OF_REVELATIONS, "Book of Revelations", 7, "achievement_bookofrevelations"),
    TRANSCENDENCE = Item:new(CollectibleType.COLLECTIBLE_TRANSCENDENCE, "Transcendence", 8, "achievement_transcendence"),
}
