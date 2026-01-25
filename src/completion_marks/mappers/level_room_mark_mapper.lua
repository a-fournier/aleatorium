local MarkIds = require("src/completion_marks/enums/mark_ids")

-- 135 = 1x1 room size
-- 240 = 1x2 room size
-- 448 = 2x2 room size
return {
    vanilla = {
        -- Heart / Mother
        [LevelStage.STAGE4_2] = {
            [StageType.STAGETYPE_ORIGINAL] = {[135] = { [RoomType.ROOM_BOSS] = MarkIds.HEART }},
            [StageType.STAGETYPE_WOTL] = {[135] = { [RoomType.ROOM_BOSS] = MarkIds.HEART }},
            [StageType.STAGETYPE_AFTERBIRTH] = {[135] = { [RoomType.ROOM_BOSS] = MarkIds.HEART }},
            [StageType.STAGETYPE_REPENTANCE] = {[240] = { [RoomType.ROOM_BOSS] = MarkIds.MOTHER }},
            [StageType.STAGETYPE_REPENTANCE_B] = {[240] = { [RoomType.ROOM_BOSSRUSH] = MarkIds.MOTHER }}
        },
        -- Isaac / Satan
        [LevelStage.STAGE5] = {
            [StageType.STAGETYPE_ORIGINAL] = {[135] = { [RoomType.ROOM_BOSS] = MarkIds.SATAN }},
            [StageType.STAGETYPE_WOTL] = {[135] = { [RoomType.ROOM_BOSS] = MarkIds.ISAAC }}
        },
        -- Blue Baby / The Lamb
        [LevelStage.STAGE6] = {
            [StageType.STAGETYPE_ORIGINAL] = {
                [135] = { [RoomType.ROOM_BOSS] = MarkIds.THE_LAMB },
                [240] = { [RoomType.ROOM_BOSS] = MarkIds.MEGA_SATAN }
            },
            [StageType.STAGETYPE_WOTL] = {
                [135] = { [RoomType.ROOM_BOSS] = MarkIds.BLUE_BABY },
                [240] = { [RoomType.ROOM_BOSS] = MarkIds.MEGA_SATAN }
            },
        },
        -- Boss Rush
        [LevelStage.STAGE3_2] = {
            [StageType.STAGETYPE_ORIGINAL] = {[448] = { [RoomType.ROOM_BOSSRUSH] = MarkIds.BOSS_RUSH }},
            [StageType.STAGETYPE_WOTL] = {[448] = { [RoomType.ROOM_BOSSRUSH] = MarkIds.BOSS_RUSH }},
            [StageType.STAGETYPE_AFTERBIRTH] = {[448] = { [RoomType.ROOM_BOSSRUSH] = MarkIds.BOSS_RUSH }},
            [StageType.STAGETYPE_REPENTANCE] = {[448] = { [RoomType.ROOM_BOSSRUSH] = MarkIds.BOSS_RUSH }},
            [StageType.STAGETYPE_REPENTANCE_B] = {[448] = { [RoomType.ROOM_BOSSRUSH] = MarkIds.BOSS_RUSH }}
        },
        -- Hush
        [LevelStage.STAGE4_3] = {
            [StageType.STAGETYPE_ORIGINAL] = {[448] = { [RoomType.ROOM_BOSS] = MarkIds.HUSH }},
        },
        -- Delirium
        [LevelStage.STAGE7] = {
            [StageType.STAGETYPE_ORIGINAL] = {[448] = { [RoomType.ROOM_BOSS] = MarkIds.DELIRIUM }},
        },
        -- The Beast
        [LevelStage.STAGE8] = {
            [StageType.STAGETYPE_WOTL] = {[135] = { [RoomType.ROOM_DUNGEON] = MarkIds.THE_BEAST }},
        }
    }
}
