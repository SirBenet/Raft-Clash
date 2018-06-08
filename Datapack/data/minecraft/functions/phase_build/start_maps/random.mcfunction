# Pick random map based on game time
execute store result score RandomMap Global run time query gametime
scoreboard players operation RandomMap Global %= 4 Constants
execute if score RandomMap Global matches 0 run function phase_build/start_maps/bay
execute if score RandomMap Global matches 1 run function phase_build/start_maps/rocks
execute if score RandomMap Global matches 2 run function phase_build/start_maps/sea
execute if score RandomMap Global matches 3 run function phase_build/start_maps/glaciers