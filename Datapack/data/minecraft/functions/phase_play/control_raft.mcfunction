# Get forward/left vector
summon area_effect_cloud ~ ~ ~ {Tags:["VectorGetter"]}
tp @e[type=area_effect_cloud,tag=VectorGetter,distance=..0.1] 0.0 0.0 0.0 ~ 0
execute as @e[type=area_effect_cloud,tag=VectorGetter] at @s run function code/get_vectors
kill @e[type=area_effect_cloud,tag=VectorGetter]

# Find how much of player motion is in those directions
execute store result score MotionX WorkSpace run data get entity @s Motion[0] 32768
execute store result score MotionZ WorkSpace run data get entity @s Motion[2] 32768

scoreboard players operation ForwardX WorkSpace *= MotionX WorkSpace
scoreboard players operation ForwardZ WorkSpace *= MotionZ WorkSpace

scoreboard players operation LeftX WorkSpace *= MotionX WorkSpace
scoreboard players operation LeftZ WorkSpace *= MotionZ WorkSpace

scoreboard players operation Forwardness WorkSpace = ForwardX WorkSpace
scoreboard players operation Forwardness WorkSpace += ForwardZ WorkSpace
scoreboard players operation Leftness WorkSpace = LeftX WorkSpace
scoreboard players operation Leftness WorkSpace += LeftZ WorkSpace

# Rotate (Leftness>10000000) and add motion to (Forwardness>10000000) RAFTController
#TODO: Base on raft ID rather than this error-prone position thing
execute positioned ~ ~40 ~ as @e[type=xp_orb,tag=RAFTController,sort=nearest,limit=1,distance=..32] at @s run function raft/move/move_control