# Play-mode tips
scoreboard players add PlayTipStage Global 1

execute if score PlayTipStage Global matches 1 run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"text":"Cannonballs and other items are spawned randomly across the map, look for their green sparkles."}]
execute if score PlayTipStage Global matches 2 run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"keybind":"key.use"}, {"text":" on a cannon with a cannonball to fire it!"}]
execute if score PlayTipStage Global matches 3 run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"text":"Can't find your opponent? Look out for sparkles in the sky above them"}]
execute if score PlayTipStage Global matches 4 run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"text":"You cannot damage chests, cannons, or helms directly; they must be sunk by destroying the blocks under them."}]