# Change tags
tag @s add AIModeControl
tag @s remove AIModeAttack

# Change appearance
replaceitem entity @s armor.head golden_hoe{Damage:7,Unbreakable:1b}
replaceitem entity @s weapon.mainhand air
replaceitem entity @s weapon.offhand air

# Make slime invulnerable, so it doesn't get destroyed by suffocation
data merge entity @e[tag=AISlime,type=slime,limit=1] {Invulnerable:1b}