gamerule sendCommandFeedback true
gamerule keepInventory true
gamerule spectatorsGenerateChunks false
scoreboard objectives setdisplay sidebar

# Load arenas, kill stray stuff
#summon area_effect_cloud ~ ~ ~ {Tags:["GAMESpreadChunkLoad"]}
#spreadplayers 2259 -301 0 1 false @e[type=area_effect_cloud,tag=GAMESpreadChunkLoad]
#spreadplayers 1203 -301 0 1 false @e[type=area_effect_cloud,tag=GAMESpreadChunkLoad]
#spreadplayers 3315 -301 0 1 false @e[type=area_effect_cloud,tag=GAMESpreadChunkLoad]
#spreadplayers 147 -301 0 1 false @e[type=area_effect_cloud,tag=GAMESpreadChunkLoad]
#setblock 3312 28 -304 structure_block mode=load replace {mode:"LOAD",name:"arena_loader",integrity:0.0f}
##setblock 3312 28 -304 structure_block mode=load replace {mode:"LOAD",name:"glaciers",posZ:1,posY:0,posX:1,ignoreEntities:1b}
#setblock 3312 29 -304 redstone_block default destroy
#setblock 1200 28 -304 structure_block mode=load replace {mode:"LOAD",name:"arena_loader",integrity:0.0f}
##setblock 1200 28 -304 structure_block mode=load replace {mode:"LOAD",name:"rocks",posZ:1,posY:0,posX:1,ignoreEntities:1b}
#setblock 1200 29 -304 redstone_block default destroy
#setblock 144 255 -304 structure_block mode=load replace {mode:"LOAD",name:"arena_loader",integrity:0.0f}
#setblock 144 254 -304 redstone_block default destroy
#setblock 2256 255 -304 structure_block mode=load replace {mode:"LOAD",name:"arena_loader",integrity:0.0f}
#setblock 2256 254 -304 redstone_block default destroy
function code:kill_rafts

# Reset data bat
tellraw @a {"text":"Reset arenas","color":"red"}
tag 0-0-0-0-1 add GlaciersReady
tag 0-0-0-0-1 add RocksReady
data merge entity 0-0-0-0-1 {CustomName:"\"PhaseLobby\""}

scoreboard players set @e[type=bat,tag=data] TipStage 0

# --- HOVER TEXT ---
kill @e[type=area_effect_cloud,tag=HoverText]
summon area_effect_cloud -15 16 -4 {CustomName:"{\"color\":\"gold\",\"text\":\"Map Select\"}",CustomNameVisible:1b,Tags:["HoverText"],Duration:2147483647,Particle:"block air"}
summon area_effect_cloud -12 17.6 6 {CustomName:"{\"color\":\"gold\",\"text\":\"Mode Select\"}",CustomNameVisible:1b,Tags:["HoverText"],Duration:2147483647,Particle:"block air"}
summon area_effect_cloud -5 16 3 {CustomName:"{\"color\":\"gold\",\"text\":\"Set Sail\"}",CustomNameVisible:1b,Tags:["HoverText"],Duration:2147483647,Particle:"block air"}
summon area_effect_cloud -5 17.3 7 {CustomName:"{\"color\":\"gold\",\"text\":\"Build Time: Normal\"}",CustomNameVisible:1b,Tags:["HoverText","HoverTextBuildTime"],Duration:2147483647,Particle:"block air"}

summon area_effect_cloud -11 16 7 {CustomName:"{\"color\":\"gray\",\"text\":\"Spectate\"}",CustomNameVisible:1b,Tags:["HoverText"],Duration:2147483647,Particle:"block air"}
summon area_effect_cloud -13 16 7 {CustomName:"{\"color\":\"gray\",\"text\":\"Join\"}",CustomNameVisible:1b,Tags:["HoverText","HoverTextFFA"],Duration:2147483647,Particle:"block air"}
summon area_effect_cloud -13 16 7 {CustomName:"{\"color\":\"dark_aqua\",\"text\":\"Blue\"}",CustomNameVisible:0b,Tags:["HoverText","HoverTextTeam"],Duration:2147483647,Particle:"block air"}
summon area_effect_cloud -14 16 7 {CustomName:"{\"color\":\"red\",\"text\":\"Red\"}",CustomNameVisible:0b,Tags:["HoverText","HoverTextTeam"],Duration:2147483647,Particle:"block air"}
summon area_effect_cloud -15 16 7 {CustomName:"{\"color\":\"green\",\"text\":\"Green\"}",CustomNameVisible:0b,Tags:["HoverText","HoverTextTeam"],Duration:2147483647,Particle:"block air"}
summon area_effect_cloud -16 16 7 {CustomName:"{\"color\":\"yellow\",\"text\":\"Yellow\"}",CustomNameVisible:0b,Tags:["HoverText","HoverTextTeam"],Duration:2147483647,Particle:"block air"}

# --- CLICK DETECTORS ---
kill @e[type=pig,tag=ClickDetector]
# Map locations
summon pig -14.90 14.2 -3.50 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","bay"]}
summon pig -13.35 14.2 -3.78 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","rocks"]}
summon pig -13.67 14.2 -2.60 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","sea"]}
summon pig -14.76 14.2 -4.40 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","glaciers"]}
summon pig -15.22 14.2 -2.53 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","random"]}
# Hats
summon pig -8.82 15.0 -4.43 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","pirate_hat"]}
summon pig -8.71 14.2 -3.60 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","eyepatch"]}
summon pig -8.50 14.2 -2.40 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","no_hat"]}
# Team selectors
summon pig -11 16.0 7 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","spectate"]}
summon pig -13 16.0 7 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","ClickDetectorFFA","join"]}
# Build phase time
summon pig -5 16.8 7 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","build_time"]}
setblock -5 17 7 glass_pane

# AI stuff
setblock -4 22 7 lever[facing=east,powered=false]
setblock -8 15 16 spruce_button[face=floor]

kill @e[type=item]