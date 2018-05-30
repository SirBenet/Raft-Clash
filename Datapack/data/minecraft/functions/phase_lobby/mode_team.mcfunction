playsound block.end_portal_frame.fill master @s ~ ~ ~ 1 2
playsound block.end_portal_frame.fill master @s ~ ~ ~ 1 1
playsound block.end_portal_frame.fill master @s ~ ~ ~ 1 1.5
playsound block.end_portal_frame.fill master @s ~ ~ ~ 1 0.5
setblock ~ ~1 ~ green_carpet
data merge block ~ ~ ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function phase_lobby/mode_ffa\"}}",Text2:"[\"\",{\"text\":\"\\u2620 \"},{\"text\":\"T\",\"bold\":true,\"color\":\"dark_aqua\"},{\"text\":\"E\",\"bold\":true,\"color\":\"dark_red\"},{\"text\":\"A\",\"bold\":true,\"color\":\"dark_green\"},{\"text\":\"M \",\"bold\":true,\"color\":\"gold\"},{\"text\":\"\\u2620\"}]",Text3:"{\"text\":\"[Change to FFA]\",\"color\":\"dark_gray\"}"}

# Change drinks
setblock -13 16 7 orange_carpet
setblock -14 16 7 pink_carpet
setblock -15 16 7 purple_carpet
setblock -16 16 7 red_carpet

execute as @e[type=area_effect_cloud,tag=HoverTextFFA] run data merge entity @s {CustomNameVisible:0b}
execute as @e[type=area_effect_cloud,tag=HoverTextTeam] run data merge entity @s {CustomNameVisible:1b}

teleport @e[type=pig,tag=ClickDetectorFFA] ~ ~-500 ~
kill @e[type=pig,tag=ClickDetectorFFA]

summon pig -13 16.0 7 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","ClickDetectorTeam","blue"]}
summon pig -14 16.0 7 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","ClickDetectorTeam","red"]}
summon pig -15 16.0 7 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","ClickDetectorTeam","green"]}
summon pig -16 16.0 7 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","ClickDetectorTeam","yellow"]}

# Make all non-spectators join, respect previous team choice
execute as @a[team=!spectate] run function phase_lobby/pig_actions/join_team

title @a actionbar [{"selector":"@s"},{"text":" has changed mode to TEAM","color":"gray"}]

# Exit captain coldblood
kill @e[type=area_effect_cloud,tag=AIMove]
function ai/paths/lobby_exit