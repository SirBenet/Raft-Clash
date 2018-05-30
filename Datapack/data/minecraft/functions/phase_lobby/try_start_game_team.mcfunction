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
execute store result score @s SuccessCount if entity @a[team=!spectate,gamemode=!spectator,scores={DeathTime=1..}]
tag @s[scores={SuccessCount=12..}] remove LOBBYStartGame
execute if entity @s[scores={SuccessCount=12..}] run tellraw @a {"text":"Too many players, max of 11.","color":"red"}