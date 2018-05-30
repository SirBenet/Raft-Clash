execute store result score @s SuccessCount if entity @a[team=play_ai,gamemode=!spectator,scores={DeathTime=1..}]
tag @s[scores={SuccessCount=1..11}] add LOBBYStartGame
# Not enough players
execute if entity @s[scores={SuccessCount=0}] run tellraw @a {"text":"Need at least one participating player to start AI game.","color":"red"}
# Too many players
execute if entity @s[scores={SuccessCount=12..}] run tellraw @a {"text":"Too many players, max of 11.","color":"red"}