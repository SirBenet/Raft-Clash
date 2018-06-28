# ☠ Elimination
execute as @a at @s run playsound entity.evoker.prepare_summon master @s ~ ~ ~ 2 1.5
gamemode spectator @s
tp @s @a[gamemode=!spectator,sort=nearest,limit=1]
tellraw @a [{"text":"☠ ","color":"dark_gray"},{"selector":"@s"},{"text":" has been eliminated! ☠","color":"dark_gray"}]