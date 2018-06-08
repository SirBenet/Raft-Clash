execute store result score SuccessCount WorkSpace if entity @a[team=play_ai,gamemode=!spectator,scores={DeathTime=1..}]
execute if score SuccessCount WorkSpace matches 1..11 run tag @s add LOBBYStartGame
# Not enough players
execute if score SuccessCount WorkSpace matches 0 run tellraw @a {"text":"Need at least one participating player to start AI game.","color":"red"}
# Too many players
execute if score SuccessCount WorkSpace matches 12.. run tellraw @a {"text":"Too many players, max of 11.","color":"red"}