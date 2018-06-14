# Teleport outwards from helm, based on binary position tags
execute positioned as @s[tag=x-16] run tp @s ^-16 ^ ^
execute positioned as @s[tag=x8] run tp @s ^8 ^ ^
execute positioned as @s[tag=x4] run tp @s ^4 ^ ^
execute positioned as @s[tag=x2] run tp @s ^2 ^ ^
execute positioned as @s[tag=x1] run tp @s ^1 ^ ^

execute positioned as @s[tag=y-32] run tp @s ^ ^-32 ^
execute positioned as @s[tag=y16] run tp @s ^ ^16 ^
execute positioned as @s[tag=y8] run tp @s ^ ^8 ^
execute positioned as @s[tag=y4] run tp @s ^ ^4 ^
execute positioned as @s[tag=y2] run tp @s ^ ^2 ^
execute positioned as @s[tag=y1] run tp @s ^ ^1 ^

execute positioned as @s[tag=z-16] run tp @s ^ ^ ^-16
execute positioned as @s[tag=z8] run tp @s ^ ^ ^8
execute positioned as @s[tag=z4] run tp @s ^ ^ ^4
execute positioned as @s[tag=z2] run tp @s ^ ^ ^2
execute positioned as @s[tag=z1] run tp @s ^ ^ ^1

# Apply Y offset score and motion, for falling gravity blocks
execute store result entity @s[tag=RAFTHasGravity,scores={RAFTGravOffset=1..}] Pos[1] double 0.000030517578125 run scoreboard players get @s RAFTGravOffset
execute store result entity @s[tag=RAFTHasGravity,scores={RAFTGravOffset=1..}] Motion[1] double 0.000030517578125 run scoreboard players get @s RAFTGravMotion