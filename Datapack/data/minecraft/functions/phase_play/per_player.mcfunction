# Respawn
tag @s remove AlreadyRespawned
execute if entity @s[scores={DeathTime=1}] run function phase_play/respawn

# Check if dealing damage, to speed up block destruction detection (normally happens once every 3 ticks for performance):
execute if entity @s[scores={RAFTDealDamage=1..}] as @e[type=shulker,distance=..10,nbt={AbsorptionAmount:0.0f}] at @s run function raft/block_destroy
scoreboard players set @s[scores={RAFTDealDamage=1..}] RAFTDealDamage 0

# Check if used cannonball (double check just in case)
tag @s[nbt={Inventory:[{id:"minecraft:shears",tag:{Damage:1}}]}] add GAMEUsedCannonball
tag @s[nbt={Inventory:[{id:"minecraft:shears",tag:{Damage:2}}]}] add GAMEUsedCannonball
execute if entity @s[tag=GAMEUsedCannonball] run function phase_play/use_cannonball

# Using helm
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:armor_stand",Tags:["RAFTHelmStand"]}}}] run function phase_play/control_raft

# Kill and give back cutlass if dropped
execute if entity @s[scores={DropCutlass=1..}] run function phase_play/drop_cutlass

# Handle relogging players
execute if entity @s[scores={LeaveGame=1..}] run function phase_play/player_relog

# XP
xp set @s 0

# Beam
particle end_rod ~ ~100 ~ 0.5 0.5 0.5 0 5 force @a[distance=0.1..]

# Camping respawn screen
execute if entity @s[scores={DeathTime=0}] run function phase_play/on_respawn_screen