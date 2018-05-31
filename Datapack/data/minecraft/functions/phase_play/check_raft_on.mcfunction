# Ran from player
tag @s remove OnRaft1
tag @s remove OnRaft2
tag @s remove OnRaft3
tag @s remove OnRaft4
tag @s remove OnRaft5
tag @s remove OnRaft6
tag @s remove OnRaft7
tag @s remove OnRaft8
tag @s remove OnRaft9
tag @s remove OnRaft10
tag @s remove OnRaft11
tag @s remove OnRaft12

execute positioned ~ ~-1 ~ if entity @e[type=armor_stand,distance=..2,tag=Raft1] run tag @s add OnRaft1
execute if entity @s[tag=!OnRaft1] positioned ~ ~-1 ~ if entity @e[type=armor_stand,distance=..2,tag=Raft2] run tag @s add OnRaft2
execute if entity @s[tag=!OnRaft1,tag=!OnRaft2] positioned ~ ~-1 ~ if entity @e[type=armor_stand,distance=..2,tag=Raft3] run tag @s add OnRaft3
execute if entity @s[tag=!OnRaft1,tag=!OnRaft2,tag=!OnRaft3] positioned ~ ~-1 ~ if entity @e[type=armor_stand,distance=..2,tag=Raft4] run tag @s add OnRaft4
execute if entity @s[tag=!OnRaft1,tag=!OnRaft2,tag=!OnRaft3,tag=!OnRaft4] positioned ~ ~-1 ~ if entity @e[type=armor_stand,distance=..2,tag=Raft5] run tag @s add OnRaft5
execute if entity @s[tag=!OnRaft1,tag=!OnRaft2,tag=!OnRaft3,tag=!OnRaft4,tag=!OnRaft5] positioned ~ ~-1 ~ if entity @e[type=armor_stand,distance=..2,tag=Raft6] run tag @s add OnRaft6
execute if entity @s[tag=!OnRaft1,tag=!OnRaft2,tag=!OnRaft3,tag=!OnRaft4,tag=!OnRaft5,tag=!OnRaft6] positioned ~ ~-1 ~ if entity @e[type=armor_stand,distance=..2,tag=Raft7] run tag @s add OnRaft7
execute if entity @s[tag=!OnRaft1,tag=!OnRaft2,tag=!OnRaft3,tag=!OnRaft4,tag=!OnRaft5,tag=!OnRaft6,tag=!OnRaft7] positioned ~ ~-1 ~ if entity @e[type=armor_stand,distance=..2,tag=Raft8] run tag @s add OnRaft8
execute if entity @s[tag=!OnRaft1,tag=!OnRaft2,tag=!OnRaft3,tag=!OnRaft4,tag=!OnRaft5,tag=!OnRaft6,tag=!OnRaft7,tag=!OnRaft8] positioned ~ ~-1 ~ if entity @e[type=armor_stand,distance=..2,tag=Raft9] run tag @s add OnRaft9
execute if entity @s[tag=!OnRaft1,tag=!OnRaft2,tag=!OnRaft3,tag=!OnRaft4,tag=!OnRaft5,tag=!OnRaft6,tag=!OnRaft7,tag=!OnRaft8,tag=!OnRaft9] positioned ~ ~-1 ~ if entity @e[type=armor_stand,distance=..2,tag=Raft10] run tag @s add OnRaft10
execute if entity @s[tag=!OnRaft1,tag=!OnRaft2,tag=!OnRaft3,tag=!OnRaft4,tag=!OnRaft5,tag=!OnRaft6,tag=!OnRaft7,tag=!OnRaft8,tag=!OnRaft9,tag=!OnRaft10] positioned ~ ~-1 ~ if entity @e[type=armor_stand,distance=..2,tag=Raft11] run tag @s add OnRaft11
execute if entity @s[tag=!OnRaft1,tag=!OnRaft2,tag=!OnRaft3,tag=!OnRaft4,tag=!OnRaft5,tag=!OnRaft6,tag=!OnRaft7,tag=!OnRaft8,tag=!OnRaft9,tag=!OnRaft10,tag=!OnRaft11] positioned ~ ~-1 ~ if entity @e[type=armor_stand,distance=..2,tag=Raft12] run tag @s add OnRaft12