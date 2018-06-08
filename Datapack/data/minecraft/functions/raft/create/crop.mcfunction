# Go downwards until at a layer with blocks
execute store result score SuccessCount WorkSpace if blocks ~ ~-1 ~ ~15 ~-2 ~15 ~ ~-3 ~ all

execute if score SuccessCount WorkSpace matches 0 run function raft/create/split_x
execute if score SuccessCount WorkSpace matches 1 positioned ~ ~-2 ~ run function raft/create/crop