# Global tips
execute if entity @s[scores={TipStage=0},name=PhaseBuild] run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"text":"Make sure to place your treasure chest and helm where they won't easily sink!"}]
scoreboard players add @s[scores={TipStage=0},name=PhaseBuild] TipStage 1

execute if entity @s[scores={TipStage=1},name=PhasePlay] run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"text":"Cannonballs and other items are spawned randomly across the map, look for their green sparkles."}]
scoreboard players add @s[scores={TipStage=1},name=PhasePlay] TipStage 1

execute if entity @s[scores={TipStage=2},name=PhaseBuild] run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"text":"A well positioned helm will let you collect items and reach your cannons without standing up."}]
scoreboard players add @s[scores={TipStage=2},name=PhaseBuild] TipStage 1

execute if entity @s[scores={TipStage=3},name=PhasePlay] run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"text":"You cannot damage chests, cannons, or helms directly; they must be sunk by destroying the blocks under them."}]
scoreboard players add @s[scores={TipStage=3},name=PhasePlay] TipStage 1

# Player tips
execute if entity @s[name=PhasePlay] run scoreboard players add @a[scores={TipUseCannon=0..}] TipUseCannon 1
tellraw @a[scores={TipUseCannon=5}] [{"text":"[TIP] ","color":"dark_green"}, {"keybind":"key.use"}, {"text":" on a cannon with a cannonball to fire it!"}]