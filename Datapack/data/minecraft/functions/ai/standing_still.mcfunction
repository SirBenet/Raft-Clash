# Face player
execute at @s run tp @s ~ ~ ~ facing entity @a[sort=nearest,limit=1,gamemode=!spectator]

execute if score AIStandingStill Global matches 3 run replaceitem entity @s armor.head golden_hoe{Damage:10,Unbreakable:1b}
execute if score AIStandingStill Global matches 3 run tag @s add DrawingBow

execute if score AIStandingStill Global matches 10 run function ai/shoot_bow
execute if score AIStandingStill Global matches 10 run scoreboard players set AIStandingStill Global 1