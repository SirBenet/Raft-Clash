tag @s remove GAMEEnd

execute as @e[tag=AIGame] at @s if block ~ ~1 ~ water run kill @s
execute as @e[tag=AIGame] at @s if block ~ ~1 ~ moving_piston run kill @s

# AI exist?
execute unless entity @e[tag=AIGame] run tag @s add GAMEEnd
#execute unless entity @e[tag=AIGame] run particle dust 1 1 1 10 -12.5 17.00 3.5 10 3 10 0 500 force
execute unless entity @e[tag=AIGame] run title @a title [{"text":"Players won!","color":"gray"}]
execute unless entity @e[tag=AIGame] run tellraw @a [{"text":"Players won!","color":"gray"}]

# Players exist?
execute unless entity @a[gamemode=!spectator] run tag @s add GAMEEnd
#execute unless entity @a[gamemode=!spectator] run particle dust 0.1 0.5 0.1 10 -12.5 17.00 3.5 10 3 10 0 500 force
execute unless entity @a[gamemode=!spectator] run title @a title [{"text":"Captain Coldblood won!","color":"dark_green"}]
execute unless entity @a[gamemode=!spectator] run tellraw @a [{"text":"Captain Coldblood won!","color":"dark_green"}]

#TODO: Remove, just here so game doesn't end while I'm testing
#tag @s remove GAMEEnd

# End
execute if entity @s[tag=GAMEEnd] run playsound ui.toast.challenge_complete master @a ~ ~ ~ 0 1.8 1
execute if entity @s[tag=GAMEEnd] run function phase_lobby/start