# Reverse-transformed villagers for player locations
execute as @p[distance=..16] at @s run function ai/player_villager

# Get zombie pos relative to invisible template's center
execute store result score AIPathfinderX WorkSpace run data get entity @e[type=zombie,tag=AIPathfinder,limit=1] Pos[0] 32768
execute store result score AIPathfinderY WorkSpace run data get entity @e[type=zombie,tag=AIPathfinder,limit=1] Pos[1] 32768
execute store result score AIPathfinderZ WorkSpace run data get entity @e[type=zombie,tag=AIPathfinder,limit=1] Pos[2] 32768
scoreboard players operation AIPathfinderX WorkSpace -= AILayoutCenterX WorkSpace
scoreboard players operation AIPathfinderY WorkSpace -= AILayoutCenterY WorkSpace
scoreboard players operation AIPathfinderZ WorkSpace -= AILayoutCenterZ WorkSpace

# Teleport me to real raft center, then locally by above pos
tp @s @e[type=xp_orb,tag=RAFTController,tag=Raft1,limit=1,sort=nearest]
execute positioned as @s run tp @s ~ ~-41.24 ~
# -0.5 from ship sinking down into water slightly, -0.74 for captain coldblood's offset into floor (same as in lobby)

# The actual teleportation
execute rotated as @e[type=xp_orb,tag=RAFTController,tag=Raft1,limit=1,sort=nearest] run function ai/binary_teleport

# Rotate by Pathfinder's rotation
execute store result score AIRotation WorkSpace run data get entity @s Rotation[0] 32768
execute store result score AIPathfinderRotation WorkSpace run data get entity @e[type=zombie,tag=AIPathfinder,limit=1] Rotation[0] 32768
scoreboard players operation AIRotation WorkSpace += AIPathfinderRotation WorkSpace
execute store result entity @s Rotation[0] float 0.000030517578125 run scoreboard players get AIRotation WorkSpace
execute store result entity @s Rotation[1] float 0.000030517578125 run data get entity @e[type=zombie,tag=AIPathfinder,limit=1] Rotation[1] 32768