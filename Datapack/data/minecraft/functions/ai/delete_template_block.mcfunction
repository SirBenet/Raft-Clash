# Go to raft teplate center
execute store result entity @s Pos[0] double 0.000030517578125 run scoreboard players get AILayoutCenterX WorkSpace
execute store result entity @s Pos[1] double 0.000030517578125 run scoreboard players get AILayoutCenterY WorkSpace
execute store result entity @s Pos[2] double 0.000030517578125 run scoreboard players get AILayoutCenterZ WorkSpace

# Teleport outwards from template center, based on binary position tags
execute positioned as @s[tag=x-16] run tp @s ~-16 ~ ~
execute positioned as @s[tag=x8] run tp @s ~8 ~ ~
execute positioned as @s[tag=x4] run tp @s ~4 ~ ~
execute positioned as @s[tag=x2] run tp @s ~2 ~ ~
execute positioned as @s[tag=x1] run tp @s ~1 ~ ~

execute positioned as @s[tag=y-32] run tp @s ~ ~-32 ~
execute positioned as @s[tag=y16] run tp @s ~ ~16 ~
execute positioned as @s[tag=y8] run tp @s ~ ~8 ~
execute positioned as @s[tag=y4] run tp @s ~ ~4 ~
execute positioned as @s[tag=y2] run tp @s ~ ~2 ~
execute positioned as @s[tag=y1] run tp @s ~ ~1 ~

execute positioned as @s[tag=z-16] run tp @s ~ ~ ~-16
execute positioned as @s[tag=z8] run tp @s ~ ~ ~8
execute positioned as @s[tag=z4] run tp @s ~ ~ ~4
execute positioned as @s[tag=z2] run tp @s ~ ~ ~2
execute positioned as @s[tag=z1] run tp @s ~ ~ ~1

# Remove barrier block
execute positioned as @s run setblock ~ ~1 ~ air

# Teleport back, so shulker can kill me
tp @s ~ ~ ~ ~ ~