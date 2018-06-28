# Get action number
scoreboard players set PigAction WorkSpace 0
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["bay"]}}}] run scoreboard players set PigAction WorkSpace 1
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["rocks"]}}}] run scoreboard players set PigAction WorkSpace 2
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["sea"]}}}] run scoreboard players set PigAction WorkSpace 3
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["glaciers"]}}}] run scoreboard players set PigAction WorkSpace 4
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["random"]}}}] run scoreboard players set PigAction WorkSpace 5

execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["pirate_hat"]}}}] run scoreboard players set PigAction WorkSpace 6
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["eyepatch"]}}}] run scoreboard players set PigAction WorkSpace 7
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["no_hat"]}}}] run scoreboard players set PigAction WorkSpace 14

execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["spectate"]}}}] run scoreboard players set PigAction WorkSpace 8
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["join"]}}}] run scoreboard players set PigAction WorkSpace 9
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["red"]}}}] run scoreboard players set PigAction WorkSpace 10
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["blue"]}}}] run scoreboard players set PigAction WorkSpace 11
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["green"]}}}] run scoreboard players set PigAction WorkSpace 12
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["yellow"]}}}] run scoreboard players set PigAction WorkSpace 13

execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["build_time"]}}}] run scoreboard players set PigAction WorkSpace 15

# Perform action
execute if score PigAction WorkSpace matches 1 run function phase_lobby/pig_actions/map_bay
execute if score PigAction WorkSpace matches 2 run function phase_lobby/pig_actions/map_rocks
execute if score PigAction WorkSpace matches 3 run function phase_lobby/pig_actions/map_sea
execute if score PigAction WorkSpace matches 4 run function phase_lobby/pig_actions/map_glaciers
execute if score PigAction WorkSpace matches 5 run function phase_lobby/pig_actions/map_random

execute if score PigAction WorkSpace matches 6 run function phase_lobby/pig_actions/equip_pirate_hat
execute if score PigAction WorkSpace matches 7 run function phase_lobby/pig_actions/equip_eyepatch
execute if score PigAction WorkSpace matches 14 run function phase_lobby/pig_actions/equip_no_hat

execute if score PigAction WorkSpace matches 8 run function phase_lobby/pig_actions/spectate
execute if score PigAction WorkSpace matches 9 run function phase_lobby/pig_actions/join
execute if score PigAction WorkSpace matches 10 run function phase_lobby/pig_actions/join_red
execute if score PigAction WorkSpace matches 11 run function phase_lobby/pig_actions/join_blue
execute if score PigAction WorkSpace matches 12 run function phase_lobby/pig_actions/join_green
execute if score PigAction WorkSpace matches 13 run function phase_lobby/pig_actions/join_yellow

execute if score PigAction WorkSpace matches 15 run function phase_lobby/pig_actions/change_build_time

# Effects
execute if score PigAction WorkSpace matches 0..5 run playsound entity.item_frame.rotate_item master @s ~ ~ ~ 2 0.5
execute if score PigAction WorkSpace matches 6..7 run playsound item.armor.equip_elytra master @s ~ ~ ~ 2 0.8
execute if score PigAction WorkSpace matches 8..13 run playsound entity.generic.drink master @s ~ ~ ~ 2 0.6
execute if score PigAction WorkSpace matches 8..13 run effect give @s slowness 1 20 true

# Go back to previous location
scoreboard players operation @e[type=area_effect_cloud,tag=LOBBYPlayerMarker,distance=..8] PlayerID -= @s PlayerID
teleport @s @e[type=area_effect_cloud,tag=LOBBYPlayerMarker,scores={PlayerID=0},distance=..8,limit=1]
scoreboard players operation @e[type=area_effect_cloud,tag=LOBBYPlayerMarker,distance=..8] PlayerID += @s PlayerID