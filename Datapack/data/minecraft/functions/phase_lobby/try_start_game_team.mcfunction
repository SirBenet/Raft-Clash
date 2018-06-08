# Check that 2 teams exist
execute if entity @a[team=red,gamemode=!spectator,scores={DeathTime=1..}] if entity @a[team=blue,gamemode=!spectator,scores={DeathTime=1..}] run tag 0-0-0-0-1 add LOBBYStartGame
execute if entity @a[team=green,gamemode=!spectator,scores={DeathTime=1..}] if entity @a[team=blue,gamemode=!spectator,scores={DeathTime=1..}] run tag 0-0-0-0-1 add LOBBYStartGame
execute if entity @a[team=yellow,gamemode=!spectator,scores={DeathTime=1..}] if entity @a[team=blue,gamemode=!spectator,scores={DeathTime=1..}] run tag 0-0-0-0-1 add LOBBYStartGame

execute if entity @a[team=blue,gamemode=!spectator,scores={DeathTime=1..}] if entity @a[team=red,gamemode=!spectator,scores={DeathTime=1..}] run tag 0-0-0-0-1 add LOBBYStartGame
execute if entity @a[team=green,gamemode=!spectator,scores={DeathTime=1..}] if entity @a[team=red,gamemode=!spectator,scores={DeathTime=1..}] run tag 0-0-0-0-1 add LOBBYStartGame
execute if entity @a[team=yellow,gamemode=!spectator,scores={DeathTime=1..}] if entity @a[team=red,gamemode=!spectator,scores={DeathTime=1..}] run tag 0-0-0-0-1 add LOBBYStartGame

execute if entity @a[team=blue,gamemode=!spectator,scores={DeathTime=1..}] if entity @a[team=green,gamemode=!spectator,scores={DeathTime=1..}] run tag 0-0-0-0-1 add LOBBYStartGame
execute if entity @a[team=red,gamemode=!spectator,scores={DeathTime=1..}] if entity @a[team=green,gamemode=!spectator,scores={DeathTime=1..}] run tag 0-0-0-0-1 add LOBBYStartGame
execute if entity @a[team=yellow,gamemode=!spectator,scores={DeathTime=1..}] if entity @a[team=green,gamemode=!spectator,scores={DeathTime=1..}] run tag 0-0-0-0-1 add LOBBYStartGame

execute if entity @a[team=blue,gamemode=!spectator,scores={DeathTime=1..}] if entity @a[team=yellow,gamemode=!spectator,scores={DeathTime=1..}] run tag 0-0-0-0-1 add LOBBYStartGame
execute if entity @a[team=red,gamemode=!spectator,scores={DeathTime=1..}] if entity @a[team=yellow,gamemode=!spectator,scores={DeathTime=1..}] run tag 0-0-0-0-1 add LOBBYStartGame
execute if entity @a[team=green,gamemode=!spectator,scores={DeathTime=1..}] if entity @a[team=yellow,gamemode=!spectator,scores={DeathTime=1..}] run tag 0-0-0-0-1 add LOBBYStartGame

execute if entity @s[tag=!LOBBYStartGame] run tellraw @a {"text":"Need at least two teams to start TEAM game.","color":"red"}

# Too many players
execute store result score SuccessCount WorkSpace if entity @a[team=!spectate,gamemode=!spectator,scores={DeathTime=1..}]
execute if score SuccessCount WorkSpace matches 12.. run tag @s remove LOBBYStartGame
execute if score SuccessCount WorkSpace matches 12.. run tellraw @a {"text":"Too many players, max of 11.","color":"red"}