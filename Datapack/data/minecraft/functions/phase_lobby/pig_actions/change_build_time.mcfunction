# Remove old build time tag from data bat
tag 0-0-0-0-1 remove BuildTimeQuick
tag 0-0-0-0-1 remove BuildTimeNormal
tag 0-0-0-0-1 remove BuildTimeLong

# Tag based on current build time (before change)
execute if block -5 17 7 iron_bars run tag 0-0-0-0-1 add BuildTimeNormal
execute if block -5 17 7 glass_pane run tag 0-0-0-0-1 add BuildTimeLong
execute if block -5 17 7 ladder run tag 0-0-0-0-1 add BuildTimeQuick

# Set new block based on tag
execute as 0-0-0-0-1 if entity @s[tag=BuildTimeQuick] run setblock -5 17 7 iron_bars
execute as 0-0-0-0-1 if entity @s[tag=BuildTimeNormal] run setblock -5 17 7 glass_pane
execute as 0-0-0-0-1 if entity @s[tag=BuildTimeLong] run setblock -5 17 7 ladder[facing=west]

# Change hover text
execute if block -5 17 7 iron_bars run data merge entity @e[type=area_effect_cloud,tag=HoverTextBuildTime,limit=1] {CustomName:"{\"color\":\"gold\",\"text\":\"Build Time: Quick\"}"}
execute if block -5 17 7 glass_pane run data merge entity @e[type=area_effect_cloud,tag=HoverTextBuildTime,limit=1] {CustomName:"{\"color\":\"gold\",\"text\":\"Build Time: Normal\"}"}
execute if block -5 17 7 ladder run data merge entity @e[type=area_effect_cloud,tag=HoverTextBuildTime,limit=1] {CustomName:"{\"color\":\"gold\",\"text\":\"Build Time: Long\"}"}

# Sound & message
execute if block -5 17 7 iron_bars run playsound minecraft:block.note.xylophone master @s ~ ~ ~ 2 1
execute if block -5 17 7 glass_pane run playsound minecraft:block.note.xylophone master @s ~ ~ ~ 2 1.5
execute if block -5 17 7 ladder run playsound minecraft:block.note.xylophone master @s ~ ~ ~ 2 2

execute if block -5 17 7 iron_bars run title @a actionbar [{"selector":"@s"},{"text":" has changed build phase time to quick","color":"gray"}]
execute if block -5 17 7 glass_pane run title @a actionbar [{"selector":"@s"},{"text":" has changed build phase time to normal","color":"gray"}]
execute if block -5 17 7 ladder run title @a actionbar [{"selector":"@s"},{"text":" has changed build phase time to long","color":"gray"}]