# Add
execute store result score @s CurrentAngle run data get entity @s Rotation[0] 32768
scoreboard players operation @s CurrentAngle += @s AngularMomentum 
execute store result entity @s Rotation[0] float 0.000030517578125 run scoreboard players get @s CurrentAngle

# Drag
scoreboard players operation @s AngularMomentum *= 9 Constants
scoreboard players operation @s AngularMomentum /= 10 Constants

# Update shulkers
execute if entity @s[tag=Raft1] as @e[type=shulker,tag=Raft1] at @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=Raft2] as @e[type=shulker,tag=Raft2] at @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=Raft3] as @e[type=shulker,tag=Raft3] at @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=Raft4] as @e[type=shulker,tag=Raft4] at @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=Raft5] as @e[type=shulker,tag=Raft5] at @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=Raft6] as @e[type=shulker,tag=Raft6] at @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=Raft7] as @e[type=shulker,tag=Raft7] at @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=Raft8] as @e[type=shulker,tag=Raft8] at @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=Raft9] as @e[type=shulker,tag=Raft9] at @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=Raft10] as @e[type=shulker,tag=Raft10] at @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=Raft11] as @e[type=shulker,tag=Raft11] at @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=Raft12] as @e[type=shulker,tag=Raft12] at @s run tp @s ~ ~ ~ ~ ~