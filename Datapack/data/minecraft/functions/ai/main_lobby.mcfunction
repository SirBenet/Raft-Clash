# Update air for smoother movement
data merge entity @s[scores={AirCycle=0}] {Air:0s}
data merge entity @s[scores={AirCycle=1}] {Air:1s}
scoreboard players add @s AirCycle 1
scoreboard players set @s[scores={AirCycle=2}] AirCycle 0

# AEC move markers
tag @e[type=area_effect_cloud,tag=AIMove,nbt={Age:-1}] add AIMoveActive
execute as @e[type=area_effect_cloud,tag=AIMoveActive,limit=1,sort=nearest] at @s run teleport 0-0-0-0-2 ~ ~-0.74 ~ ~ ~