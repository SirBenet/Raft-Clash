# Called on stands with gravity
execute store result score @s RAFTGravMotion run data get entity @s Motion[1] 32768
execute store result score @s[scores={RAFTGravMotion=..-2571}] RAFTGravOffset run data get entity @s Pos[1] 32768
execute store result score @s[scores={RAFTGravMotion=-2569..}] RAFTGravOffset run data get entity @s Pos[1] 32768