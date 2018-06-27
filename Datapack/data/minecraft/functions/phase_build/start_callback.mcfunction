# After map loaded

data merge entity @s {CustomName:"\"PhaseBuild\""}

# Add mode tag
tag @s remove FFA
tag @s remove TEAM
tag @s remove AI
execute if block -12 17 6 gray_carpet run tag @s add FFA
execute if block -12 17 6 green_carpet run tag @s add TEAM
execute if block -12 17 6 yellow_carpet run tag @s add AI

# Choose spawns based on mode
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerCandidate] remove GAMESpawnMarkerChosenAI
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerCandidate] remove GAMESpawnMarkerChosen
execute if entity @s[tag=FFA] run function phase_build/choose_spawn/ffas
execute if entity @s[tag=TEAM] run function phase_build/choose_spawn/teams
execute if entity @s[tag=AI] run function phase_build/choose_spawn/ai
tp @a[gamemode=spectator] @a[gamemode=!spectator,limit=1,sort=nearest]

# Barrier walls on GAMESpawnMarkerChosen
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChosen] run fill ~8 ~ ~7 ~8 ~32 ~-8 barrier replace air
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChosen] run fill ~7 ~ ~8 ~-8 ~32 ~8 barrier replace air
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChosen] run fill ~-9 ~ ~7 ~-9 ~32 ~-8 barrier replace air
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChosen] run fill ~7 ~ ~-9 ~-8 ~32 ~-9 barrier replace air
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChosen] run fill ~7 ~32 ~7 ~-8 ~32 ~-8 barrier replace air

# Per-player stuff
execute as @a[gamemode=!spectator] at @s run function phase_build/start_player

# Give out treasure chests and helms (FFA: Everyone gets one, TEAM & AI: Random team member gets one)
give @a[gamemode=!spectator,team=play] acacia_fence_gate{display:{Name:"{\"text\":\"Treasure Chest\",\"italic\":false}",Lore:["§r§7Acts as your respawn point","§r§7Has gravity"]},HideFlags:16,CanPlaceOn:["minecraft:emerald_block","minecraft:iron_block","minecraft:diamond_block","minecraft:redstone_block","minecraft:gold_block","minecraft:red_wool","minecraft:lime_wool","minecraft:cyan_wool","minecraft:yellow_wool","minecraft:light_gray_wool","minecraft:oak_planks","minecraft:acacia_planks","minecraft:jungle_planks","minecraft:dark_oak_planks","minecraft:birch_planks","minecraft:acacia_fence_gate","minecraft:jungle_fence_gate","minecraft:birch_fence_gate","minecraft:barrier","minecraft:glass","minecraft:red_stained_glass","minecraft:cyan_stained_glass","minecraft:lime_stained_glass","minecraft:yellow_stained_glass"]}
give @r[gamemode=!spectator,team=play_ai] acacia_fence_gate{display:{Name:"{\"text\":\"Treasure Chest\",\"italic\":false}",Lore:["§r§7Acts as your respawn point","§r§7Has gravity"]},HideFlags:16,CanPlaceOn:["minecraft:emerald_block","minecraft:iron_block","minecraft:diamond_block","minecraft:redstone_block","minecraft:gold_block","minecraft:red_wool","minecraft:lime_wool","minecraft:cyan_wool","minecraft:yellow_wool","minecraft:light_gray_wool","minecraft:oak_planks","minecraft:acacia_planks","minecraft:jungle_planks","minecraft:dark_oak_planks","minecraft:birch_planks","minecraft:acacia_fence_gate","minecraft:jungle_fence_gate","minecraft:birch_fence_gate","minecraft:barrier","minecraft:glass","minecraft:red_stained_glass","minecraft:cyan_stained_glass","minecraft:lime_stained_glass","minecraft:yellow_stained_glass"]}
give @r[gamemode=!spectator,team=blue] acacia_fence_gate{display:{Name:"{\"text\":\"Treasure Chest\",\"italic\":false}",Lore:["§r§7Acts as your respawn point","§r§7Has gravity"]},HideFlags:16,CanPlaceOn:["minecraft:emerald_block","minecraft:iron_block","minecraft:diamond_block","minecraft:redstone_block","minecraft:gold_block","minecraft:red_wool","minecraft:lime_wool","minecraft:cyan_wool","minecraft:yellow_wool","minecraft:light_gray_wool","minecraft:oak_planks","minecraft:acacia_planks","minecraft:jungle_planks","minecraft:dark_oak_planks","minecraft:birch_planks","minecraft:acacia_fence_gate","minecraft:jungle_fence_gate","minecraft:birch_fence_gate","minecraft:barrier","minecraft:glass","minecraft:red_stained_glass","minecraft:cyan_stained_glass","minecraft:lime_stained_glass","minecraft:yellow_stained_glass"]}
give @r[gamemode=!spectator,team=red] acacia_fence_gate{display:{Name:"{\"text\":\"Treasure Chest\",\"italic\":false}",Lore:["§r§7Acts as your respawn point","§r§7Has gravity"]},HideFlags:16,CanPlaceOn:["minecraft:emerald_block","minecraft:iron_block","minecraft:diamond_block","minecraft:redstone_block","minecraft:gold_block","minecraft:red_wool","minecraft:lime_wool","minecraft:cyan_wool","minecraft:yellow_wool","minecraft:light_gray_wool","minecraft:oak_planks","minecraft:acacia_planks","minecraft:jungle_planks","minecraft:dark_oak_planks","minecraft:birch_planks","minecraft:acacia_fence_gate","minecraft:jungle_fence_gate","minecraft:birch_fence_gate","minecraft:barrier","minecraft:glass","minecraft:red_stained_glass","minecraft:cyan_stained_glass","minecraft:lime_stained_glass","minecraft:yellow_stained_glass"]}
give @r[gamemode=!spectator,team=green] acacia_fence_gate{display:{Name:"{\"text\":\"Treasure Chest\",\"italic\":false}",Lore:["§r§7Acts as your respawn point","§r§7Has gravity"]},HideFlags:16,CanPlaceOn:["minecraft:emerald_block","minecraft:iron_block","minecraft:diamond_block","minecraft:redstone_block","minecraft:gold_block","minecraft:red_wool","minecraft:lime_wool","minecraft:cyan_wool","minecraft:yellow_wool","minecraft:light_gray_wool","minecraft:oak_planks","minecraft:acacia_planks","minecraft:jungle_planks","minecraft:dark_oak_planks","minecraft:birch_planks","minecraft:acacia_fence_gate","minecraft:jungle_fence_gate","minecraft:birch_fence_gate","minecraft:barrier","minecraft:glass","minecraft:red_stained_glass","minecraft:cyan_stained_glass","minecraft:lime_stained_glass","minecraft:yellow_stained_glass"]}
give @r[gamemode=!spectator,team=yellow] acacia_fence_gate{display:{Name:"{\"text\":\"Treasure Chest\",\"italic\":false}",Lore:["§r§7Acts as your respawn point","§r§7Has gravity"]},HideFlags:16,CanPlaceOn:["minecraft:emerald_block","minecraft:iron_block","minecraft:diamond_block","minecraft:redstone_block","minecraft:gold_block","minecraft:red_wool","minecraft:lime_wool","minecraft:cyan_wool","minecraft:yellow_wool","minecraft:light_gray_wool","minecraft:oak_planks","minecraft:acacia_planks","minecraft:jungle_planks","minecraft:dark_oak_planks","minecraft:birch_planks","minecraft:acacia_fence_gate","minecraft:jungle_fence_gate","minecraft:birch_fence_gate","minecraft:barrier","minecraft:glass","minecraft:red_stained_glass","minecraft:cyan_stained_glass","minecraft:lime_stained_glass","minecraft:yellow_stained_glass"]}

give @a[gamemode=!spectator,team=play] birch_fence_gate{display:{Name:"{\"text\":\"Helm\",\"italic\":false}",Lore:["§r§7Used to control your raft","§r§7Has gravity"]},HideFlags:16,CanPlaceOn:["minecraft:emerald_block","minecraft:iron_block","minecraft:diamond_block","minecraft:redstone_block","minecraft:gold_block","minecraft:red_wool","minecraft:lime_wool","minecraft:cyan_wool","minecraft:yellow_wool","minecraft:light_gray_wool","minecraft:oak_planks","minecraft:acacia_planks","minecraft:jungle_planks","minecraft:dark_oak_planks","minecraft:birch_planks","minecraft:acacia_fence_gate","minecraft:jungle_fence_gate","minecraft:birch_fence_gate","minecraft:barrier","minecraft:glass","minecraft:red_stained_glass","minecraft:cyan_stained_glass","minecraft:lime_stained_glass","minecraft:yellow_stained_glass"]}
give @r[gamemode=!spectator,team=play_ai] birch_fence_gate{display:{Name:"{\"text\":\"Helm\",\"italic\":false}",Lore:["§r§7Used to control your raft","§r§7Has gravity"]},HideFlags:16,CanPlaceOn:["minecraft:emerald_block","minecraft:iron_block","minecraft:diamond_block","minecraft:redstone_block","minecraft:gold_block","minecraft:red_wool","minecraft:lime_wool","minecraft:cyan_wool","minecraft:yellow_wool","minecraft:light_gray_wool","minecraft:oak_planks","minecraft:acacia_planks","minecraft:jungle_planks","minecraft:dark_oak_planks","minecraft:birch_planks","minecraft:acacia_fence_gate","minecraft:jungle_fence_gate","minecraft:birch_fence_gate","minecraft:barrier","minecraft:glass","minecraft:red_stained_glass","minecraft:cyan_stained_glass","minecraft:lime_stained_glass","minecraft:yellow_stained_glass"]}
give @r[gamemode=!spectator,team=blue] birch_fence_gate{display:{Name:"{\"text\":\"Helm\",\"italic\":false}",Lore:["§r§7Used to control your raft","§r§7Has gravity"]},HideFlags:16,CanPlaceOn:["minecraft:emerald_block","minecraft:iron_block","minecraft:diamond_block","minecraft:redstone_block","minecraft:gold_block","minecraft:red_wool","minecraft:lime_wool","minecraft:cyan_wool","minecraft:yellow_wool","minecraft:light_gray_wool","minecraft:oak_planks","minecraft:acacia_planks","minecraft:jungle_planks","minecraft:dark_oak_planks","minecraft:birch_planks","minecraft:acacia_fence_gate","minecraft:jungle_fence_gate","minecraft:birch_fence_gate","minecraft:barrier","minecraft:glass","minecraft:red_stained_glass","minecraft:cyan_stained_glass","minecraft:lime_stained_glass","minecraft:yellow_stained_glass"]}
give @r[gamemode=!spectator,team=red] birch_fence_gate{display:{Name:"{\"text\":\"Helm\",\"italic\":false}",Lore:["§r§7Used to control your raft","§r§7Has gravity"]},HideFlags:16,CanPlaceOn:["minecraft:emerald_block","minecraft:iron_block","minecraft:diamond_block","minecraft:redstone_block","minecraft:gold_block","minecraft:red_wool","minecraft:lime_wool","minecraft:cyan_wool","minecraft:yellow_wool","minecraft:light_gray_wool","minecraft:oak_planks","minecraft:acacia_planks","minecraft:jungle_planks","minecraft:dark_oak_planks","minecraft:birch_planks","minecraft:acacia_fence_gate","minecraft:jungle_fence_gate","minecraft:birch_fence_gate","minecraft:barrier","minecraft:glass","minecraft:red_stained_glass","minecraft:cyan_stained_glass","minecraft:lime_stained_glass","minecraft:yellow_stained_glass"]}
give @r[gamemode=!spectator,team=green] birch_fence_gate{display:{Name:"{\"text\":\"Helm\",\"italic\":false}",Lore:["§r§7Used to control your raft","§r§7Has gravity"]},HideFlags:16,CanPlaceOn:["minecraft:emerald_block","minecraft:iron_block","minecraft:diamond_block","minecraft:redstone_block","minecraft:gold_block","minecraft:red_wool","minecraft:lime_wool","minecraft:cyan_wool","minecraft:yellow_wool","minecraft:light_gray_wool","minecraft:oak_planks","minecraft:acacia_planks","minecraft:jungle_planks","minecraft:dark_oak_planks","minecraft:birch_planks","minecraft:acacia_fence_gate","minecraft:jungle_fence_gate","minecraft:birch_fence_gate","minecraft:barrier","minecraft:glass","minecraft:red_stained_glass","minecraft:cyan_stained_glass","minecraft:lime_stained_glass","minecraft:yellow_stained_glass"]}
give @r[gamemode=!spectator,team=yellow] birch_fence_gate{display:{Name:"{\"text\":\"Helm\",\"italic\":false}",Lore:["§r§7Used to control your raft","§r§7Has gravity"]},HideFlags:16,CanPlaceOn:["minecraft:emerald_block","minecraft:iron_block","minecraft:diamond_block","minecraft:redstone_block","minecraft:gold_block","minecraft:red_wool","minecraft:lime_wool","minecraft:cyan_wool","minecraft:yellow_wool","minecraft:light_gray_wool","minecraft:oak_planks","minecraft:acacia_planks","minecraft:jungle_planks","minecraft:dark_oak_planks","minecraft:birch_planks","minecraft:acacia_fence_gate","minecraft:jungle_fence_gate","minecraft:birch_fence_gate","minecraft:barrier","minecraft:glass","minecraft:red_stained_glass","minecraft:cyan_stained_glass","minecraft:lime_stained_glass","minecraft:yellow_stained_glass"]}

# Detect player count, run corrosponding function to give out build blocks
execute store result score PlayerCount Global if entity @a[gamemode=!spectator]
execute if score PlayerCount Global matches 1 run function phase_build/building_supplies_1
execute if score PlayerCount Global matches 2 run function phase_build/building_supplies_2
execute if score PlayerCount Global matches 3 run function phase_build/building_supplies_3
execute if score PlayerCount Global matches 4 run function phase_build/building_supplies_4
execute if score PlayerCount Global matches 5 run function phase_build/building_supplies_5
execute if score PlayerCount Global matches 6 run function phase_build/building_supplies_6
execute if score PlayerCount Global matches 7 run function phase_build/building_supplies_7
execute if score PlayerCount Global matches 8 run function phase_build/building_supplies_8
execute if score PlayerCount Global matches 9 run function phase_build/building_supplies_9
execute if score PlayerCount Global matches 10 run function phase_build/building_supplies_10
execute if score PlayerCount Global matches 11 run function phase_build/building_supplies_11
execute if score PlayerCount Global matches 12 run function phase_build/building_supplies_12

# Set up timer, less for more players (as they have less blocks)
scoreboard players set BuildTick Timer 20
execute if score PlayerCount Global matches 1 run scoreboard players set BuildSecond Timer 300
execute if score PlayerCount Global matches 2 run scoreboard players set BuildSecond Timer 190
execute if score PlayerCount Global matches 3 run scoreboard players set BuildSecond Timer 135
execute if score PlayerCount Global matches 4 run scoreboard players set BuildSecond Timer 110
execute if score PlayerCount Global matches 5 run scoreboard players set BuildSecond Timer 95
execute if score PlayerCount Global matches 6 run scoreboard players set BuildSecond Timer 85
execute if score PlayerCount Global matches 7 run scoreboard players set BuildSecond Timer 75
execute if score PlayerCount Global matches 8 run scoreboard players set BuildSecond Timer 70
execute if score PlayerCount Global matches 9 run scoreboard players set BuildSecond Timer 70
execute if score PlayerCount Global matches 10 run scoreboard players set BuildSecond Timer 70
execute if score PlayerCount Global matches 11 run scoreboard players set BuildSecond Timer 70
execute if score PlayerCount Global matches 12 run scoreboard players set BuildSecond Timer 70

# Modify timer depending on build timer setting
execute if entity @s[tag=BuildTimeQuick] run scoreboard players operation BuildSecond Timer /= 2 Constants
execute if entity @s[tag=BuildTimeQuick] run scoreboard players add BuildSecond Timer 15

execute if entity @s[tag=BuildTimeLong] run scoreboard players operation BuildSecond Timer *= 4 Constants
execute if entity @s[tag=BuildTimeLong] run scoreboard players operation BuildSecond Timer /= 3 Constants
execute if entity @s[tag=BuildTimeLong] run scoreboard players add BuildSecond Timer 30

# Set up boss bar time display
bossbar set build_time players @a
bossbar set build_time visible true
bossbar set build_time color green

execute store result bossbar build_time max run scoreboard players get BuildSecond Timer
execute store result bossbar build_time value run scoreboard players get BuildSecond Timer

# Reset get-players-unstuck-from-blocks timer
scoreboard players set Unstuck Timer 0