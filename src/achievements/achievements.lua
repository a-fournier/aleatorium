local KillAchievement = require("src/achievements/kill_achievement")

return {
    -- [1] = Have 7 or more Red Heart Containers at one time
    -- [2] = Hold 55 Coins at one time
    [3] = KillAchievement:new(3, { items = 0, sprites = {"achievement_judas"} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [4] = KillAchievement:new(4, { items = 1, sprites = {"achievement_thewomb", "achievement_harbingers"} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_MOM, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    -- [5] = Included in 4
    -- [6] = Included in 4
    [7] = KillAchievement:new(7, { items = 1, sprites = {} }, { [-1] = { times = 1, operator = 'OR' , entities = {{type = EntityType.ENTITY_FAMINE, times = 1, variant = -1 }, {type = EntityType.ENTITY_WAR, times = 1, variant = -1 }, {type = EntityType.ENTITY_PESTILENCE, times = 1, variant = -1 }, {type = EntityType.ENTITY_DEATH, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [8] = KillAchievement:new(8, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 3, variant = -1 }}}, difficulty = -1 }):register(),
    -- 9 Complete the Boss Rush as Azazel
    [10] = KillAchievement:new(10, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 8, variant = -1 }}}, difficulty = -1 }):register(),
    [11] = KillAchievement:new(11, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 9, variant = -1 }}}, difficulty = -1 }):register(),
    -- [12] = Destroy 100 Tinted Rocks
    -- [13] = Beat Chapter 1
    -- [14] = Beat Chapter 2
    [15] = KillAchievement:new(15, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_LOKI, times = 1, variant = -1 } } }, difficulty = -1 }):register(),
    -- [16] = Beat Chapter 1 40 times
    -- [17] = Beat Chapter 2 30 times
    -- [18] = Beat Chapter 3 20 times
    -- [19] = Make a Super Bandage Girl by picking up 4 copies of Ball of Bandages in one run
    [20] = KillAchievement:new(20, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC,  times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [21] = KillAchievement:new(21, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    [22] = KillAchievement:new(22, { items = 1, sprites = {} }, { [-1] = { times = 1, operator = 'AND', entities = {{type = EntityType.ENTITY_ENVY, times = 1, variant = -1 }, [EntityType.ENTITY_GLUTTONY] = {type = EntityType.ENTITY_ENVY, times = 1, variant = -1 }, {type = EntityType.ENTITY_WRATH, times = 1, variant = -1 }, {type = EntityType.ENTITY_PRIDE, times = 1, variant = -1 }, {type = EntityType.ENTITY_LUST, times = 1, variant = -1 }, {type = EntityType.ENTITY_GREED, times = 1, variant = -1 }, {type = EntityType.ENTITY_SLOTH, times = 1, variant = -1 } }}, difficulty = -1 }):register(),
    -- TODO : allow variant mob
    -- [23] = Defeat Gish
    -- [24] = Defeat Steven
    [24] = KillAchievement:new(24, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_GEMINI, times = 1, variant = 1 }, { type = EntityType.ENTITY_GEMINI, times = 1, variant = 11 }}}, difficulty = -1 }):register(),
    -- [25] = Defeat C.H.A.D.
    -- [26] = Visit 10 Arcades
    -- [27] = Defeat Mom, Mom's Heart, or It Lives! using The Bible or (in Repentance) XV - The Devil?
    -- [28] = Destroy 10 Tinted Rocks
    [29] = KillAchievement:new(29, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = -1 }}}, difficulty = -1 }):register(),
    -- [30] = Die 100 times
    -- [31] = Pick up any 2 items that have the 'dead' item tag
    [32] = KillAchievement:new(32, { items = 0, sprites = {"achievement_bluebaby"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 10, variant = -1 }}}, difficulty = -1 }):register(),
    [33] = KillAchievement:new(33, { items = 0, sprites = {"achievement_everythingisterrible"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 5, variant = -1 }}}, difficulty = -1 }):register(),
    [34] = KillAchievement:new(34, { items = 0, sprites = {"achievement_itlives"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 11, variant = -1 }}}, difficulty = -1 }):register(),
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
    -- [49] = Defeat ??? as Isaac
    -- [50] = Defeat ??? as Magdalene

    --[0] = KillAchievement:new(0, { items = 0, sprites = {} }, { operator = 'OR', [PlayerType.PLAYER_ISAAC] = { times = 1, operator = 'OR', entities = { [EntityType.ENTITY_FLY] = 2, [EntityType.ENTITY_POOTER] = 1 } }, difficulty = Difficulty.DIFFICULTY_HARD }):register()
}
