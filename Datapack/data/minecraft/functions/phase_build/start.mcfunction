# First part of starting game (load map)

gamemode spectator @a[team=spectate]
gamemode spectator @a[scores={DeathTime=0}]

gamerule doTileDrops true
tellraw @a[gamemode=!spectator] {"text":"Starting game...","color":"green"}
tp @a[gamemode=!spectator] -6 23 3

# Detect map (then load, tag spawnpoints, set up worldborder center, kill any leftovers from last round)
execute if block -15 14 -4 green_stained_glass as 0-0-0-0-1 run function phase_build/start_maps/bay
execute if block -15 14 -4 gray_stained_glass as 0-0-0-0-1 run function phase_build/start_maps/rocks
execute if block -15 14 -4 blue_stained_glass as 0-0-0-0-1 run function phase_build/start_maps/sea
execute if block -15 14 -4 light_blue_stained_glass as 0-0-0-0-1 run function phase_build/start_maps/glaciers
execute if block -15 14 -4 magenta_stained_glass as 0-0-0-0-1 run function phase_build/start_maps/random