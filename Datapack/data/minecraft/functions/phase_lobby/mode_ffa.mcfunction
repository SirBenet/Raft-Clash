playsound block.end_portal_frame.fill master @s ~ ~ ~ 1 1.5
setblock ~ ~1 ~ air
setblock ~ ~ ~ air
setblock ~ ~ ~ oak_wall_sign[facing=north]{Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function phase_lobby/mode_ai\"}}",Text2:"[\"\",{\"text\":\"\\u2620 \"},{\"text\":\"FFA\",\"bold\":true,\"color\":\"black\"},{\"text\":\" \",\"bold\":true,\"color\":\"gold\"},{\"text\":\"\\u2620\"}]",Text3:"{\"text\":\"[Change to AI]\",\"color\":\"dark_gray\"}"}
setblock ~ ~1 ~ gray_carpet

# Change drinks
fill -14 16 7 -16 16 7 air
setblock -13 16 7 magenta_carpet

execute as @e[type=area_effect_cloud,tag=HoverTextFFA] run data merge entity @s {CustomNameVisible:1b}
execute as @e[type=area_effect_cloud,tag=HoverTextTeam] run data merge entity @s {CustomNameVisible:0b}

teleport @e[type=pig,tag=ClickDetectorTeam] ~ ~-500 ~
kill @e[type=pig,tag=ClickDetectorTeam]

summon pig -13 16.0 7 {Team:"NoCollide",DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Invulnerable:1b,Tags:["ClickDetector","ClickDetectorFFA","join"]}

# Make all non-spectators join
execute as @a[team=!spectate] run function phase_lobby/pig_actions/join

title @a actionbar [{"selector":"@s"},{"text":" has changed mode to FFA","color":"gray"}]
