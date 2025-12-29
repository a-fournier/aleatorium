local Pool = require("src/pools/pool")

return {
    [ItemPoolType.POOL_TREASURE] = Pool:new(
        ItemPoolType.POOL_TREASURE,
        1,
        {
            [CollectibleType.COLLECTIBLE_ASTRAL_PROJECTION] = 0.2,
            [CollectibleType.COLLECTIBLE_BODY] = 0.2,
            [CollectibleType.COLLECTIBLE_DEATHS_TOUCH] = 0.2,
            [CollectibleType.COLLECTIBLE_EPIC_FETUS] = 0.1,
            [CollectibleType.COLLECTIBLE_ESAU_JR] = 0.5,
            [CollectibleType.COLLECTIBLE_ETERNAL_D6] = 0.5,
            [CollectibleType.COLLECTIBLE_GELLO] = 0.5,
            [CollectibleType.COLLECTIBLE_HALO] = 0.5,
            [CollectibleType.COLLECTIBLE_HOLY_LIGHT] = 0.2,
            [CollectibleType.COLLECTIBLE_HOLY_MANTLE] = 0.2,
            [CollectibleType.COLLECTIBLE_MAGIC_MUSHROOM] = 0.5,
            [CollectibleType.COLLECTIBLE_MEGA_MUSH] = 0.1,
            [CollectibleType.COLLECTIBLE_MIND] = 0.2,
            [CollectibleType.COLLECTIBLE_MOMS_KNIFE] = 0.2,
            [CollectibleType.COLLECTIBLE_PLUM_FLUTE] = 0.5,
            [CollectibleType.COLLECTIBLE_PYRO] = 0.1,
            [CollectibleType.COLLECTIBLE_RELIC] = 0.2,
            [CollectibleType.COLLECTIBLE_SOUL] = 0.2,
            [CollectibleType.COLLECTIBLE_SKELETON_KEY] = 0.1,
            [CollectibleType.COLLECTIBLE_SPINDOWN_DICE] = 0.1,
        }
    ),
    [ItemPoolType.POOL_SHOP] = Pool:new(
        ItemPoolType.POOL_SHOP,
        0.5,
        {
            [CollectibleType.COLLECTIBLE_BLANK_CARD] = 0.5,
            [CollectibleType.COLLECTIBLE_CARD_READING] = 0.5,
            [CollectibleType.COLLECTIBLE_CHAOS] = 0.5,
            [CollectibleType.COLLECTIBLE_CROOKED_PENNY] = 0.5,
            [CollectibleType.COLLECTIBLE_KEEPERS_BOX] = 0.5,
            [CollectibleType.COLLECTIBLE_MAGIC_SKIN] = 0.1,
            [CollectibleType.COLLECTIBLE_MAMA_MEGA] = 0.5,
            [CollectibleType.COLLECTIBLE_PLAN_C] = 0.2,
            [CollectibleType.COLLECTIBLE_SACK_HEAD] = 0.5,
        }
    ),
    [ItemPoolType.POOL_LIBRARY] = Pool:new(
        ItemPoolType.POOL_LIBRARY,
        0.1,
        {
            [CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES] = 0.2,
            [CollectibleType.COLLECTIBLE_LEMEGETON] = 0.2,
        }
    ),
    [ItemPoolType.POOL_CURSE] = Pool:new(
        ItemPoolType.POOL_CURSE,
        0.5,
        {
            [CollectibleType.COLLECTIBLE_FALSE_PHD] = 0.5,
            [CollectibleType.COLLECTIBLE_HEARTBREAK] = 0.5,
            [CollectibleType.COLLECTIBLE_PLAN_C] = 0.2,
            [CollectibleType.COLLECTIBLE_VANISHING_TWIN] = 0.5,
        }
    ),
    [ItemPoolType.POOL_BOSS] = Pool:new(
        ItemPoolType.POOL_BOSS,
        1,
        {
            [CollectibleType.COLLECTIBLE_PJS] = 0.5,
            [CollectibleType.COLLECTIBLE_SUPER_BANDAGE] = 0.5,
        }
    ),
    [ItemPoolType.POOL_SECRET] = Pool:new(
        ItemPoolType.POOL_SECRET,
        1,
        {
            [CollectibleType.COLLECTIBLE_SACRED_ORB] = 0.5,
            [CollectibleType.COLLECTIBLE_VANISHING_TWIN] = 0.5,
        }
    ),
    [ItemPoolType.POOL_DEVIL] = Pool:new(
        ItemPoolType.POOL_DEVIL,
        1,
        {
            [CollectibleType.COLLECTIBLE_ABYSS] = 0.5,
            [CollectibleType.COLLECTIBLE_BERSERK] = 0.5,
            [CollectibleType.COLLECTIBLE_DARK_ARTS] = 0.5,
            [CollectibleType.COLLECTIBLE_FORGET_ME_NOW] = 0.2,
            [CollectibleType.COLLECTIBLE_HEARTBREAK] = 0.5,
            [CollectibleType.COLLECTIBLE_LEMEGETON] = 0.5,
            [CollectibleType.COLLECTIBLE_MEGA_BLAST] = 0.2,
            [CollectibleType.COLLECTIBLE_PLAN_C] = 0.2,
            [CollectibleType.COLLECTIBLE_VOID] = 0.5,
        }
    ),
    [ItemPoolType.POOL_ANGEL] = Pool:new(
        ItemPoolType.POOL_ANGEL,
        1,
        {
            [CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES] = 0.5,
            [CollectibleType.COLLECTIBLE_DELIRIOUS] = 0.4,
            [CollectibleType.COLLECTIBLE_SACRED_ORB] = 0.5,
            [CollectibleType.COLLECTIBLE_VOID] = 0.5,
        }
    ),
    [ItemPoolType.POOL_GOLDEN_CHEST] = Pool:new(
        ItemPoolType.POOL_GOLDEN_CHEST,
        0.4,
        {
            [CollectibleType.COLLECTIBLE_FATE] = 0.5,
            [CollectibleType.COLLECTIBLE_LEAD_PENCIL] = 0.1,
            [CollectibleType.COLLECTIBLE_SOCKS] = 0.1,
            [CollectibleType.COLLECTIBLE_PJS] = 0.5,
            [CollectibleType.COLLECTIBLE_SCHOOLBAG] = 0.5,
        }
    ),
    [ItemPoolType.POOL_RED_CHEST] = Pool:new(
        ItemPoolType.POOL_RED_CHEST,
        0.4,
        {
            [CollectibleType.COLLECTIBLE_BLOOD_PUPPY] = 0.5,
            [CollectibleType.COLLECTIBLE_FALSE_PHD] = 0.2,
            [CollectibleType.COLLECTIBLE_PLAN_C] = 0.1,
            [CollectibleType.COLLECTIBLE_RED_KEY] = 0.1,
        }
    ),
    [ItemPoolType.POOL_DEMON_BEGGAR] = Pool:new(
        ItemPoolType.POOL_DEMON_BEGGAR,
        0.5,
        {
            [CollectibleType.COLLECTIBLE_ABADDON] = 0.2,
            [CollectibleType.COLLECTIBLE_POUND_OF_FLESH] = 0.5,
            [CollectibleType.COLLECTIBLE_FORGET_ME_NOW] = 0.5,
            [CollectibleType.COLLECTIBLE_LORD_OF_THE_PIT] = 0.2,
            [CollectibleType.COLLECTIBLE_PLAN_C] = 0.2,
            [CollectibleType.COLLECTIBLE_SPIRIT_OF_THE_NIGHT] = 0.2,
        }
    ),
    [ItemPoolType.POOL_BOMB_BUM] = Pool:new(
        ItemPoolType.POOL_BOMB_BUM,
        0.5,
        {
            [CollectibleType.COLLECTIBLE_BRIMSTONE_BOMBS] = 0.2,
            [CollectibleType.COLLECTIBLE_PYRO] = 0.2,
            [CollectibleType.COLLECTIBLE_PYROMANIAC] = 0.2,
        }
    ),
    [ItemPoolType.POOL_KEY_MASTER] = Pool:new(
        ItemPoolType.POOL_KEY_MASTER,
        0.5,
        {
            [CollectibleType.COLLECTIBLE_SKELETON_KEY] = 0.2,
        }
    ),
    [ItemPoolType.POOL_ROTTEN_BEGGAR] = Pool:new(
        ItemPoolType.POOL_ROTTEN_BEGGAR,
        1,
        {
            [CollectibleType.COLLECTIBLE_DEAD_ONION] = 0.5,
            [CollectibleType.COLLECTIBLE_ROTTEN_TOMATO] = 0.5,
        }
    ),
    [ItemPoolType.POOL_BATTERY_BUM] = Pool:new(
        ItemPoolType.POOL_BATTERY_BUM,
        1,
        {
            [CollectibleType.COLLECTIBLE_120_VOLT] = 0.1,
            [CollectibleType.COLLECTIBLE_JACOBS_LADDER] = 0.1,
        }
    ),
    [ItemPoolType.POOL_OLD_CHEST] = Pool:new(
        ItemPoolType.POOL_OLD_CHEST,
        0.4,
        {
            [CollectibleType.COLLECTIBLE_DADS_RING] = 0.2,
            [CollectibleType.COLLECTIBLE_MOMS_KNIFE] = 0.2,
        }
    ),
    [ItemPoolType.POOL_MOMS_CHEST] = Pool:new(
        ItemPoolType.POOL_MOMS_CHEST,
        0.5,
        {
            [CollectibleType.COLLECTIBLE_MOMS_KNIFE] = 0.1,
            [CollectibleType.COLLECTIBLE_RED_KEY] = 0.5,
        }
    ),
    [ItemPoolType.POOL_BABY_SHOP] = Pool:new(
        ItemPoolType.POOL_BABY_SHOP,
        1,
        {
            [CollectibleType.COLLECTIBLE_GELLO] = 0.5,
            [CollectibleType.COLLECTIBLE_VANISHING_TWIN] = 0.5,
        }
    ),
    [ItemPoolType.POOL_GREED_TREASURE] = Pool:new(
        ItemPoolType.POOL_GREED_TREASURE,
        1,
        {
            [CollectibleType.COLLECTIBLE_ANIMA_SOLA] = 0.1,
            [CollectibleType.COLLECTIBLE_BODY] = 0.2,
            [CollectibleType.COLLECTIBLE_DEATHS_TOUCH] = 0.2,
            [CollectibleType.COLLECTIBLE_EPIC_FETUS] = 0.1,
            [CollectibleType.COLLECTIBLE_ESAU_JR] = 0.5,
            [CollectibleType.COLLECTIBLE_ETERNAL_D6] = 0.5,
            [CollectibleType.COLLECTIBLE_GELLO] = 0.5,
            [CollectibleType.COLLECTIBLE_HALO] = 0.5,
            [CollectibleType.COLLECTIBLE_HOLY_LIGHT] = 0.2,
            [CollectibleType.COLLECTIBLE_HOLY_MANTLE] = 0.2,
            [CollectibleType.COLLECTIBLE_HUMBLEING_BUNDLE] = 0.2,
            [CollectibleType.COLLECTIBLE_KEEPERS_BOX] = 0.2,
            [CollectibleType.COLLECTIBLE_MAGIC_MUSHROOM] = 0.5,
            [CollectibleType.COLLECTIBLE_MEGA_MUSH] = 0.5,
            [CollectibleType.COLLECTIBLE_MIND] = 0.2,
            [CollectibleType.COLLECTIBLE_MISSING_NO] = 0.1,
            [CollectibleType.COLLECTIBLE_MOMS_KNIFE] = 0.2,
            [CollectibleType.COLLECTIBLE_PLUM_FLUTE] = 0.5,
            [CollectibleType.COLLECTIBLE_PYRO] = 0.1,
            [CollectibleType.COLLECTIBLE_RELIC] = 0.2,
            [CollectibleType.COLLECTIBLE_SKELETON_KEY] = 0.1,
            [CollectibleType.COLLECTIBLE_SOUL] = 0.2,
            [CollectibleType.COLLECTIBLE_SPINDOWN_DICE] = 0.1,
            [CollectibleType.COLLECTIBLE_STRAW_MAN] = 0.5,
        }
    ),
    [ItemPoolType.POOL_GREED_SHOP] = Pool:new(
        ItemPoolType.POOL_GREED_SHOP,
        0.5,
        {
            [CollectibleType.COLLECTIBLE_1UP] = 0.1,
            [CollectibleType.COLLECTIBLE_ANIMA_SOLA] = 0.1,
            [CollectibleType.COLLECTIBLE_BLANK_CARD] = 0.5,
            [CollectibleType.COLLECTIBLE_CHAOS] = 0.5,
            [CollectibleType.COLLECTIBLE_D_INFINITY] = 0.1,
            [CollectibleType.COLLECTIBLE_D20] = 0.1,
            [CollectibleType.COLLECTIBLE_ECHO_CHAMBER] = 0.1,
            [CollectibleType.COLLECTIBLE_ESAU_JR] = 0.1,
            [CollectibleType.COLLECTIBLE_ETERNAL_D6] = 0.5,
            [CollectibleType.COLLECTIBLE_FLIP] = 0.1,
            [CollectibleType.COLLECTIBLE_GLITCHED_CROWN] = 0.1,
            [CollectibleType.COLLECTIBLE_INNER_CHILD] = 0.1,
            [CollectibleType.COLLECTIBLE_ISAACS_TOMB] = 0.1,
            [CollectibleType.COLLECTIBLE_MAMA_MEGA] = 0.5,
            [CollectibleType.COLLECTIBLE_PLAN_C] = 0.2,
            [CollectibleType.COLLECTIBLE_R_KEY] = 0.1,
            [CollectibleType.COLLECTIBLE_SACRED_ORB] = 0.1,
            [CollectibleType.COLLECTIBLE_SPINDOWN_DICE] = 0.1,
            [CollectibleType.COLLECTIBLE_SPIRIT_SHACKLES] = 0.1,
            [CollectibleType.COLLECTIBLE_STOP_WATCH] = 0.1,
            [CollectibleType.COLLECTIBLE_STRAW_MAN] = 0.1,
            [CollectibleType.COLLECTIBLE_TMTRAINER] = 0.1,
        }
    ),
    [ItemPoolType.POOL_GREED_CURSE] = Pool:new(
        ItemPoolType.POOL_GREED_CURSE,
        0.5,
        {
            [CollectibleType.COLLECTIBLE_FALSE_PHD] = 0.5,
            [CollectibleType.COLLECTIBLE_HEARTBREAK] = 0.5,
            [CollectibleType.COLLECTIBLE_PLAN_C] = 0.2,
        }
    ),
    [ItemPoolType.POOL_GREED_BOSS] = Pool:new(
        ItemPoolType.POOL_GREED_BOSS,
        1,
        {
            [CollectibleType.COLLECTIBLE_MAGIC_MUSHROOM] = 0.2,
            [CollectibleType.COLLECTIBLE_PJS] = 0.5,
            [CollectibleType.COLLECTIBLE_RAW_LIVER] = 0.2,
            [CollectibleType.COLLECTIBLE_SUPER_BANDAGE] = 0.5,
        }
    ),
    [ItemPoolType.POOL_GREED_SECRET] = Pool:new(
        ItemPoolType.POOL_GREED_SECRET,
        1,
        {
            [CollectibleType.COLLECTIBLE_SACRED_ORB] = 0.5,
        }
    ),
    [ItemPoolType.POOL_GREED_DEVIL] = Pool:new(
        ItemPoolType.POOL_GREED_DEVIL,
        1,
        {
            [CollectibleType.COLLECTIBLE_ABYSS] = 0.5,
            [CollectibleType.COLLECTIBLE_BERSERK] = 0.5,
            [CollectibleType.COLLECTIBLE_DARK_ARTS] = 0.5,
            [CollectibleType.COLLECTIBLE_HEARTBREAK] = 0.5,
            [CollectibleType.COLLECTIBLE_LEMEGETON] = 0.5,
            [CollectibleType.COLLECTIBLE_MEGA_BLAST] = 0.2,
            [CollectibleType.COLLECTIBLE_TECHNOLOGY] = 0.2,
        }
    ),
    [ItemPoolType.POOL_GREED_ANGEL] = Pool:new(
        ItemPoolType.POOL_GREED_ANGEL,
        1,
        {
            [CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES] = 0.5,
            [CollectibleType.COLLECTIBLE_DELIRIOUS] = 0.4,
            [CollectibleType.COLLECTIBLE_SACRED_ORB] = 0.5,
        }
    ),
    [ItemPoolType.POOL_WOODEN_CHEST] = Pool.new(ItemPoolType.POOL_WOODEN_CHEST, 1, nil),
    [ItemPoolType.POOL_PLANETARIUM] = Pool.new(ItemPoolType.POOL_PLANETARIUM, 1, nil),
    [ItemPoolType.POOL_SHELL_GAME] = Pool:new(ItemPoolType.POOL_SHELL_GAME, 1, nil),
    [ItemPoolType.POOL_BEGGAR] = Pool:new(ItemPoolType.POOL_BEGGAR, 0.5, nil),
    [ItemPoolType.POOL_DEMON_BEGGAR] = Pool:new(ItemPoolType.POOL_DEMON_BEGGAR, 0.5, nil),
    [ItemPoolType.POOL_ULTRA_SECRET] = Pool:new(ItemPoolType.POOL_ULTRA_SECRET, 0.4, nil),
    [ItemPoolType.POOL_CRANE_GAME] = Pool:new(ItemPoolType.POOL_CRANE_GAME, 0.1, nil),
}
