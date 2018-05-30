title @s actionbar {"text":"Joined green","color":"green"}
team join green @s
scoreboard players set @s RaftID -3

replaceitem entity @s armor.chest leather_chestplate{display:{Name:"{\"text\":\"Green Tunic\",\"italic\":false,\"color\":\"green\"}",color:5635925},HideFlags:63,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
replaceitem entity @s armor.legs leather_leggings{display:{Name:"{\"text\":\"Green Leggings\",\"italic\":false,\"color\":\"green\"}",color:5635925},HideFlags:63,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
replaceitem entity @s armor.feet leather_boots{display:{Name:"{\"text\":\"Green Boots\",\"italic\":false,\"color\":\"green\"}",color:1392405},HideFlags:63,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

tag @s remove blue
tag @s remove red
tag @s add green
tag @s remove yellow

execute positioned ~ ~1 ~ run summon area_effect_cloud ^ ^ ^0.5 {Radius:0.5,Duration:10,Color:5635925}
execute positioned ~ ~1 ~ run summon area_effect_cloud ^ ^ ^0.5 {Radius:0.5,Duration:10,Color:5635925}
execute positioned ~ ~1 ~ run summon area_effect_cloud ^ ^ ^0.5 {Radius:0.5,Duration:10,Color:5635925}