# Summon item (on a cycle, not actually random)
scoreboard players add ItemCycle Global 1
execute if score ItemCycle Global matches 11 run scoreboard players set ItemCycle Global 0
execute if score ItemCycle Global matches 0 at @s run summon item ~ ~ ~ {NoGravity:1b,Tags:["GAMEItem","GAMEItemNew"],Item:{id:"minecraft:shears",Count:1b,tag:{display:{Name:"{\"text\":\"Cannonball\",\"italic\":false}",Lore:["§r§7Use on a cannon to fire"]}}},Passengers:[{id:"item",Item:{id:"minecraft:shears",Count:1b,tag:{display:{Name:"{\"text\":\"Cannonball\",\"italic\":false}",Lore:["§r§7Use on a cannon to fire"]}}}},{id:"item",Item:{id:"minecraft:shears",Count:1b,tag:{display:{Name:"{\"text\":\"Cannonball\",\"italic\":false}",Lore:["§r§7Use on a cannon to fire"]}}}}]}
execute if score ItemCycle Global matches 1 at @s run summon item ~ ~ ~ {NoGravity:1b,Tags:["GAMEItem","GAMEItemNew"],Item:{id:"minecraft:bow",Count:1b}}
execute if score ItemCycle Global matches 2 at @s run summon item ~ ~ ~ {NoGravity:1b,Tags:["GAMEItem","GAMEItemNew"],Item:{id:"minecraft:bow",Count:1b}}
execute if score ItemCycle Global matches 3 at @s run summon item ~ ~ ~ {NoGravity:1b,Tags:["GAMEItem","GAMEItemNew"],Item:{id:"minecraft:arrow",Count:16b}}
execute if score ItemCycle Global matches 4 at @s run summon item ~ ~ ~ {NoGravity:1b,Tags:["GAMEItem","GAMEItemNew"],Item:{id:"minecraft:arrow",Count:16b}}
execute if score ItemCycle Global matches 5 at @s run summon item ~ ~ ~ {NoGravity:1b,Tags:["GAMEItem","GAMEItemNew"],Item:{id:"minecraft:shears",Count:1b,tag:{display:{Name:"{\"text\":\"Cannonball\",\"italic\":false}",Lore:["§r§7Use on a cannon to fire"]}}}}
execute if score ItemCycle Global matches 6 at @s run summon item ~ ~ ~ {NoGravity:1b,Tags:["GAMEItem","GAMEItemNew"],Item:{id:"minecraft:shears",Count:1b,tag:{display:{Name:"{\"text\":\"Cannonball\",\"italic\":false}",Lore:["§r§7Use on a cannon to fire"]}}}}
execute if score ItemCycle Global matches 7 at @s run summon item ~ ~ ~ {NoGravity:1b,Tags:["GAMEItem","GAMEItemNew"],Item:{id:"minecraft:shears",Count:1b,tag:{display:{Name:"{\"text\":\"Cannonball\",\"italic\":false}",Lore:["§r§7Use on a cannon to fire"]}}}}
execute if score ItemCycle Global matches 8 at @s run summon item ~ ~ ~ {NoGravity:1b,Tags:["GAMEItem","GAMEItemNew"],Item:{id:"minecraft:shears",Count:1b,tag:{display:{Name:"{\"text\":\"Cannonball\",\"italic\":false}",Lore:["§r§7Use on a cannon to fire"]}}}}
execute if score ItemCycle Global matches 9 at @s run summon item ~ ~ ~ {NoGravity:1b,Tags:["GAMEItem","GAMEItemNew"],Item:{id:"minecraft:shears",Count:1b,tag:{display:{Name:"{\"text\":\"Cannonball\",\"italic\":false}",Lore:["§r§7Use on a cannon to fire"]}}}}
execute if score ItemCycle Global matches 10 at @s run summon item ~ ~ ~ {NoGravity:1b,Tags:["GAMEItem","GAMEItemNew"],Item:{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"loyalty",lvl:1}],Unbreakable:1b}}}

# Spreadplayers the item based on map selected
execute if entity @s[tag=MAPBay] run spreadplayers 400 -48 0 250 false @e[type=item,tag=GAMEItemNew]
execute if entity @s[tag=MAPRocks] run spreadplayers 1459 -48 0 250 false @e[type=item,tag=GAMEItemNew]
execute if entity @s[tag=MAPSea] run spreadplayers 2512 -48 0 250 false @e[type=item,tag=GAMEItemNew]
execute if entity @s[tag=MAPGlaciers] run spreadplayers 3568 -48 0 250 false @e[type=item,tag=GAMEItemNew]

# Kill if not at sea level, else teleport down
# TODO: Slightly further down so lowest helm can pick up?
execute if entity @s[tag=!MAPSea] as @e[type=item,tag=GAMEItemNew] at @s if block ~ 40 ~ air run teleport @s ~ 43 ~
execute if entity @s[tag=!MAPSea] as @e[type=item,tag=GAMEItemNew] at @s unless block ~ 40 ~ air run kill @s
execute if entity @s[tag=MAPSea] as @e[type=item,tag=GAMEItemNew] at @s run teleport @s ~ 66 ~

tag @e[type=item,tag=GAMEItemNew] remove GAMEItemNew

execute at @e[type=item] run particle happy_villager ~ ~ ~ 0.1 0.1 0.1 0 3 force @a[distance=..80]