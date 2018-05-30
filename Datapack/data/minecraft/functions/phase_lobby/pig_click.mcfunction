# Get action number
scoreboard players set @s PigAction 0
scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["bay"]}}}] PigAction 1
scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["rocks"]}}}] PigAction 2
scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["sea"]}}}] PigAction 3
scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["glaciers"]}}}] PigAction 4
scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["random"]}}}] PigAction 5

scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["pirate_hat"]}}}] PigAction 6
scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["eyepatch"]}}}] PigAction 7
scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["no_hat"]}}}] PigAction 14

scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["spectate"]}}}] PigAction 8
scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["join"]}}}] PigAction 9
scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["red"]}}}] PigAction 10
scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["blue"]}}}] PigAction 11
scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["green"]}}}] PigAction 12
scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["yellow"]}}}] PigAction 13

scoreboard players set @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["build_time"]}}}] PigAction 15

# Perform action
execute if entity @s[scores={PigAction=1}] run function phase_lobby/pig_actions/map_bay
execute if entity @s[scores={PigAction=2}] run function phase_lobby/pig_actions/map_rocks
execute if entity @s[scores={PigAction=3}] run function phase_lobby/pig_actions/map_sea
execute if entity @s[scores={PigAction=4}] run function phase_lobby/pig_actions/map_glaciers
execute if entity @s[scores={PigAction=5}] run function phase_lobby/pig_actions/map_random

execute if entity @s[scores={PigAction=6}] run function phase_lobby/pig_actions/equip_pirate_hat
execute if entity @s[scores={PigAction=7}] run function phase_lobby/pig_actions/equip_eyepatch
execute if entity @s[scores={PigAction=14}] run function phase_lobby/pig_actions/equip_no_hat

execute if entity @s[scores={PigAction=8}] run function phase_lobby/pig_actions/spectate
execute if entity @s[scores={PigAction=9}] run function phase_lobby/pig_actions/join
execute if entity @s[scores={PigAction=10}] run function phase_lobby/pig_actions/join_red
execute if entity @s[scores={PigAction=11}] run function phase_lobby/pig_actions/join_blue
execute if entity @s[scores={PigAction=12}] run function phase_lobby/pig_actions/join_green
execute if entity @s[scores={PigAction=13}] run function phase_lobby/pig_actions/join_yellow

execute if entity @s[scores={PigAction=15}] run function phase_lobby/pig_actions/change_build_time

# Effects
playsound entity.arrow.hit_player master @s[scores={PigAction=0..5}] ~ ~ ~ 2 0.5
playsound item.armor.equip_elytra master @s[scores={PigAction=6..7}] ~ ~ ~ 2 0.8
playsound entity.generic.drink master @s[scores={PigAction=8..13}] ~ ~ ~ 2 0.6
effect give @s[scores={PigAction=8..13}] slowness 1 20 true

# Go back to previous location
scoreboard players operation @e[type=area_effect_cloud,tag=LOBBYPlayerMarker,distance=..8] PlayerID -= @s PlayerID
teleport @s @e[type=area_effect_cloud,tag=LOBBYPlayerMarker,scores={PlayerID=0},distance=..8,limit=1]
scoreboard players operation @e[type=area_effect_cloud,tag=LOBBYPlayerMarker,distance=..8] PlayerID += @s PlayerID