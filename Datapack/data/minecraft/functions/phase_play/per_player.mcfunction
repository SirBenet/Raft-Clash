# Respawn
execute if entity @s[scores={UseTotem=1..}] run function phase_play/respawn
# Fully died, no totem of undying
execute if entity @s[scores={DeathTime=0},gamemode=!spectator] run function phase_play/eliminate

# Check if dealing damage, to speed up block destruction detection (normally happens once every 3 ticks for performance):
execute if entity @s[scores={RAFTDealDamage=1..}] as @e[type=shulker,distance=..10,nbt={AbsorptionAmount:0.0f}] at @s run function raft/block_destroy
scoreboard players set @s[scores={RAFTDealDamage=1..}] RAFTDealDamage 0

# Check if used cannonball (double check just in case they spammed it)
tag @s[nbt={Inventory:[{id:"minecraft:shears",tag:{Damage:1}}]}] add GAMEUsedCannonball
tag @s[nbt={Inventory:[{id:"minecraft:shears",tag:{Damage:2}}]}] add GAMEUsedCannonball
execute if entity @s[tag=GAMEUsedCannonball] run function phase_play/use_cannonball

# Allow water detecton
execute at @s[advancements={technical/entered_water=true}] if block ~ ~ ~ water run function phase_play/teleport_to_chest
advancement revoke @s[advancements={technical/entered_water=true}] only technical/entered_water

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

# If standing on moving raft, keep up with it
execute if entity @s[tag=OnRaft1,nbt=!{RootVehicle:{}}] if entity @e[type=xp_orb,tag=!RAFTControllerStopped,tag=Raft1] run function phase_play/on_raft_movement
execute if entity @s[tag=OnRaft2,nbt=!{RootVehicle:{}}] if entity @e[type=xp_orb,tag=!RAFTControllerStopped,tag=Raft2] run function phase_play/on_raft_movement
execute if entity @s[tag=OnRaft3,nbt=!{RootVehicle:{}}] if entity @e[type=xp_orb,tag=!RAFTControllerStopped,tag=Raft3] run function phase_play/on_raft_movement
execute if entity @s[tag=OnRaft4,nbt=!{RootVehicle:{}}] if entity @e[type=xp_orb,tag=!RAFTControllerStopped,tag=Raft4] run function phase_play/on_raft_movement
execute if entity @s[tag=OnRaft5,nbt=!{RootVehicle:{}}] if entity @e[type=xp_orb,tag=!RAFTControllerStopped,tag=Raft5] run function phase_play/on_raft_movement
execute if entity @s[tag=OnRaft6,nbt=!{RootVehicle:{}}] if entity @e[type=xp_orb,tag=!RAFTControllerStopped,tag=Raft6] run function phase_play/on_raft_movement
execute if entity @s[tag=OnRaft7,nbt=!{RootVehicle:{}}] if entity @e[type=xp_orb,tag=!RAFTControllerStopped,tag=Raft7] run function phase_play/on_raft_movement
execute if entity @s[tag=OnRaft8,nbt=!{RootVehicle:{}}] if entity @e[type=xp_orb,tag=!RAFTControllerStopped,tag=Raft8] run function phase_play/on_raft_movement
execute if entity @s[tag=OnRaft9,nbt=!{RootVehicle:{}}] if entity @e[type=xp_orb,tag=!RAFTControllerStopped,tag=Raft9] run function phase_play/on_raft_movement
execute if entity @s[tag=OnRaft10,nbt=!{RootVehicle:{}}] if entity @e[type=xp_orb,tag=!RAFTControllerStopped,tag=Raft10] run function phase_play/on_raft_movement
execute if entity @s[tag=OnRaft11,nbt=!{RootVehicle:{}}] if entity @e[type=xp_orb,tag=!RAFTControllerStopped,tag=Raft11] run function phase_play/on_raft_movement
execute if entity @s[tag=OnRaft12,nbt=!{RootVehicle:{}}] if entity @e[type=xp_orb,tag=!RAFTControllerStopped,tag=Raft12] run function phase_play/on_raft_movement

# If falling, stop culling below me
execute store result score FallDistance WorkSpace run data get entity @s FallDistance 100
execute if score FallDistance WorkSpace matches 1.. positioned ~ ~-9 ~ as @e[type=armor_stand,tag=RAFTCullStand,distance=..3] at @s run function raft/cull_stop
execute if score FallDistance WorkSpace matches 1.. positioned ~ ~-9 ~ run tag @e[type=shulker,tag=RAFTBlock,distance=..5] remove RAFTCull
scoreboard players set @s FallDistance 0

# Make sure player doesn't mess with offhand slot. TODO: NBT checking is expensive, maybe run this check slower? 
execute if entity @s[tag=HasChest,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying"}]}] run function phase_play/offhand_changed
execute if entity @s[tag=!HasChest,nbt={Inventory:[{Slot:-106b}]}] run function phase_play/offhand_changed