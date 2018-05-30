# Forward vector
tp @s ^ ^ ^1
execute store result score ForwardX WorkSpace run data get entity @s Pos[0] 32768
execute store result score ForwardZ WorkSpace run data get entity @s Pos[2] 32768

# Left vector
tp @s ^1 ^ ^
execute store result score LeftX WorkSpace run data get entity @s Pos[0] 32768
execute store result score LeftZ WorkSpace run data get entity @s Pos[2] 32768