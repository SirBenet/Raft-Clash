# Keep self loaded
kill @e[type=area_effect_cloud,tag=GAMESpreadChunkLoad]
summon area_effect_cloud ~ ~ ~ {Tags:["GAMESpreadChunkLoad"]}
spreadplayers ~ ~ 0 1 false @e[type=area_effect_cloud,tag=GAMESpreadChunkLoad]

# Move projectile arcs
tp @e[type=area_effect_cloud,tag=AIProjectileArc] @e[type=armor_stand,tag=Raft1,tag=RAFTHelmStand,limit=1]
execute as @e[type=area_effect_cloud,tag=AIProjectileArc] at @s run function ai/move_arc

# From nearest AIProjectileArc to AITarget (prioritize cannonball arcs if they exist) find direction to sail
execute if entity @e[type=area_effect_cloud,tag=AICannonballArc] at @e[tag=AITarget,limit=1,sort=nearest] as @e[type=area_effect_cloud,tag=AICannonballArc,limit=1,sort=nearest] at @s run function ai/arc_navigate
execute unless entity @e[type=area_effect_cloud,tag=AICannonballArc] at @e[tag=AITarget,limit=1,sort=nearest] as @e[type=area_effect_cloud,tag=AIArrowArc,limit=1,sort=nearest] at @s run function ai/arc_navigate

# Navigate around obstacles
#particle barrier ^-25 ^ ^
#execute unless block ^-25 ^ ^ air run scoreboard players set AIShipAction Global 3
#execute unless block ^-20 ^ ^ air run scoreboard players set AIShipAction Global 3
#execute unless block ^-17 ^ ^ air run scoreboard players set AIShipAction Global 3