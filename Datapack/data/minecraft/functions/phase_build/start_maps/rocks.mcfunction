gamerule mobGriefing false

# Load arena
kill @e[type=area_effect_cloud,tag=GAMESpreadChunkLoad]
summon area_effect_cloud ~ ~ ~ {Tags:["GAMESpreadChunkLoad"]}
spreadplayers 1203 -301 0 1 false @e[type=area_effect_cloud,tag=GAMESpreadChunkLoad]
setblock 1200 28 -304 air
setblock 1200 28 -304 structure_block[mode=load]{mode:"LOAD",name:"arena_loader",integrity:0.0f} replace
setblock 1200 29 -304 redstone_block destroy

function code/kill_rafts

# Tag spawn markers in this arena
tag @e[type=area_effect_cloud] remove GAMESpawnMarkerCandidate
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerRocks] add GAMESpawnMarkerCandidate

# Update marker bat tags
tag @s remove MAPBay
tag @s remove MAPRocks
tag @s remove MAPSea
tag @s remove MAPGlaciers
tag @s add MAPRocks

# Teleport data bat, set world spawn at it
spreadplayers 1459 -48 0 1 false @s
setworldspawn 1459 200 -48

# If arena already pre-generated
execute if entity @s[tag=RocksReady] run function phase_build/start_callback
# Else
execute if entity @s[tag=!RocksReady] run tellraw @a {"text":"Regenerating destructible map, prepare for ~30 seconds of lag.","color":"green"}
execute if entity @s[tag=!RocksReady] run scoreboard players set LOAD Timer 0
data merge entity @s[tag=!RocksReady] {CustomName:"\"PhaseLoad\""}

#TODO: Uncomment when I make these destructible again
#tag @s remove RocksReady