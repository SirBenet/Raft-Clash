title @s actionbar {"text":"Joined red","color":"red"}
team join red @s
scoreboard players set @s RaftID -2

replaceitem entity @s armor.chest leather_chestplate{display:{Name:"{\"text\":\"Red Tunic\",\"italic\":false,\"color\":\"red\"}",color:16733525},HideFlags:63,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
replaceitem entity @s armor.legs leather_leggings{display:{Name:"{\"text\":\"Red Leggings\",\"italic\":false,\"color\":\"red\"}",color:16733525},HideFlags:63,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
replaceitem entity @s armor.feet leather_boots{display:{Name:"{\"text\":\"Red Boots\",\"italic\":false,\"color\":\"red\"}",color:4134165},HideFlags:63,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

tag @s remove blue
tag @s add red
tag @s remove green
tag @s remove yellow

execute positioned ~ ~1 ~ run summon area_effect_cloud ^ ^ ^0.5 {Radius:0.5,Duration:10,Color:16733525}
execute positioned ~ ~1 ~ run summon area_effect_cloud ^ ^ ^0.5 {Radius:0.5,Duration:10,Color:16733525}
execute positioned ~ ~1 ~ run summon area_effect_cloud ^ ^ ^0.5 {Radius:0.5,Duration:10,Color:16733525}