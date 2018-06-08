# Remove old tags
tag @s remove GAMEBlueWon
tag @s remove GAMERedWon
tag @s remove GAMEGreenWon
tag @s remove GAMEYellowWon

tag @s remove GAMEEnd

# Tie check (nobody left)
execute unless entity @a[gamemode=!spectator] run title @a title [{"text":"Tie!","color":"gray"}]
execute unless entity @a[gamemode=!spectator] run tellraw @a [{"text":"Tie!","color":"gray"}]
execute unless entity @a[gamemode=!spectator] run tag @s add GAMEEnd

# TEAM win check
execute if entity @a[gamemode=!spectator,team=blue] unless entity @a[gamemode=!spectator,team=yellow] unless entity @a[gamemode=!spectator,team=green] unless entity @a[gamemode=!spectator,team=red] run tag @s add GAMEBlueWon
execute if entity @a[gamemode=!spectator,team=red] unless entity @a[gamemode=!spectator,team=blue] unless entity @a[gamemode=!spectator,team=yellow] unless entity @a[gamemode=!spectator,team=green] run tag @s add GAMERedWon
execute if entity @a[gamemode=!spectator,team=green] unless entity @a[gamemode=!spectator,team=red] unless entity @a[gamemode=!spectator,team=blue] unless entity @a[gamemode=!spectator,team=yellow] run tag @s add GAMEGreenWon
execute if entity @a[gamemode=!spectator,team=yellow] unless entity @a[gamemode=!spectator,team=green] unless entity @a[gamemode=!spectator,team=red] unless entity @a[gamemode=!spectator,team=blue] run tag @s add GAMEYellowWon
execute if entity @s[tag=GAMEBlueWon] run title @a title [{"text":"Blue won!","color":"dark_aqua"}]
execute if entity @s[tag=GAMERedWon] run title @a title [{"text":"Red won!","color":"red"}]
execute if entity @s[tag=GAMEGreenWon] run title @a title [{"text":"Green won!","color":"green"}]
execute if entity @s[tag=GAMEYellowWon] run title @a title [{"text":"Yellow won!","color":"yellow"}]
execute if entity @s[tag=GAMEBlueWon] run tellraw @a [{"text":"Blue won!","color":"dark_aqua"}]
execute if entity @s[tag=GAMERedWon] run tellraw @a [{"text":"Red won!","color":"red"}]
execute if entity @s[tag=GAMEGreenWon] run tellraw @a [{"text":"Green won!","color":"green"}]
execute if entity @s[tag=GAMEYellowWon] run tellraw @a [{"text":"Yellow won!","color":"yellow"}]
tag @s[tag=GAMEBlueWon] add GAMEEnd
tag @s[tag=GAMERedWon] add GAMEEnd
tag @s[tag=GAMEGreenWon] add GAMEEnd
tag @s[tag=GAMEYellowWon] add GAMEEnd

# FFA win check
execute store result score SuccessCount WorkSpace if entity @a[team=play,gamemode=!spectator]
execute if score SuccessCount WorkSpace matches 1 run title @a title [{"selector":"@a[team=play,gamemode=!spectator]"},{"text":" won!","color":"gray"}]
execute if score SuccessCount WorkSpace matches 1 run tellraw @a [{"selector":"@a[team=play,gamemode=!spectator]"},{"text":" won!","color":"gray"}]
execute if score SuccessCount WorkSpace matches 1 run tag @s add GAMEEnd

# End
execute if entity @s[tag=GAMEEnd] run playsound ui.toast.challenge_complete master @a ~ ~ ~ 0 1.8 1
execute if entity @s[tag=GAMEEnd] run function phase_lobby/start