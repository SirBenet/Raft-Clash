title @s actionbar {"text":"Joined yellow","color":"yellow"}
team join yellow @s
scoreboard players set @s RaftID -4

replaceitem entity @s armor.chest leather_chestplate{display:{Name:"{\"text\":\"Yellow Tunic\",\"italic\":false,\"color\":\"yellow\"}",color:16777045},HideFlags:63,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
replaceitem entity @s armor.legs leather_leggings{display:{Name:"{\"text\":\"Yellow Leggings\",\"italic\":false,\"color\":\"yellow\"}",color:16777045},HideFlags:63,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
replaceitem entity @s armor.feet leather_boots{display:{Name:"{\"text\":\"Yellow Boots\",\"italic\":false,\"color\":\"yellow\"}",color:4144917},HideFlags:63,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

tag @s remove blue
tag @s remove red
tag @s remove green
tag @s add yellow

execute positioned ~ ~1 ~ run summon area_effect_cloud ^ ^ ^0.5 {Radius:0.5,Duration:10,Color:16777045}
execute positioned ~ ~1 ~ run summon area_effect_cloud ^ ^ ^0.5 {Radius:0.5,Duration:10,Color:16777045}
execute positioned ~ ~1 ~ run summon area_effect_cloud ^ ^ ^0.5 {Radius:0.5,Duration:10,Color:16777045}