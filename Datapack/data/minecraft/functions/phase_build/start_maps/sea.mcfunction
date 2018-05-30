gamerule mobGriefing false

# Load arena
kill @e[type=area_effect_cloud,tag=GAMESpreadChunkLoad]
summon area_effect_cloud ~ ~ ~ {Tags:["GAMESpreadChunkLoad"]}
spreadplayers 2259 -301 0 1 false @e[type=area_effect_cloud,tag=GAMESpreadChunkLoad]
setblock 2256 255 -304 air
setblock 2256 255 -304 structure_block[mode=load]{mode:"LOAD",name:"arena_loader",integrity:0.0f} replace
setblock 2256 254 -304 redstone_block destroy

function code/kill_rafts

# Tag spawn markers in this arena
tag @e[type=area_effect_cloud] remove GAMESpawnMarkerCandidate
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerSea] add GAMESpawnMarkerCandidate

# Update marker bat tags
tag @s remove MAPBay
tag @s remove MAPRocks
tag @s remove MAPSea
tag @s remove MAPGlaciers
tag @s add MAPSea

# Teleport data bat, set world spawn at it
spreadplayers 2512 -48 0 1 false @s
setworldspawn 2512 200 -48

# Second part of starting game
function phase_build/start_callback