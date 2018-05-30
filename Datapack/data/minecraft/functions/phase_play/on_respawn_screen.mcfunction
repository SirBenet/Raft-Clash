scoreboard players add @s OnRespawnScreen 1

# Warnings
tellraw @s[scores={OnRespawnScreen=140}] {"text":"Respawn or you will be eliminated","color":"red"}
playsound block.note.guitar master @s[scores={OnRespawnScreen=140}] ~ ~ ~ 2 0.8
playsound block.note.pling master @s[scores={OnRespawnScreen=240}]

# Elimination
execute if entity @s[scores={OnRespawnScreen=300}] as @a at @s run playsound entity.evocation_illager.prepare_summon master @s ~ ~ ~ 2 1.5
gamemode spectator @s[scores={OnRespawnScreen=300}]
tp @s[scores={OnRespawnScreen=300}] @a[limit=1,gamemode=!spectator,sort=nearest]
execute if entity @s[scores={OnRespawnScreen=300}] run tellraw @a [{"text":"☠ ","color":"dark_gray"},{"selector":"@s"},{"text":" has been eliminated! ☠","color":"dark_gray"}]