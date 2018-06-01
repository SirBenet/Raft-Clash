# Uncull stands around me
execute as @e[type=armor_stand,tag=RAFTCullStand,distance=..5] at @s run function raft/cull_stop
tag @e[type=shulker,tag=RAFTBlock,distance=..5] remove RAFTCull

# Ability to hit shulker
execute as @e[type=shulker,tag=RAFTBlock,distance=..5] run data merge entity @s {Peek:1b}