# Player has hit me
playsound entity.phantom.bite master @a ~ ~ ~ 1 2
data merge entity @e[tag=AISlime,type=slime,limit=1,sort=nearest] {Attributes:[{Name:"generic.maxHealth",Base:20}],Health:20.0f}

# Update health and bossbar
scoreboard players remove AIHealth Global 5
execute store result bossbar ai_health value run scoreboard players get AIHealth Global
bossbar set ai_health visible true

execute if score AIHealth Global matches ..0 run tp @e[tag=AISlime,type=slime] ~ ~-500 ~
execute if score AIHealth Global matches ..0 run kill @s
