# Get forward vector
summon area_effect_cloud ~ ~ ~ {Tags:["VectorGetter"]}
tp @e[type=area_effect_cloud,tag=VectorGetter,distance=..0.1] 0.0 0.0 0.0 ~ 0
execute if entity @s[tag=RAFTControllerNorth] as @e[type=area_effect_cloud,tag=VectorGetter] at @s run tp @s ^ ^ ^-0.01
execute if entity @s[tag=RAFTControllerEast] as @e[type=area_effect_cloud,tag=VectorGetter] at @s run tp @s ^0.01 ^ ^
execute if entity @s[tag=RAFTControllerSouth] as @e[type=area_effect_cloud,tag=VectorGetter] at @s run tp @s ^ ^ ^0.01
execute if entity @s[tag=RAFTControllerWest] as @e[type=area_effect_cloud,tag=VectorGetter] at @s run tp @s ^-0.01 ^ ^
execute as @e[type=area_effect_cloud,tag=VectorGetter] at @s run function code/get_vector
kill @e[type=area_effect_cloud,tag=VectorGetter]

# Get current control item motion (replaces player motion in WorkSpace)
execute store result score MotionX WorkSpace run data get entity @s Motion[0] 32768
execute store result score MotionZ WorkSpace run data get entity @s Motion[2] 32768
# Add direction vector
scoreboard players operation MotionX WorkSpace += ForwardX WorkSpace
scoreboard players operation MotionZ WorkSpace += ForwardZ WorkSpace
# Store back
execute store result entity @s Motion[0] double 0.000030517578125 run scoreboard players get MotionX WorkSpace
execute store result entity @s Motion[2] double 0.000030517578125 run scoreboard players get MotionZ WorkSpace