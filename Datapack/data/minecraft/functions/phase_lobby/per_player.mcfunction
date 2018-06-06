effect give @s[gamemode=adventure] weakness 32 5 true

# Respawn
teleport @s[scores={DeathTime=1}] -16.6 15 3.7 -110 0
gamemode adventure @s[scores={DeathTime=1}]
execute as @s[scores={DeathTime=1}] run function code/clear_player

# If started riding pig
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] at @s run function phase_lobby/pig_click

# Summon location marker at me, give it my ID
summon area_effect_cloud ~ ~ ~ {Tags:["LOBBYPlayerMarker","LOBBYPlayerMarkerNew"],Duration:2}
teleport @e[type=area_effect_cloud,tag=LOBBYPlayerMarkerNew,distance=..0.1,limit=1,sort=nearest] ~ ~ ~ ~ ~
scoreboard players operation @e[type=area_effect_cloud,tag=LOBBYPlayerMarkerNew,distance=..0.1,limit=1,sort=nearest] PlayerID = @s PlayerID
tag @e[type=area_effect_cloud,tag=LOBBYPlayerMarkerNew,distance=..0.1,limit=1,sort=nearest] remove LOBBYPlayerMarkerNew