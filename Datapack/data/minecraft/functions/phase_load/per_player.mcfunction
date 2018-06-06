# Handle relogs
execute if entity @s[scores={LeaveGame=1..}] run function phase_build/player_relog

# Respawn
gamemode spectator @s[scores={DeathTime=1}]
teleport @s[scores={DeathTime=1}] @a[gamemode=!spectator,sort=nearest,limit=1]

# Effects
effect give @s resistance 10 5 true
effect give @s invisibility 3 0 true