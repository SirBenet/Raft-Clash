# Pick random map based on game time
execute store result score @s QueryResult run time query gametime
scoreboard players operation @s QueryResult %= 4 Constants
execute if entity @s[scores={QueryResult=0}] run function phase_build/start_maps/bay
execute if entity @s[scores={QueryResult=1}] run function phase_build/start_maps/rocks
execute if entity @s[scores={QueryResult=2}] run function phase_build/start_maps/sea
execute if entity @s[scores={QueryResult=3}] run function phase_build/start_maps/glaciers