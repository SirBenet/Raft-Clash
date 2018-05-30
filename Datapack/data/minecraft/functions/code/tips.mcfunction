# Global tips
execute if entity @s[scores={TipStage=0},name=PhaseBuild] run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"text":"Make sure to place your treasure chest and helm where they won't easily sink!"}]
scoreboard players add @s[scores={TipStage=0},name=PhaseBuild] TipStage 1

execute if entity @s[scores={TipStage=1},name=PhasePlay] run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"text":"TODO: Remove this tip. Hold your anchor to temporarily stop your raft, even when not on your helm."}]
scoreboard players add @s[scores={TipStage=1},name=PhasePlay] TipStage 1

execute if entity @s[scores={TipStage=2},name=PhaseBuild] run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"text":"A well positioned helm will let you collect items and reach your cannons without standing up."}]
scoreboard players add @s[scores={TipStage=2},name=PhaseBuild] TipStage 1

execute if entity @s[scores={TipStage=3},name=PhasePlay] run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"text":"You cannot damage chests, cannons, or helms directly; they must be sunk by destroying the blocks under them."}]
scoreboard players add @s[scores={TipStage=3},name=PhasePlay] TipStage 1

execute if entity @s[scores={TipStage=4},name=PhaseLobby] run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"text":"Explosions can destroy terrain in the glaciers and rocks arenas!"}]
scoreboard players add @s[scores={TipStage=4},name=PhasePlay] TipStage 1

# Player tips
execute if entity @s[name=PhasePlay] run scoreboard players add @a TipUseHelm 0
execute if entity @s[name=PhasePlay] run scoreboard players add @a[scores={TipUseHelm=0..}] TipUseHelm 1
tellraw @a[scores={TipUseHelm=2}] [{"text":"[TIP] ","color":"dark_green"}, {"keybind":"key.use"}, {"text":" on your helm to sit at it, then "}, {"keybind":"key.use"}, {"text":" in a direction to sail."}]
scoreboard players set @a[scores={TipUseHelm=2}] TipUseHelm -1

execute if entity @s[name=PhasePlay] run scoreboard players add @a PickUpCannonball 0
execute if entity @s[name=PhasePlay] run scoreboard players add @a TipGetItem 0
execute if entity @s[name=PhasePlay] run scoreboard players add @a[scores={TipGetItem=0..,PickUpCannonball=0}] TipGetItem 1
tellraw @a[scores={TipGetItem=4}] [{"text":"[TIP] ","color":"dark_green"}, {"text":"Cannonballs and other items are spawned randomly across the map, look for their green sparkles."}]
scoreboard players set @a[scores={TipGetItem=4}] TipGetItem -1

execute if entity @s[name=PhasePlay] run scoreboard players add @a TipUseCannon 0
execute if entity @s[name=PhasePlay] run scoreboard players add @a[scores={TipUseCannon=0..}] TipUseCannon 1
tellraw @a[scores={TipUseCannon=5}] [{"text":"[TIP] ","color":"dark_green"}, {"keybind":"key.use"}, {"text":" on a cannon with a cannonball to fire it!"}]
scoreboard players set @a[scores={TipUseCannon=5}] TipUseCannon -1