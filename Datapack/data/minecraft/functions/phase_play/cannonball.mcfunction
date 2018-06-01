particle smoke ~ ~1.4 ~ 0.1 0.1 0.1 0.05 1

# Uncull stands around me
execute as @e[type=armor_stand,tag=RAFTCullStand,distance=..5] at @s run function raft/cull_stop
tag @e[type=shulker,tag=RAFTBlock,distance=..5] remove RAFTCull

# Check if stopped
execute store result score MotionX WorkSpace run data get entity @s Motion[0] 4096
execute store result score MotionZ WorkSpace run data get entity @s Motion[2] 4096

scoreboard players operation MotionX WorkSpace *= MotionX WorkSpace
scoreboard players operation MotionZ WorkSpace *= MotionZ WorkSpace

scoreboard players operation MotionX WorkSpace += MotionZ WorkSpace

execute if score MotionX WorkSpace matches ..100000 run tag @s add GAMECannonballStopped

execute if entity @s[tag=GAMECannonballStopped] run summon creeper ~ ~ ~ {Fuse:0s,CustomName:"\"cannonball\""}
kill @s[tag=GAMECannonballStopped]