# Ran once on a team member
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerCandidate,sort=random,limit=1] add GAMESpawnMarkerChoosing
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing,limit=1,sort=nearest] run fill ~-8 ~-1 ~-8 ~7 ~-1 ~7 yellow_stained_glass
scoreboard players set @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing,limit=1,sort=nearest] RaftID -4
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing,limit=1,sort=nearest] run tp @a[team=yellow] ~ ~3 ~ 

tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing] add GAMESpawnMarkerChosen
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing] remove GAMESpawnMarkerCandidate
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing] remove GAMESpawnMarkerChoosing