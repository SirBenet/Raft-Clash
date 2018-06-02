clear @s totem_of_undying
clear @s slime_ball

# If another item was swapped into offhand, give it back
give @s[nbt={Inventory:[{id:"minecraft:shears",Slot:-106b}]}] shears{display:{Name:"{\"text\":\"Cannonball\",\"italic\":false}",Lore:["§r§7Use on a cannon to fire"]}}
give @s[nbt={Inventory:[{id:"minecraft:iron_hoe",Slot:-106b}]}] iron_hoe{Unbreakable:1b,HideFlags:63,display:{Name:"{\"text\":\"Cutlass\",\"italic\":false}",Lore:["§r§7For cutting into blocks","§r§7and other pirates"]},AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:821278,UUIDMost:905536},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:4,Operation:0,UUIDLeast:555520,UUIDMost:592182}]}
give @s[nbt={Inventory:[{id:"minecraft:trident",Slot:-106b}]}] trident{Enchantments:[{id:"loyalty",lvl:1}],Unbreakable:1b}
give @s[nbt={Inventory:[{id:"minecraft:bow",Slot:-106b}]}] bow

# Set back to what it's meant to be
replaceitem entity @s[tag=!HasChest] weapon.offhand slime_ball{display:{Name:"\"\""}}
replaceitem entity @s[tag=HasChest] weapon.offhand totem_of_undying{display:{Name:"\"\""}}


