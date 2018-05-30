particle smoke ~ ~ ~ 0.4 0.4 0.4 0 100

# Summon cannonball stand in correct location
execute rotated as @e[type=armor_stand,tag=RAFTCannonStand,distance=..3,sort=nearest,limit=1] positioned ~ ~-0.53 ~ if entity @s[tag=RAFTCannonSheepNorth] run summon villager ^ ^ ^-0.55 {Tags:["GAMECannonball","GAMECannonballNew"],Silent:1b,ActiveEffects:[{Id:14,Duration:214748647,Ambient:1b}],ArmorItems:[{},{},{},{id:"shears",Count:1}],Motion:[0.0,1.0,-2.0]}
execute rotated as @e[type=armor_stand,tag=RAFTCannonStand,distance=..3,sort=nearest,limit=1] positioned ~ ~-0.53 ~ if entity @s[tag=RAFTCannonSheepEast] run summon villager ^0.55 ^ ^ {Tags:["GAMECannonball","GAMECannonballNew"],Silent:1b,ActiveEffects:[{Id:14,Duration:214748647,Ambient:1b}],ArmorItems:[{},{},{},{id:"shears",Count:1}],Motion:[2.0,1.0,0.0]}
execute rotated as @e[type=armor_stand,tag=RAFTCannonStand,distance=..3,sort=nearest,limit=1] positioned ~ ~-0.53 ~ if entity @s[tag=RAFTCannonSheepSouth] run summon villager ^ ^ ^0.55 {Tags:["GAMECannonball","GAMECannonballNew"],Silent:1b,ActiveEffects:[{Id:14,Duration:214748647,Ambient:1b}],ArmorItems:[{},{},{},{id:"shears",Count:1}],Motion:[0.0,1.0,2.0]}
execute rotated as @e[type=armor_stand,tag=RAFTCannonStand,distance=..3,sort=nearest,limit=1] positioned ~ ~-0.53 ~ if entity @s[tag=RAFTCannonSheepWest] run summon villager ^-0.55 ^ ^ {Tags:["GAMECannonball","GAMECannonballNew"],Silent:1b,ActiveEffects:[{Id:14,Duration:214748647,Ambient:1b}],ArmorItems:[{},{},{},{id:"shears",Count:1}],Motion:[-2.0,1.0,0.0]}

# Get forwards vector
summon area_effect_cloud ~ ~ ~ {Tags:["VectorGetter"]}
execute rotated as @e[type=armor_stand,tag=RAFTCannonStand,distance=..3,sort=nearest,limit=1] positioned 0.0 0 0.0 if entity @s[tag=RAFTCannonSheepNorth] run tp @e[type=area_effect_cloud,tag=VectorGetter] ^ ^ ^-2
execute rotated as @e[type=armor_stand,tag=RAFTCannonStand,distance=..3,sort=nearest,limit=1] positioned 0.0 0 0.0 if entity @s[tag=RAFTCannonSheepEast] run tp @e[type=area_effect_cloud,tag=VectorGetter] ^2 ^ ^
execute rotated as @e[type=armor_stand,tag=RAFTCannonStand,distance=..3,sort=nearest,limit=1] positioned 0.0 0 0.0 if entity @s[tag=RAFTCannonSheepSouth] run tp @e[type=area_effect_cloud,tag=VectorGetter] ^ ^ ^2
execute rotated as @e[type=armor_stand,tag=RAFTCannonStand,distance=..3,sort=nearest,limit=1] positioned 0.0 0 0.0 if entity @s[tag=RAFTCannonSheepWest] run tp @e[type=area_effect_cloud,tag=VectorGetter] ^-2 ^ ^
execute as @e[type=area_effect_cloud,tag=VectorGetter] at @s run function code/get_vector
kill @e[type=area_effect_cloud,tag=VectorGetter]

# Store into new cannonball
execute store result entity @e[type=villager,tag=GAMECannonballNew,limit=1] Motion[0] double 0.000030517578125 run scoreboard players get ForwardX WorkSpace
execute store result entity @e[type=villager,tag=GAMECannonballNew,limit=1] Motion[2] double 0.000030517578125 run scoreboard players get ForwardZ WorkSpace

# Reset
data merge entity @s {Sheared:0b}
tag @e[type=villager,tag=GAMECannonballNew,limit=1] remove GAMECannonballNew