summon arrow ~ ~2.2 ~ {Tags:["AIArrow","AIArrowNew"],Color:-1,damage:5}

# Get direction vector
summon area_effect_cloud ~ ~ ~ {Tags:["VectorGetter"]}
execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[type=area_effect_cloud,tag=VectorGetter] ^ ^ ^1
execute store result score ForwardX WorkSpace run data get entity @e[type=area_effect_cloud,tag=VectorGetter,limit=1] Pos[0] 32768
execute store result score ForwardY WorkSpace run data get entity @e[type=area_effect_cloud,tag=VectorGetter,limit=1] Pos[1] 32768
execute store result score ForwardZ WorkSpace run data get entity @e[type=area_effect_cloud,tag=VectorGetter,limit=1] Pos[2] 32768
kill @e[type=area_effect_cloud,tag=VectorGetter]

# Store into new arrow
execute store result entity @e[type=arrow,tag=AIArrowNew,limit=1] Motion[0] double 0.000030517578125 run scoreboard players get ForwardX WorkSpace
execute store result entity @e[type=arrow,tag=AIArrowNew,limit=1] Motion[1] double 0.000030517578125 run scoreboard players get ForwardY WorkSpace
execute store result entity @e[type=arrow,tag=AIArrowNew,limit=1] Motion[2] double 0.000030517578125 run scoreboard players get ForwardZ WorkSpace

tag @e[type=arrow,tag=AIArrowNew] remove AIArrowNew