# Teleport to valid chest with same RaftID, add eliminated tag if there is none
scoreboard players operation @e[type=armor_stand,tag=RAFTChestValid] RaftID -= @s RaftID

execute unless entity @e[type=armor_stand,tag=RAFTChestValid,scores={RaftID=0}] run tag @s add GAMEEliminated
tp @s @e[type=armor_stand,tag=RAFTChestValid,scores={RaftID=0},limit=1]

scoreboard players operation @e[type=armor_stand,tag=RAFTChestValid] RaftID += @s RaftID