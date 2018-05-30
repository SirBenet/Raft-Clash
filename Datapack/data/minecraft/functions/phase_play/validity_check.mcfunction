# Runs every 40 ticks

# Kill things in piston extension (map border)
execute as @e[type=armor_stand,tag=RAFTBlockStand] at @s if block ~ ~ ~ moving_piston as @e[type=shulker,tag=RAFTBlock,distance=..1] at @s run function raft/block_destroy

# Check if chests fallen into water
execute as @e[type=armor_stand,tag=RAFTChest] at @s run function phase_play/validity_check_sink
# Check chests in valid spot
execute as @e[type=armor_stand,tag=RAFTChest] at @s run function phase_play/validity_check_chests