# Per player stuff
execute as @a[gamemode=!spectator] at @s run function phase_build/per_player

# Speed up timer if all players used up their materials
execute unless entity @a[tag=BUILDHasMaterials,gamemode=!spectator] if score BuildSecond Timer matches 11.. run scoreboard players set BuildTick Timer 1

# Handle dropped items
execute as @e[type=item,tag=!BUILDModified] run data merge entity @s {Tags:["BUILDModified"],Item:{tag:{HideFlags:16,CanPlaceOn:["minecraft:emerald_block","minecraft:iron_block","minecraft:diamond_block","minecraft:redstone_block","minecraft:gold_block","minecraft:red_wool","minecraft:lime_wool","minecraft:cyan_wool","minecraft:yellow_wool","minecraft:light_gray_wool","minecraft:oak_planks","minecraft:acacia_planks","minecraft:jungle_planks","minecraft:dark_oak_planks","minecraft:birch_planks","minecraft:acacia_fence_gate","minecraft:jungle_fence_gate","minecraft:birch_fence_gate","minecraft:barrier","minecraft:glass","minecraft:red_stained_glass","minecraft:cyan_stained_glass","minecraft:lime_stained_glass","minecraft:yellow_stained_glass"]}}}

# Unstuck from blocks
scoreboard players add Unstuck Timer 1
execute if score Unstuck Timer matches 100 as @a[gamemode=!spectator] at @s run tp @s ~ ~0.1 ~

# - - - Countdown to game start
scoreboard players remove BuildTick Timer 1

# Update bossbar
execute if score BuildTick Timer matches 0 store result bossbar build_time value run scoreboard players get BuildSecond Timer
execute if score BuildTick Timer matches 0 run bossbar set build_time name [{"text":"Build time remaining: "},{"score":{"name":"BuildSecond","objective":"Timer"}}]
execute if score BuildSecond Timer matches 30 if score BuildTick Timer matches 0 run bossbar set build_time color yellow
execute if score BuildSecond Timer matches 10 if score BuildTick Timer matches 0 run bossbar set build_time color red

# Warnings
execute if score BuildSecond Timer matches 20 if score BuildTick Timer matches 0 as @a at @s run function phase_build/placement_warnings
execute if score BuildSecond Timer matches 10 if score BuildTick Timer matches 0 run tellraw @a {"text":"10 seconds left, board your rafts!","color":"red"}
execute if score BuildSecond Timer matches ..10 if score BuildTick Timer matches 0 as @a at @s run playsound block.note.pling master @s ~ ~ ~ 2 2

# Start
execute if score BuildSecond Timer matches 0 if score BuildTick Timer matches 0 run function phase_play/start

execute if score BuildTick Timer matches 0 run scoreboard players remove BuildSecond Timer 1
execute if score BuildTick Timer matches 0 run scoreboard players set BuildTick Timer 20