# Slime has hit a player
effect give @a[distance=..2,scores={TakeDamage=1..}] instant_damage 3 1
replaceitem entity @s armor.head golden_hoe{Damage:9,Unbreakable:1b}
scoreboard players set AIAttackAnimation Global 19