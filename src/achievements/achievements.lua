local KillAchievement = require("src/achievements/kill_achievement")

return {
    -- [1] = Have 7 or more Red Heart Containers at one time
    -- [2] = Hold 55 Coins at one time
    [3] = KillAchievement:new(3, { items = 0, sprites = {"achievement_judas"} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [4] = KillAchievement:new(4, { items = 1, sprites = {"achievement_thewomb", "achievement_harbingers"} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_MOM, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    -- [5] = Included in 4
    -- [6] = Included in 4
    [7] = KillAchievement:new(7, { items = 1, sprites = {} }, { [-1] = { times = 1, operator = 'OR' , entities = {{type = EntityType.ENTITY_FAMINE, times = 1, variant = -1 }, {type = EntityType.ENTITY_WAR, times = 1, variant = -1 }, {type = EntityType.ENTITY_PESTILENCE, times = 1, variant = -1 }, {type = EntityType.ENTITY_DEATH, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [8] = KillAchievement:new(8, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 3, variant = 0 }}}, difficulty = 0 }):register(),
    -- 9 Complete the Boss Rush as Azazel
    [10] = KillAchievement:new(10, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 8, variant = 0 }}}, difficulty = 0 }):register(),
    [11] = KillAchievement:new(11, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 9, variant = 0 }}}, difficulty = 0 }):register(),
    -- [12] = Destroy 100 Tinted Rocks
    -- [13] = Beat Chapter 1
    -- [14] = Beat Chapter 2
    [15] = KillAchievement:new(15, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_LOKI, times = 1, variant = -1 } } }, difficulty = -1 }):register(),
    -- [16] = Beat Chapter 1 40 times
    -- [17] = Beat Chapter 2 30 times
    -- [18] = Beat Chapter 3 20 times
    -- [19] = Make a Super Bandage Girl by picking up 4 copies of Ball of Bandages in one run
    [20] = KillAchievement:new(20, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC,  times = 1, variant = 0 }}}, difficulty = -1 }):register(),
    [21] = KillAchievement:new(21, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }):register(),
    [22] = KillAchievement:new(22, { items = 1, sprites = {} }, { [-1] = { times = 1, operator = 'AND', entities = {{type = EntityType.ENTITY_ENVY, times = 1, variant = -1 }, {type = EntityType.ENTITY_GLUTTONY, times = 1, variant = -1 }, {type = EntityType.ENTITY_WRATH, times = 1, variant = -1 }, {type = EntityType.ENTITY_PRIDE, times = 1, variant = -1 }, {type = EntityType.ENTITY_LUST, times = 1, variant = -1 }, {type = EntityType.ENTITY_GREED, times = 1, variant = -1 }, {type = EntityType.ENTITY_SLOTH, times = 1, variant = -1 } }}, difficulty = -1 }):register(),
    [23] = KillAchievement:new(23, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_MONSTRO2, times = 1, variant = 1 }}}, difficulty = -1 }):register(),
    [24] = KillAchievement:new(24, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_GEMINI, times = 1, variant = 1 }, { type = EntityType.ENTITY_GEMINI, times = 1, variant = 11 }}}, difficulty = -1 }):register(),
    [24] = KillAchievement:new(24, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_CHUB, times = 1, variant = 1 }, { type = EntityType.ENTITY_GEMINI, times = 1, variant = 11 }}}, difficulty = -1 }):register(),
    -- [26] = Visit 10 Arcades
    -- [27] = Defeat Mom, Mom's Heart, or It Lives! using The Bible or (in Repentance) XV - The Devil?
    -- [28] = Destroy 10 Tinted Rocks
    [29] = KillAchievement:new(29, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }):register(),
    -- [30] = Die 100 times
    -- [31] = Pick up any 2 items that have the 'dead' item tag
    [32] = KillAchievement:new(32, { items = 0, sprites = {"achievement_bluebaby"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 10, variant = 0 }}}, difficulty = -1 }):register(),
    [33] = KillAchievement:new(33, { items = 0, sprites = {"achievement_everythingisterrible"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 5, variant = 0 }}}, difficulty = -1 }):register(),
    [34] = KillAchievement:new(34, { items = 0, sprites = {"achievement_itlives"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 11, variant = 0 }}}, difficulty = -1 }):register(),
    -- [35] = Obtain three Yes Mother? items in one run
    -- [36] = Use XIII - Death 4 times
    -- [37] = Beat Chapter 1 without taking damage
    -- [38] = Beat Chapter 2 without taking damage
    -- [39] = Beat Chapter 3 without taking damage
    -- [40] = Beat Chapter 4 without taking damage
    -- [41] = Defeat ??? and The Lamb
    -- [42] = Don't pick up any Hearts for 2 floors in a row
    [43] = KillAchievement:new(43, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [44] = KillAchievement:new(44, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [45] = KillAchievement:new(45, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [46] = KillAchievement:new(46, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [47] = KillAchievement:new(47, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [48] = KillAchievement:new(48, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [49] = KillAchievement:new(49, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }):register(),
    [50] = KillAchievement:new(50, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }):register(),
    [51] = KillAchievement:new(51, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [52] = KillAchievement:new(52, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [53] = KillAchievement:new(53, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }):register(),
    [54] = KillAchievement:new(54, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }):register(),
    [55] = KillAchievement:new(55, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }):register(),
    [56] = KillAchievement:new(56, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [57] = KillAchievement:new(54, { items = 0, sprites = {"achievement_thepolaroid"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 5, variant = 0 }}}, difficulty = -1 }):register(),
    -- [58] = Pick up both Key Pieces from the Angels in one run
    -- [59] = Donate 900 coins to the Donation Machine
    -- [60] = Complete Beans! (challenge #13)
    [61] = KillAchievement:new(61, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_SHOPKEEPER, times = 20, variant = -1 }}}, difficulty = -1 }):register(),
    -- [62] = Complete The Family Man (challenge #19)
    -- [63] = Complete It's in the Cards (challenge #14)
    -- [64] = Play either Shell Game or (in Repentance) Hell Game 100 times
    -- [65] = Become Guppy
    -- [66] = Take 10 Angel Room items
    -- [67] = Complete 2 floors in a row without taking damage
    [68] = KillAchievement:new(68, { items = 0, sprites = {"TODO"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 10, variant = 0 }}}, difficulty = -1 }):register(),
    -- [69] = Collect all non-DLC items in the game, and unlock all of the secrets and endings (minus The Lost and his 6 unlockable items)
    -- [70] = Complete the Boss Rush as Isaac
    [71] = KillAchievement:new(71, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [72] = KillAchievement:new(72, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [73] = KillAchievement:new(73, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [74] = KillAchievement:new(74, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [75] = KillAchievement:new(75, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }):register(),
    [76] = KillAchievement:new(76, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }):register(),
    [77] = KillAchievement:new(77, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_PRIDE, times = 1, variant = 1 }}}, [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, operator = 'OR', difficulty = -1 }):register(),
    [78] = KillAchievement:new(78, { items = 0, sprites = {"achievement_thenegative"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 5, variant = -1 }}}, difficulty = -1 }):register(),
    --[79] = Make 3 Deals with the Devil in one run
    --[80] = Have 4 or more Soul Hearts at one time
    --[81] = Complete Chapter 4
    --[82] = Die in a Sacrifice Room while holding Missing Poster
    --[83] = Complete Chapter 6 without taking damage
    --[84] = Collect every non-DLC item, and unlock every secret and ending.
    --[85] = Destroy 100 rocks
    --[86] = Complete the Boss Rush as Magdalene

    --[0] = KillAchievement:new(0, { items = 0, sprites = {} }, { operator = 'OR', [PlayerType.PLAYER_ISAAC] = { times = 1, operator = 'OR', entities = { [EntityType.ENTITY_FLY] = 2, [EntityType.ENTITY_POOTER] = 1 } }, difficulty = Difficulty.DIFFICULTY_HARD }):register()
}
