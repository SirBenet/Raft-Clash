gamerule mobGriefing true

# Load arena
kill @e[type=area_effect_cloud,tag=GAMESpreadChunkLoad]
summon area_effect_cloud ~ ~ ~ {Tags:["GAMESpreadChunkLoad"]}
spreadplayers 3315 -301 0 1 false @e[type=area_effect_cloud,tag=GAMESpreadChunkLoad]
setblock 3312 28 -304 air
setblock 3312 28 -304 structure_block[mode=load]{mode:"LOAD",name:"arena_loader",integrity:0.0f} replace
setblock 3312 29 -304 redstone_block destroy

function code/kill_rafts

# Tag spawn markers in this arena
tag @e[type=area_effect_cloud] remove GAMESpawnMarkerCandidate
tag @e[type=area_effect_cloud,tag=GAMESpawnMarkerGlaciers] add GAMESpawnMarkerCandidate

# Update marker bat tags
tag @s remove MAPBay
tag @s remove MAPRocks
tag @s remove MAPSea
tag @s remove MAPGlaciers
tag @s add MAPGlaciers

# Teleport data bat, set world spawn at it
spreadplayers 3568 -48 0 1 false @s
setworldspawn 3568 200 -48

# If arena already pre-generated
execute if entity @s[tag=GlaciersReady] run function phase_build/start_callback
# Else
execute if entity @s[tag=!GlaciersReady] run tellraw @a {"text":"Regenerating destructible map, prepare for ~30 seconds of lag.","color":"green"}
scoreboard players set @s[tag=!GlaciersReady] LOADTimer 0
data merge entity @s[tag=!GlaciersReady] {CustomName:"\"PhaseLoad\""}

tag @s remove GlaciersReady