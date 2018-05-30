# Remove old tags
tag @s remove LOBBYBluePlayers
tag @s remove LOBBYRedPlayers
tag @s remove LOBBYGreenPlayers
tag @s remove LOBBYYellowPlayers

tag @s remove LOBBYStartGame

# Try to start ffa/team game
execute if block -12 17 6 gray_carpet run function phase_lobby/try_start_game_ffa
execute if block -12 17 6 green_carpet run function phase_lobby/try_start_game_team
execute if block -12 17 6 yellow_carpet run function phase_lobby/try_start_game_ai
execute if entity @s[tag=LOBBYStartGame] run function phase_build/start 

scoreboard players set @s WinCheckTimer 0