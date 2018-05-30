# Decide target (go for valid chest, then players)
tag @e[tag=AITarget] remove AITarget

tag @e[type=armor_stand,tag=RAFTChestValid,limit=1] add AITarget
execute unless entity @e[type=armor_stand,tag=RAFTChestValid] run tag @a[gamemode=!spectator,limit=1] add AITarget
