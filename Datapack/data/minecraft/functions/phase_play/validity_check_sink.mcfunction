# Check if in water
tag @s remove RAFTChestSank
execute if block ~ ~ ~ water run tag @s add RAFTChestSank
execute if block ~ ~ ~ moving_piston run tag @s add RAFTChestSank
tag @s[y=35,dy=-50] add RAFTChestSank


execute if entity @s[tag=RAFTChestSank] run particle bubble ~ ~ ~ 0.2 0.6 0.2 0.5 500
execute if entity @s[tag=RAFTChestSank] as @a at @s run playsound random.splash master @s ~ ~ ~ 2 0.7

# Messages
# Individual player
execute if entity @s[scores={RaftID=1..},tag=RAFTChestSank] run scoreboard players operation @a RaftID -= @s RaftID
execute if entity @s[scores={RaftID=1..},tag=RAFTChestSank] run tellraw @a [{"text":"☠ ","color":"dark_gray"},{"selector":"@a[scores={RaftID=0}]"},{"text":"'s treasure chest has sunk, they can no longer respawn! ☠","color":"dark_gray"}]
execute if entity @s[scores={RaftID=1..},tag=RAFTChestSank] run scoreboard players operation @a RaftID += @s RaftID
# Team
execute if entity @s[scores={RaftID=-1},tag=RAFTChestSank] run tellraw @a {"text":"☠ Blue team's treasure chest has sunk, they can no longer respawn! ☠","color":"dark_aqua"}
execute if entity @s[scores={RaftID=-2},tag=RAFTChestSank] run tellraw @a {"text":"☠ Red team's treasure chest has sunk, they can no longer respawn! ☠","color":"red"}
execute if entity @s[scores={RaftID=-3},tag=RAFTChestSank] run tellraw @a {"text":"☠ Green team's treasure chest has sunk, they can no longer respawn! ☠","color":"green"}
execute if entity @s[scores={RaftID=-4},tag=RAFTChestSank] run tellraw @a {"text":"☠ Yellow team's treasure chest has sunk, they can no longer respawn! ☠","color":"yellow"}
# AI
execute if entity @s[scores={RaftID=-6},tag=RAFTChestSank] run tellraw @a {"text":"☠ The players' treasure chest has sunk, they can no longer respawn! ☠","color":"red"}

kill @s[tag=RAFTChestSank]