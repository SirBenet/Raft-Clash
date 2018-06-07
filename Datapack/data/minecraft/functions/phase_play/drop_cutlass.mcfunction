# Kill dropped item
kill @e[type=item,distance=..10,nbt={Item:{id:"minecraft:iron_hoe"}}]

give @s iron_hoe{Unbreakable:1b,HideFlags:63,display:{Name:"{\"text\":\"Cutlass\",\"italic\":false}",Lore:["§r§7For cutting into blocks","§r§7and other pirates"]},AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:821278,UUIDMost:905536},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:4,Operation:0,UUIDLeast:555520,UUIDMost:592182}]}

scoreboard players set @s DropCutlass 0