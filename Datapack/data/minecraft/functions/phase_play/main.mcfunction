# Kill damaged blocks, move armor stands
scoreboard players add @s RAFTMoveTimer 1
execute if entity @s[scores={RAFTMoveTimer=2}] as @e[type=shulker,nbt={AbsorptionAmount:0.0f}] at @s run function raft/block_destroy
execute if entity @s[scores={RAFTMoveTimer=3}] as @e[type=armor_stand,tag=RAFTHasGravity] at @s run function raft/move/check_if_falling
execute if entity @s[scores={RAFTMoveTimer=3}] as @e[type=xp_orb,tag=RAFTController] at @s run function raft/move/move_raft
scoreboard players set @s[scores={RAFTMoveTimer=3}] RAFTMoveTimer 0

# Culling
scoreboard players add @s RAFTCullTimer 1
execute if entity @s[scores={RAFTCullTimer=1}] run kill @e[type=armor_stand,tag=RAFTDyingCullStand]
execute if entity @s[scores={RAFTCullTimer=1}] run function raft/culling
execute if entity @s[scores={RAFTCullTimer=2}] as @e[type=armor_stand,tag=RAFTBlockStandJustUnculled] at @s run function raft/update_unculled_stands
execute if entity @s[scores={RAFTCullTimer=2}] as @e[type=shulker,tag=RAFTBlockJustUnculled] at @s run function raft/update_unculled_shulkers
scoreboard players set @s[scores={RAFTCullTimer=6}] RAFTCullTimer 0

# Cannonball effects
execute as @e[type=villager,tag=GAMECannonball] at @s run function phase_play/cannonball
# Arrow effects
execute as @e[type=arrow] at @s run function phase_play/arrow

# Per player stuff
execute as @a[gamemode=!spectator] at @s run function phase_play/per_player

# Move players, keep helms synced (weird desync stuff fix)
scoreboard players add @s PlayerMoveCycle 1
execute if entity @s[scores={PlayerMoveCycle=5}] as @e[type=area_effect_cloud,tag=RAFTHelmCloud] run data merge entity @s {Air:0s}
execute if entity @s[scores={PlayerMoveCycle=10}] as @a run function phase_play/check_raft_on
execute if entity @s[scores={PlayerMoveCycle=15}] as @e[type=area_effect_cloud,tag=RAFTHelmCloud] run data merge entity @s {Air:1s}
execute if entity @s[scores={PlayerMoveCycle=20}] as @a run function phase_play/check_raft_on
scoreboard players set @s[scores={PlayerMoveCycle=21..}] PlayerMoveCycle -1

# AI main function, from Captain Coldblood
execute if entity @s[tag=AI] as @e[type=stray,tag=AIGame,limit=1,sort=nearest] at @s run function ai/main_play

# Random items
scoreboard players add @s ItemTimer 1
execute if entity @s[scores={ItemTimer=30}] run function phase_play/random_item

# Check chests valid (not inside blocks), kill stuff going outside arena
scoreboard players add @s ValidityTimer 1
execute if entity @s[scores={ValidityTimer=40}] run function phase_play/validity_check

# Check win
scoreboard players add @s WinCheckTimer 1
execute if entity @s[scores={WinCheckTimer=40},tag=!AI] run function phase_play/win_check
execute if entity @s[scores={WinCheckTimer=40},tag=AI] run function phase_play/win_check_ai