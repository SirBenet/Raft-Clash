execute store result score MotionX WorkSpace run data get entity @s Motion[0] 32768
execute store result score MotionZ WorkSpace run data get entity @s Motion[2] 32768

scoreboard players operation MotionX WorkSpace *= MotionX WorkSpace
scoreboard players operation MotionZ WorkSpace *= MotionZ WorkSpace

scoreboard players operation MotionX WorkSpace += MotionZ WorkSpace

execute if score MotionX WorkSpace matches ..100000 run tag @s add RAFTControllerStopped
data merge entity @s[tag=RAFTControllerStopped] {Motion:[0.0,0.0,0.0]}