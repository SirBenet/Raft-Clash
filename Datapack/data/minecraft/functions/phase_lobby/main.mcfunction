# Handle relogging players
execute as @a[scores={LeaveGame=1..}] run function phase_lobby/player_relog

execute as 0-0-0-0-2 at @s run function ai/main_lobby