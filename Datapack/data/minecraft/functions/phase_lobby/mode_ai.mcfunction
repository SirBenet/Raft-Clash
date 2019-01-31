playsound block.end_portal_frame.fill master @s ~ ~ ~ 1 1.5
setblock ~ ~1 ~ air
setblock ~ ~ ~ air
setblock ~ ~ ~ oak_wall_sign[facing=north]{Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function phase_lobby/mode_team\"}}",Text2:"[\"\",{\"text\":\"\\u2620 \"},{\"text\":\"AI boss\",\"bold\":true,\"color\":\"black\"},{\"text\":\" \",\"bold\":true,\"color\":\"gold\"},{\"text\":\"\\u2620\"}]",Text3:"{\"text\":\"[Change to TEAM]\",\"color\":\"dark_gray\"}"}
setblock ~ ~1 ~ yellow_carpet

# Make all non-spectators join
execute as @a[team=!spectate] run function phase_lobby/pig_actions/join

title @a actionbar [{"selector":"@s"},{"text":" has changed mode to AI boss","color":"gray"}]

# Enter captain coldblood
kill @e[type=area_effect_cloud,tag=AIMove]
function ai/paths/lobby_enter