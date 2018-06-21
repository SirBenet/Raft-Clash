# Called on stands with gravity
execute store result score @s RAFTGravMotion run data get entity @s Motion[1] 32768
execute store result score @s[scores={RAFTGravMotion=..-2571}] RAFTGravOffset run data get entity @s Pos[1] 32768
execute store result score @s[scores={RAFTGravMotion=-2569..}] RAFTGravOffset run data get entity @s Pos[1] 32768

execute if entity @s[scores={RAFTGravMotion=..-2571}] run say I'm falling1
execute if entity @s[scores={RAFTGravMotion=..-2571}] run particle barrier
execute if entity @s[scores={RAFTGravMotion=-2569..}] if block ~ ~ ~ air run say I'm falling2

# Account for rounding
scoreboard players add @s[scores={RAFTGravMotion=..-2571}] RAFTGravOffset 10