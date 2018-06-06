# Teleport to valid chest with same RaftID
scoreboard players operation @e[type=armor_stand,tag=RAFTChestValid] RaftID -= @s RaftID
tp @s @e[type=armor_stand,tag=RAFTChestValid,scores={RaftID=0},limit=1]
scoreboard players operation @e[type=armor_stand,tag=RAFTChestValid] RaftID += @s RaftID