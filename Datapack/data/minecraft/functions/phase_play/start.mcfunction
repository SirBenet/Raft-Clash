gamerule doTileDrops false
gamerule naturalRegeneration false
data merge entity @s {CustomName:"\"PhasePlay\""}
scoreboard players set Item Timer 0

bossbar set build_time visible false

# Set world border
execute if entity @s[tag=MAPBay] run worldborder center 400 -48
execute if entity @s[tag=MAPGlaciers] run worldborder center 3568 -48
execute if entity @s[tag=MAPRocks] run worldborder center 1459 -48
execute if entity @s[tag=MAPSea] run worldborder center 2512 -48
worldborder set 510

# Remove build barriers and platform
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChosen] run fill ~-8 ~-1 ~-8 ~7 ~-1 ~7 water replace #platform
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChosenAI] run fill ~-8 ~-1 ~-8 ~7 ~-1 ~7 water replace #platform
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChosen] run fill ~8 ~ ~7 ~8 ~32 ~-8 air replace barrier
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChosen] run fill ~7 ~ ~8 ~-8 ~32 ~8 air replace barrier
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChosen] run fill ~-9 ~ ~7 ~-9 ~32 ~-8 air replace barrier
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChosen] run fill ~7 ~ ~-9 ~-8 ~32 ~-9 air replace barrier
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChosen] run fill ~7 ~32 ~7 ~-8 ~32 ~-8 air replace barrier

# Entityze rafts (AI first, since a couple things rely on it having ID 1)
scoreboard players set @s RaftNumTotal 0
execute as @e[type=area_effect_cloud,tag=GAMESpawnMarkerChosenAI] at @s run function raft/create/start
execute as @e[type=area_effect_cloud,tag=GAMESpawnMarkerChosen] at @s run function raft/create/start

# Don't cull blocks below gravity blocks
execute at @e[type=armor_stand,tag=RAFTHasGravity] positioned ~ ~-1.5 ~ run tag @e[type=shulker,tag=RAFTBlock,distance=..1.1] add RAFTDontCull

# Per-player stuff
execute as @a[gamemode=!spectator] run function phase_play/start_player

# Start AI
execute as @e[tag=AIGame] run function ai/start_play

# Messages
title @a title {"text":"Start!","color":"green"}
tellraw @a {"text":"Start!","color":"green"}
execute if entity @s[tag=FFA] run tellraw @a {"text":"Sink your opponent's treasure chest by destroying the blocks below it, then eliminate them!","color":"dark_green"}
execute if entity @s[tag=TEAM] run tellraw @a {"text":"Sink the other team's treasure chest by destroying the blocks below it, then eliminate them!","color":"dark_green"}
execute if entity @s[tag=AI] run tellraw @a {"text":"Sink Captain Coldblood by destroying the blocks below them! ","color":"dark_green"}