# Uncull stands around me
execute as @e[type=armor_stand,tag=RAFTCullStand,distance=..5] at @s run function raft/cull_stop
tag @e[type=shulker,tag=RAFTBlock,distance=..5] remove RAFTCull

# Aircylce AI arrows for smooth movement
execute if entity @s[tag=AIArrow] if score AirCycle Timer matches 0 run data merge entity @s {Air:0s}
execute if entity @s[tag=AIArrow] if score AirCycle Timer matches 1 run data merge entity @s {Air:1s}

# Ability to hit shulker
execute as @e[type=shulker,tag=RAFTBlock,distance=..5] run data merge entity @s {Peek:1b}

# Kill
execute if block ~ ~ ~ water run kill @s
kill @s[nbt={inGround:1b}]