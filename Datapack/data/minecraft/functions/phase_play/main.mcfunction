# Kill damaged blocks, move armor stands
scoreboard players add RAFTMove Timer 1
execute if score RAFTMove Timer matches 2 as @e[type=shulker,nbt={AbsorptionAmount:0.0f}] at @s run function raft/block_destroy
execute if score RAFTMove Timer matches 3 as @e[type=armor_stand,tag=RAFTHasGravity] at @s run function raft/move/check_if_falling
execute if score RAFTMove Timer matches 3 as @e[type=experience_orb,tag=RAFTController] at @s run function raft/move/move_raft
execute if score RAFTMove Timer matches 3 run scoreboard players set RAFTMove Timer 0

# Culling
scoreboard players add RAFTCull Timer 1
execute if score RAFTCull Timer matches 1 run kill @e[type=armor_stand,tag=RAFTDyingCullStand]
execute if score RAFTCull Timer matches 1 run function raft/cull/main
execute if score RAFTCull Timer matches 2 as @e[type=armor_stand,tag=RAFTBlockStandJustUnculled] at @s run function raft/cull/update_unculled_stands
execute if score RAFTCull Timer matches 2 as @e[type=shulker,tag=RAFTBlockJustUnculled] at @s run function raft/cull/update_unculled_shulkers
execute if score RAFTCull Timer matches 6 run scoreboard players set RAFTCull Timer 0

# Aircycle
scoreboard players add AirCycle Timer 1
execute if score AirCycle Timer matches 2 run scoreboard players set AirCycle Timer 0

# Projectiles
execute as @e[type=villager,tag=GAMECannonball] at @s run function phase_play/cannonball
execute as @e[type=arrow] at @s run function phase_play/arrow
execute as @e[type=trident] at @s run function phase_play/trident

# Per player stuff
execute as @a[gamemode=!spectator] at @s run function phase_play/per_player

# Update the raft that players are standing on
scoreboard players add OnRaftCheck Timer 1
execute if score OnRaftCheck Timer matches 10 as @a at @s run function phase_play/check_raft_on
execute if score OnRaftCheck Timer matches 10 run scoreboard players set OnRaftCheck Timer 0

# Keep helms synced
scoreboard players add HelmSync Timer 1
execute if score HelmSync Timer matches 5 as @e[type=area_effect_cloud,tag=RAFTHelmCloud] run data merge entity @s {Air:0s}
execute if score HelmSync Timer matches 15 as @e[type=area_effect_cloud,tag=RAFTHelmCloud] run data merge entity @s {Air:1s}
execute if score HelmSync Timer matches 20 run scoreboard players set HelmSync Timer 0

# AI main function, from Captain Coldblood
execute if entity @s[tag=AI] as @e[type=stray,tag=AIGame,limit=1,sort=nearest] at @s run function ai/main_play

# Random items
scoreboard players add Item Timer 1
execute if score Item Timer matches 30 run function phase_play/random_item
execute if score Item Timer matches 30 run scoreboard players set Item Timer 0

# Check chests valid (not inside blocks), kill stuff going outside arena
scoreboard players add ValidityCheck Timer 1
execute if score ValidityCheck Timer matches 40 run function phase_play/validity_check
execute if score ValidityCheck Timer matches 40 run scoreboard players set ValidityCheck Timer 0

# Check win
scoreboard players add WinCheck Timer 1
execute if score WinCheck Timer matches 40 if entity @s[tag=!AI] run function phase_play/win_check
execute if score WinCheck Timer matches 40 if entity @s[tag=AI] run function phase_play/win_check_ai
execute if score WinCheck Timer matches 40 run scoreboard players set WinCheck Timer 0

# Slow cleanup stuff
scoreboard players add Cleanup Timer 1
execute if score Cleanup Timer matches 200 run kill @e[type=experience_orb,tag=!RAFTController]
execute if score Cleanup Timer matches 200 run kill @e[type=slime,tag=!AISlime]
execute if score Cleanup Timer matches 200 as @e[type=experience_orb,tag=RAFTController] run data merge entity @s {Age:-32768s}
execute if score Cleanup Timer matches 200 run kill @e[type=item,nbt={Item:{id:"minecraft:scute"}}]
execute if score Cleanup Timer matches 200 run scoreboard players set Cleanup Timer 0