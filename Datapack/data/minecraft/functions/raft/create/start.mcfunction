# Move down to highest block
execute positioned ~-8 ~31.5 ~-8 run function raft/create/crop

# Get helm pos, so that we can then get positions of blocks relative to it
execute store result score Helm TempX run data get entity @e[type=armor_stand,tag=RAFTHelmStand,tag=RAFTNew,limit=1] Pos[0]
execute store result score Helm TempY run data get entity @e[type=armor_stand,tag=RAFTHelmStand,tag=RAFTNew,limit=1] Pos[1]
execute store result score Helm TempZ run data get entity @e[type=armor_stand,tag=RAFTHelmStand,tag=RAFTNew,limit=1] Pos[2]
execute as @e[tag=RAFTMove,tag=RAFTNew] run function raft/create/apply_position_tags

# Apply ID and number tag
scoreboard players operation @e[type=armor_stand,tag=RAFTNew] RaftID = @s RaftID
execute if score RaftNumTotal Global matches 0 run tag @e[tag=RAFTNew] add Raft1
execute if score RaftNumTotal Global matches 1 run tag @e[tag=RAFTNew] add Raft2
execute if score RaftNumTotal Global matches 2 run tag @e[tag=RAFTNew] add Raft3
execute if score RaftNumTotal Global matches 3 run tag @e[tag=RAFTNew] add Raft4
execute if score RaftNumTotal Global matches 4 run tag @e[tag=RAFTNew] add Raft5
execute if score RaftNumTotal Global matches 5 run tag @e[tag=RAFTNew] add Raft6
execute if score RaftNumTotal Global matches 6 run tag @e[tag=RAFTNew] add Raft7
execute if score RaftNumTotal Global matches 7 run tag @e[tag=RAFTNew] add Raft8
execute if score RaftNumTotal Global matches 8 run tag @e[tag=RAFTNew] add Raft9
execute if score RaftNumTotal Global matches 9 run tag @e[tag=RAFTNew] add Raft10
execute if score RaftNumTotal Global matches 10 run tag @e[tag=RAFTNew] add Raft11
execute if score RaftNumTotal Global matches 11 run tag @e[tag=RAFTNew] add Raft12
scoreboard players add RaftNumTotal Global 1

# If this raft has a chest, tag this person/team with HasChest
execute if entity @e[type=armor_stand,tag=RAFTNew,tag=RAFTChest] run scoreboard players operation @a RaftID -= @s RaftID
execute if entity @e[type=armor_stand,tag=RAFTNew,tag=RAFTChest] run tag @a[scores={RaftID=0}] add HasChest
execute if entity @e[type=armor_stand,tag=RAFTNew,tag=RAFTChest] run replaceitem entity @a[scores={RaftID=0}] weapon.offhand totem_of_undying{display:{Name:"\"\""}}
execute if entity @e[type=armor_stand,tag=RAFTNew,tag=RAFTChest] run scoreboard players operation @a RaftID += @s RaftID

tag @e[tag=RAFTNew] remove RAFTNew