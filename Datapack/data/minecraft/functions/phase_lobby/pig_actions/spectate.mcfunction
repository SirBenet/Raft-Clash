title @s actionbar {"text":"You are now spectating the next game","color":"gray"}
team join spectate @s

replaceitem entity @s armor.chest air
replaceitem entity @s armor.legs air
replaceitem entity @s armor.feet air

tag @s remove blue
tag @s remove red
tag @s remove green
tag @s remove yellow