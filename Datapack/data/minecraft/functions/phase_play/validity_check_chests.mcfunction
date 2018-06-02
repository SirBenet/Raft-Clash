# Check if in air
tag @s remove RAFTChestValid
execute if block ~0.3 ~-0.01 ~0.3 air if block ~0.3 ~-0.01 ~-0.3 air if block ~-0.3 ~-0.01 ~0.3 air if block ~-0.3 ~-0.01 ~-0.3 air run tag @s add RAFTChestValid

# Messages
execute if entity @s[tag=!RAFTChestValid,tag=RAFTChestWasValid] run scoreboard players operation @a RaftID -= @s RaftID
execute if entity @s[tag=!RAFTChestValid,tag=RAFTChestWasValid] run tellraw @a[scores={RaftID=0}] {"text":"Your treasure chest is in an invalid location, you will not be able to respawn from it!","color":"red"}
execute if entity @s[tag=!RAFTChestValid,tag=RAFTChestWasValid] run playsound block.note.guitar master @a[scores={RaftID=0}] ~ ~ ~ 99990 0
execute if entity @s[tag=!RAFTChestValid,tag=RAFTChestWasValid] run tag @a[scores={RaftID=0}] remove HasChest
execute if entity @s[tag=!RAFTChestValid,tag=RAFTChestWasValid] run replaceitem entity @a[scores={RaftID=0}] weapon.offhand air
execute if entity @s[tag=!RAFTChestValid,tag=RAFTChestWasValid] run scoreboard players operation @a RaftID += @s RaftID

execute if entity @s[tag=RAFTChestValid,tag=!RAFTChestWasValid] run scoreboard players operation @a RaftID -= @s RaftID
execute if entity @s[tag=RAFTChestValid,tag=!RAFTChestWasValid] run tellraw @a[scores={RaftID=0}] {"text":"Your treasure chest is back in a valid location.","color":"green"}
execute if entity @s[tag=RAFTChestValid,tag=!RAFTChestWasValid] run playsound block.note.bell master @a[scores={RaftID=0}] ~ ~ ~ 99990 1.3
execute if entity @s[tag=RAFTChestValid,tag=!RAFTChestWasValid] run tag @a[scores={RaftID=0}] add HasChest
execute if entity @s[tag=RAFTChestValid,tag=!RAFTChestWasValid] run replaceitem entity @a[scores={RaftID=0}] weapon.offhand totem_of_undying{display:{Name:"\"\""}}
execute if entity @s[tag=RAFTChestValid,tag=!RAFTChestWasValid] run scoreboard players operation @a RaftID += @s RaftID

# For next tick
tag @s remove RAFTChestWasValid
tag @s[tag=RAFTChestValid] add RAFTChestWasValid