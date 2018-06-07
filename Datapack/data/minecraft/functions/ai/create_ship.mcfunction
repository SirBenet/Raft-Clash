# Load in ship
setblock ~-8 ~-1 ~-25 structure_block[mode=load]{mode:"LOAD",name:"hms_lizard_live",posY:1} replace
setblock ~-8 ~-2 ~-25 redstone_block destroy
fill ~-8 ~-1 ~-25 ~-8 ~-2 ~-25 water

execute positioned ~-6 ~6 ~-1 run function ai/summon_captain_coldblood

# Load in layout template
setblock ~-8 ~64 ~-8 structure_block[mode=load]{mode:"LOAD",name:"hms_lizard_layout",posY:1} replace
setblock ~-8 ~65 ~-8 redstone_block destroy
fill ~-8 ~64 ~-8 ~-8 ~65 ~-8 air

execute positioned ~-6 ~71 ~-1 run summon zombie ~ ~0.5 ~ {Attributes:[{Name:generic.movementSpeed,Base:0.3}],Tags:["AIPathfinder"],NoAI:0b,ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],PersistenceRequired:1b,Invulnerable:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647}]}
execute positioned ~-6 ~73 ~-1 run summon villager ~ ~0.5 ~ {Tags:["AIPlayerVillager"],NoAI:1b,PersistenceRequired:1b,Invulnerable:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647}]}

# Store "center" of template (where helm would be)
summon minecart ~-6 ~71 ~-1 {Tags:["AILayoutCenterPosition"]}
execute store result score AILayoutCenterX WorkSpace run data get entity @e[type=minecart,tag=AILayoutCenterPosition,limit=1] Pos[0] 32768
execute store result score AILayoutCenterY WorkSpace run data get entity @e[type=minecart,tag=AILayoutCenterPosition,limit=1] Pos[1] 32768
execute store result score AILayoutCenterZ WorkSpace run data get entity @e[type=minecart,tag=AILayoutCenterPosition,limit=1] Pos[2] 32768
kill @e[type=minecart,tag=AILayoutCenterPosition]

# Keep ship loaded
spreadplayers ~ ~ 0 1 false @e[type=bat,tag=data]
tp @e[type=bat,tag=data] ~ 255 ~
setworldspawn ~ ~ ~
