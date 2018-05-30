particle smoke ~ ~ ~ 0.4 0.4 0.4 0 100

# Summon cannonball stand in correct location
execute positioned ~ ~-0.53 ~ if entity @s[nbt={Pose:{Head:[180.0f]}}] run summon villager ^ ^ ^-0.55 {Tags:["GAMECannonball","GAMECannonballNew"],Silent:1b,ActiveEffects:[{Id:14,Duration:214748647,Ambient:1b}],ArmorItems:[{},{},{},{id:"shears",Count:1}],Motion:[0.0,1.0,-2.0]}
execute positioned ~ ~-0.53 ~ if entity @s[nbt={Pose:{Head:[-90.0f]}}] run summon villager ^0.55 ^ ^ {Tags:["GAMECannonball","GAMECannonballNew"],Silent:1b,ActiveEffects:[{Id:14,Duration:214748647,Ambient:1b}],ArmorItems:[{},{},{},{id:"shears",Count:1}],Motion:[2.0,1.0,0.0]}
execute positioned ~ ~-0.53 ~ if entity @s[nbt=!{Pose:{Head:[0.0f]}}] run summon villager ^ ^ ^0.55 {Tags:["GAMECannonball","GAMECannonballNew"],Silent:1b,ActiveEffects:[{Id:14,Duration:214748647,Ambient:1b}],ArmorItems:[{},{},{},{id:"shears",Count:1}],Motion:[0.0,1.0,2.0]}
execute positioned ~ ~-0.53 ~ if entity @s[nbt={Pose:{Head:[90.0f]}}] run summon villager ^-0.55 ^ ^ {Tags:["GAMECannonball","GAMECannonballNew"],Silent:1b,ActiveEffects:[{Id:14,Duration:214748647,Ambient:1b}],ArmorItems:[{},{},{},{id:"shears",Count:1}],Motion:[-2.0,1.0,0.0]}

# Get forwards vector
summon area_effect_cloud ~ ~ ~ {Tags:["VectorGetter"]}
execute positioned 0.0 0 0.0 if entity @s[nbt={Pose:{Head:[180.0f]}}] run tp @e[type=area_effect_cloud,tag=VectorGetter] ^ ^ ^-2
execute positioned 0.0 0 0.0 if entity @s[nbt={Pose:{Head:[-90.0f]}}] run tp @e[type=area_effect_cloud,tag=VectorGetter] ^2 ^ ^
execute positioned 0.0 0 0.0 if entity @s[nbt=!{Pose:{Head:[0.0f]}}] run tp @e[type=area_effect_cloud,tag=VectorGetter] ^ ^ ^2
execute positioned 0.0 0 0.0 if entity @s[nbt={Pose:{Head:[90.0f]}}] run tp @e[type=area_effect_cloud,tag=VectorGetter] ^-2 ^ ^
execute as @e[type=area_effect_cloud,tag=VectorGetter] at @s run function code/get_vector
kill @e[type=area_effect_cloud,tag=VectorGetter]

# Store into new cannonball
execute store result entity @e[type=villager,tag=GAMECannonballNew,limit=1] Motion[0] double 0.000030517578125 run scoreboard players get ForwardX WorkSpace
execute store result entity @e[type=villager,tag=GAMECannonballNew,limit=1] Motion[2] double 0.000030517578125 run scoreboard players get ForwardZ WorkSpace

# Reset
tag @e[type=villager,tag=GAMECannonballNew,limit=1] remove GAMECannonballNew