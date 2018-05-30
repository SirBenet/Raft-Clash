# Go downwards until at a layer with blocks
scoreboard players set @s SuccessCount 0
execute store result score @s SuccessCount if blocks ~ ~-1 ~ ~15 ~-2 ~15 ~ ~-3 ~ all

execute if entity @s[scores={SuccessCount=0}] run function raft/create/split_x
execute if entity @s[scores={SuccessCount=1}] positioned ~ ~-2 ~ run function raft/create/crop