# Reverse-transformed villagers for player locations
execute as @p[distance=..16] at @s run function ai/player_villager

# Get zombie pos relative to invisible template's center
execute store result score AIPathfinderX WorkSpace run data get entity @e[type=zombie,tag=AIPathfinder,limit=1] Pos[0] 32768
execute store result score AIPathfinderY WorkSpace run data get entity @e[type=zombie,tag=AIPathfinder,limit=1] Pos[1] 32768
execute store result score AIPathfinderZ WorkSpace run data get entity @e[type=zombie,tag=AIPathfinder,limit=1] Pos[2] 32768
scoreboard players operation AIPathfinderX WorkSpace -= AILayoutCenterX WorkSpace
scoreboard players operation AIPathfinderY WorkSpace -= AILayoutCenterY WorkSpace
scoreboard players operation AIPathfinderZ WorkSpace -= AILayoutCenterZ WorkSpace

# Check if standing still
scoreboard players add AIStandingStill Global 1
execute unless score AIPathfinderXOld Global = AIPathfinderX WorkSpace run scoreboard players set AIStandingStill Global 0
execute unless score AIPathfinderYOld Global = AIPathfinderY WorkSpace run scoreboard players set AIStandingStill Global 0
execute unless score AIPathfinderZOld Global = AIPathfinderZ WorkSpace run scoreboard players set AIStandingStill Global 0
scoreboard players operation AIPathfinderXOld Global = AIPathfinderX WorkSpace
scoreboard players operation AIPathfinderYOld Global = AIPathfinderY WorkSpace
scoreboard players operation AIPathfinderZOld Global = AIPathfinderZ WorkSpace

# Teleport me to real raft center, then locally by above pos
tp @s @e[type=experience_orb,tag=RAFTController,tag=Raft1,limit=1,sort=nearest]
execute positioned as @s run tp @s ~ ~-41.24 ~
# -0.5 from ship sinking down into water slightly, -0.74 for captain coldblood's offset into floor (same as in lobby)

# The actual teleportation
execute rotated as @e[type=experience_orb,tag=RAFTController,tag=Raft1,limit=1,sort=nearest] run function ai/binary_teleport

# Rotate by Pathfinder's rotation if moving (else face nearest player for shooting bow)
execute if score AIStandingStill Global matches 0 run execute store result score AIRotation WorkSpace run data get entity @s Rotation[0] 32768
execute if score AIStandingStill Global matches 0 run execute store result score AIPathfinderRotation WorkSpace run data get entity @e[type=zombie,tag=AIPathfinder,limit=1] Rotation[0] 32768
execute if score AIStandingStill Global matches 0 run scoreboard players operation AIRotation WorkSpace += AIPathfinderRotation WorkSpace
execute if score AIStandingStill Global matches 0 run execute store result entity @s Rotation[0] float 0.000030517578125 run scoreboard players get AIRotation WorkSpace
execute if score AIStandingStill Global matches 0 run execute store result entity @s Rotation[1] float 0.000030517578125 run data get entity @e[type=zombie,tag=AIPathfinder,limit=1] Rotation[1] 32768


# Face player and shoot bow if standing still
execute if score AIStandingStill Global matches 1.. run function ai/standing_still

# Remove bow if started moving again
execute if entity @s[tag=DrawingBow] if score AIStandingStill Global matches 0 run replaceitem entity @s armor.head golden_hoe{Damage:8,Unbreakable:1b}
execute if entity @s[tag=DrawingBow] if score AIStandingStill Global matches 0 run tag @s remove DrawingBow