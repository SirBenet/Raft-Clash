title @s actionbar {"text":"Joined blue","color":"dark_aqua"}
team join blue @s
scoreboard players set @s RaftID -1

replaceitem entity @s armor.chest leather_chestplate{display:{Name:"{\"text\":\"Blue Tunic\",\"italic\":false,\"color\":\"dark_aqua\"}",color:43690},HideFlags:63,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
replaceitem entity @s armor.legs leather_leggings{display:{Name:"{\"text\":\"Blue Leggings\",\"italic\":false,\"color\":\"dark_aqua\"}",color:43690},HideFlags:63,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
replaceitem entity @s armor.feet leather_boots{display:{Name:"{\"text\":\"Blue Boots\",\"italic\":false,\"color\":\"dark_aqua\"}",color:10794},HideFlags:63,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

tag @s add blue
tag @s remove red
tag @s remove green
tag @s remove yellow

execute positioned ~ ~1 ~ run summon area_effect_cloud ^ ^ ^0.5 {Radius:0.5,Duration:10,Color:43690}
execute positioned ~ ~1 ~ run summon area_effect_cloud ^ ^ ^0.5 {Radius:0.5,Duration:10,Color:43690}
execute positioned ~ ~1 ~ run summon area_effect_cloud ^ ^ ^0.5 {Radius:0.5,Duration:10,Color:43690}