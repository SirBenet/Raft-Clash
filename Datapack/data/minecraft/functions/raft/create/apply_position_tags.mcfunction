# Get our absolute pos
execute store result score @s TempX run data get entity @s Pos[0]
execute store result score @s TempY run data get entity @s Pos[1]
execute store result score @s TempZ run data get entity @s Pos[2]

# Make relative to helm
scoreboard players operation @s TempX -= Helm TempX
scoreboard players operation @s TempY -= Helm TempY
scoreboard players operation @s TempZ -= Helm TempZ

# Binary bleh to make tags
tag @s[scores={TempX=..-1}] add x-16
scoreboard players add @s[scores={TempX=..-1}] TempX 16
tag @s[scores={TempX=8..}] add x8
scoreboard players remove @s[scores={TempX=8..}] TempX 8
tag @s[scores={TempX=4..}] add x4
scoreboard players remove @s[scores={TempX=4..}] TempX 4
tag @s[scores={TempX=2..}] add x2
scoreboard players remove @s[scores={TempX=2..}] TempX 2
tag @s[scores={TempX=1..}] add x1
scoreboard players remove @s[scores={TempX=1..}] TempX 1

tag @s[scores={TempY=..-1}] add y-32
scoreboard players add @s[scores={TempY=..-1}] TempY 32
tag @s[scores={TempY=16..}] add y16
scoreboard players remove @s[scores={TempY=16..}] TempY 16
tag @s[scores={TempY=8..}] add y8
scoreboard players remove @s[scores={TempY=8..}] TempY 8
tag @s[scores={TempY=4..}] add y4
scoreboard players remove @s[scores={TempY=4..}] TempY 4
tag @s[scores={TempY=2..}] add y2
scoreboard players remove @s[scores={TempY=2..}] TempY 2
tag @s[scores={TempY=1..}] add y1
scoreboard players remove @s[scores={TempY=1..}] TempY 1

tag @s[scores={TempZ=..-1}] add z-16
scoreboard players add @s[scores={TempZ=..-1}] TempZ 16
tag @s[scores={TempZ=8..}] add z8
scoreboard players remove @s[scores={TempZ=8..}] TempZ 8
tag @s[scores={TempZ=4..}] add z4
scoreboard players remove @s[scores={TempZ=4..}] TempZ 4
tag @s[scores={TempZ=2..}] add z2
scoreboard players remove @s[scores={TempZ=2..}] TempZ 2
tag @s[scores={TempZ=1..}] add z1
scoreboard players remove @s[scores={TempZ=1..}] TempZ 1