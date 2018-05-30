# Called from shulker that needs to be culled
# RAFTCullingStand - My stand

# Get my stand
tag @s add RAFTCullingBlock
tag @e[type=armor_stand,tag=RAFTBlockStand,limit=1,distance=..10,sort=nearest,nbt={Passengers:[{Tags:["RAFTCullingBlock"]}]}] add RAFTCullingStand
tag @s remove RAFTCullingBlock

# Set my armorstand's helmet to block that I was
execute if entity @s[tag=RAFTBlockColor0] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head light_gray_wool
execute if entity @s[tag=RAFTBlockColor1] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head oak_planks
execute if entity @s[tag=RAFTBlockColor2] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head iron_block
execute if entity @s[tag=RAFTBlockColor3] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head red_wool
execute if entity @s[tag=RAFTBlockColor4] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head acacia_planks
execute if entity @s[tag=RAFTBlockColor5] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head redstone_block
execute if entity @s[tag=RAFTBlockColor6] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head lime_wool
execute if entity @s[tag=RAFTBlockColor7] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head jungle_planks
execute if entity @s[tag=RAFTBlockColor8] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head emerald_block
execute if entity @s[tag=RAFTBlockColor9] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head cyan_wool
execute if entity @s[tag=RAFTBlockColor10] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head dark_oak_planks
execute if entity @s[tag=RAFTBlockColor11] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head diamond_block
execute if entity @s[tag=RAFTBlockColor12] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head yellow_wool
execute if entity @s[tag=RAFTBlockColor13] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head birch_planks
execute if entity @s[tag=RAFTBlockColor14] run replaceitem entity @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] armor.head gold_block

tag @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] add RAFTCullStand
tag @e[type=armor_stand,tag=RAFTCullingStand,limit=1,distance=..10] remove RAFTCullingStand

#TODO: Store absorption to stand

function raft/delete_shulker_self
