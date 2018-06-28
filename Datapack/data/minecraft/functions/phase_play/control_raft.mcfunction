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
execute if entity @s[tag=ControllingRaft1] positioned ~ ~40 ~ as @e[type=experience_orb,tag=RAFTController,tag=Raft1,sort=nearest,limit=1,distance=..32] at @s run function raft/move/move_control
execute if entity @s[tag=ControllingRaft2] positioned ~ ~40 ~ as @e[type=experience_orb,tag=RAFTController,tag=Raft2,sort=nearest,limit=1,distance=..32] at @s run function raft/move/move_control
execute if entity @s[tag=ControllingRaft3] positioned ~ ~40 ~ as @e[type=experience_orb,tag=RAFTController,tag=Raft3,sort=nearest,limit=1,distance=..32] at @s run function raft/move/move_control
execute if entity @s[tag=ControllingRaft4] positioned ~ ~40 ~ as @e[type=experience_orb,tag=RAFTController,tag=Raft4,sort=nearest,limit=1,distance=..32] at @s run function raft/move/move_control
execute if entity @s[tag=ControllingRaft5] positioned ~ ~40 ~ as @e[type=experience_orb,tag=RAFTController,tag=Raft5,sort=nearest,limit=1,distance=..32] at @s run function raft/move/move_control
execute if entity @s[tag=ControllingRaft6] positioned ~ ~40 ~ as @e[type=experience_orb,tag=RAFTController,tag=Raft6,sort=nearest,limit=1,distance=..32] at @s run function raft/move/move_control
execute if entity @s[tag=ControllingRaft7] positioned ~ ~40 ~ as @e[type=experience_orb,tag=RAFTController,tag=Raft7,sort=nearest,limit=1,distance=..32] at @s run function raft/move/move_control
execute if entity @s[tag=ControllingRaft8] positioned ~ ~40 ~ as @e[type=experience_orb,tag=RAFTController,tag=Raft8,sort=nearest,limit=1,distance=..32] at @s run function raft/move/move_control
execute if entity @s[tag=ControllingRaft9] positioned ~ ~40 ~ as @e[type=experience_orb,tag=RAFTController,tag=Raft9,sort=nearest,limit=1,distance=..32] at @s run function raft/move/move_control
execute if entity @s[tag=ControllingRaft10] positioned ~ ~40 ~ as @e[type=experience_orb,tag=RAFTController,tag=Raft10,sort=nearest,limit=1,distance=..32] at @s run function raft/move/move_control
execute if entity @s[tag=ControllingRaft11] positioned ~ ~40 ~ as @e[type=experience_orb,tag=RAFTController,tag=Raft11,sort=nearest,limit=1,distance=..32] at @s run function raft/move/move_control
execute if entity @s[tag=ControllingRaft12] positioned ~ ~40 ~ as @e[type=experience_orb,tag=RAFTController,tag=Raft12,sort=nearest,limit=1,distance=..32] at @s run function raft/move/move_control