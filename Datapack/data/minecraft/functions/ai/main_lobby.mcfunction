# Update air for smoother movement
execute if score AirCycle Timer matches 0 run data merge entity @s {Air:0s}
execute if score AirCycle Timer matches 1 run data merge entity @s {Air:1s}
scoreboard players add AirCycle Timer 1
execute if score AirCycle Timer matches 2 run scoreboard players set AirCycle Timer 0

# AEC move markers
tag @e[type=area_effect_cloud,tag=AIMove,nbt={Age:-1}] add AIMoveActive
execute as @e[type=area_effect_cloud,tag=AIMoveActive,limit=1,sort=nearest] at @s run teleport 0-0-0-0-2 ~ ~-0.74 ~ ~ ~