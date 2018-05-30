# Reset respawn screen camping timer
scoreboard players set @s OnRespawnScreen 0

# Teleport to chest with same RaftID, add eliminated tag if teleport fails
function phase_play/teleport_to_chest

# Let player get killed by water again
advancement revoke @s only technical/entered_water

# ☠ Elimination
execute if entity @s[tag=GAMEEliminated] as @a at @s run playsound minecraft:entity.evocation_illager.prepare_summon master @s ~ ~ ~ 2 1.5
gamemode spectator @s[tag=GAMEEliminated]
execute if entity @s[tag=GAMEEliminated] run tellraw @a [{"text":"☠ ","color":"dark_gray"},{"selector":"@s"},{"text":" has been eliminated! ☠","color":"dark_gray"}]

# Teleport dead spectators to nearest player instead
tp @s[gamemode=spectator] @a[gamemode=!spectator,sort=nearest,limit=1]