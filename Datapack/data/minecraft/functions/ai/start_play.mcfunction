# Load self
kill @e[type=area_effect_cloud,tag=GAMESpreadChunkLoad]
summon area_effect_cloud ~ ~ ~ {Tags:["GAMESpreadChunkLoad"]}
spreadplayers ~ ~ 0 1 false @e[type=area_effect_cloud,tag=GAMESpreadChunkLoad]

# Load rest of raft
setblock ~ 0 ~ structure_block[mode=load]{mode:"LOAD",name:"ship_loader",integrity:0.0f} 
setblock ~ 1 ~ redstone_block destroy
fill ~ 0 ~ ~ 1 ~ bedrock

# Kill all AIProjectileArc that aren't on level with the target
function ai/get_target
execute at @e[tag=AITarget] positioned ~-512 ~ ~-512 run tag @e[type=area_effect_cloud,tag=AIProjectileArc,dx=1024,dz=1024] add AIProjectileArcOnLevel
kill @e[type=area_effect_cloud,tag=AIProjectileArc,tag=!AIProjectileArcOnLevel]

# Health
scoreboard players set AIHealth Global 100
bossbar set ai_health color green
bossbar set ai_health max 100
bossbar set ai_health value 100
bossbar set ai_health style notched_6
bossbar set ai_health name {"text":"Captain Coldblood","color":"green","bold":"true"}
bossbar set ai_health players @a
bossbar set ai_health visible true