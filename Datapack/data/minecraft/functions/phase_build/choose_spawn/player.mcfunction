# Ran per player, choose random spawn on FFA
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerCandidate,sort=random,limit=1] add GAMESpawnMarkerChoosing
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing,limit=1,sort=nearest] run fill ~-8 ~-1 ~-8 ~7 ~-1 ~7 glass
tp @s @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing,limit=1,sort=nearest]
scoreboard players operation @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing,limit=1,sort=nearest] RaftID = @s RaftID

tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing] add GAMESpawnMarkerChosen
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing] remove GAMESpawnMarkerCandidate
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing] remove GAMESpawnMarkerChoosing