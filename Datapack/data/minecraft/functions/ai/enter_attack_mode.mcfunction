# Change tags
tag @s remove AIModeControl
tag @s add AIModeAttack

# Change appearance
replaceitem entity @s armor.head golden_hoe{Damage:8,Unbreakable:1b}
replaceitem entity @s weapon.mainhand golden_hoe{Damage:6,Unbreakable:1b}
replaceitem entity @s weapon.offhand golden_hoe{Damage:5,Unbreakable:1b}

# Teleport zombie to raft template center
execute store result entity @e[type=zombie,tag=AIPathfinder,limit=1] Pos[0] double 0.000030517578125 run scoreboard players get AILayoutCenterX WorkSpace
execute store result entity @e[type=zombie,tag=AIPathfinder,limit=1] Pos[1] double 0.000030517578125 run scoreboard players get AILayoutCenterY WorkSpace
execute store result entity @e[type=zombie,tag=AIPathfinder,limit=1] Pos[2] double 0.000030517578125 run scoreboard players get AILayoutCenterZ WorkSpace
execute as @e[type=zombie,tag=AIPathfinder,limit=1] at @s run tp @s ~ ~0.5 ~ 

# Make slime vulnerable, for player to hit
data merge entity @e[tag=AISlime,type=slime,limit=1] {Invulnerable:0b,Attributes:[{Name:"generic.maxHealth",Base:20}],Health:20.0f}