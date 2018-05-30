# Choose players spawn
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerCandidate,sort=random,limit=1] add GAMESpawnMarkerChoosing
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing,limit=1,sort=nearest] run fill ~-8 ~-1 ~-8 ~7 ~-1 ~7 glass
tp @a[team=play_ai,gamemode=!spectator] @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing,limit=1,sort=nearest]
scoreboard players set @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing,limit=1,sort=nearest] RaftID -6

tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing] add GAMESpawnMarkerChosen
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing] remove GAMESpawnMarkerCandidate
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing] remove GAMESpawnMarkerChoosing


# Choose & create AI spawn
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerCandidate,sort=random,limit=1] add GAMESpawnMarkerChoosing
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing,limit=1,sort=nearest] run fill ~-8 ~-1 ~-8 ~7 ~-1 ~7 glass
execute at @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing] run function ai/create_ship
scoreboard players set @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing,limit=1,sort=nearest] RaftID -5

tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing] add GAMESpawnMarkerChosenAI
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing] remove GAMESpawnMarkerCandidate
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerChoosing] remove GAMESpawnMarkerChoosing