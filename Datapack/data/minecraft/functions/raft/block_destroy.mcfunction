# This function is called by a shulker that has reached 0 AbsorptionAmount

# Particles depending on block type
execute if entity @s[tag=RAFTBlockColor0] run particle block light_gray_wool ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a
execute if entity @s[tag=RAFTBlockColor1] run particle block oak_planks ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a
execute if entity @s[tag=RAFTBlockColor2] run particle block iron_block ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a
execute if entity @s[tag=RAFTBlockColor3] run particle block red_wool ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a
execute if entity @s[tag=RAFTBlockColor4] run particle block acacia_planks ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a
execute if entity @s[tag=RAFTBlockColor5] run particle block redstone_block ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a
execute if entity @s[tag=RAFTBlockColor6] run particle block lime_wool ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a
execute if entity @s[tag=RAFTBlockColor7] run particle block jungle_planks ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a
execute if entity @s[tag=RAFTBlockColor8] run particle block emerald_block ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a
execute if entity @s[tag=RAFTBlockColor9] run particle block cyan_wool ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a
execute if entity @s[tag=RAFTBlockColor10] run particle block dark_oak_planks ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a
execute if entity @s[tag=RAFTBlockColor11] run particle block diamond_block ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a
execute if entity @s[tag=RAFTBlockColor12] run particle block yellow_wool ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a
execute if entity @s[tag=RAFTBlockColor13] run particle block birch_planks ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a
execute if entity @s[tag=RAFTBlockColor14] run particle block gold_block ~ ~0.5 ~ 0.2 0.2 0.2 0.1 100 normal @a

# Particles depending on block type
execute if entity @s[tag=RAFTBlockColor0] run playsound block.cloth.break master @a ~ ~ ~ 2 1
execute if entity @s[tag=RAFTBlockColor1] run playsound block.wood.break master @a ~ ~ ~ 2 1
execute if entity @s[tag=RAFTBlockColor2] run playsound block.stone.break master @a ~ ~ ~ 2 1
execute if entity @s[tag=RAFTBlockColor3] run playsound block.cloth.break master @a ~ ~ ~ 2 1
execute if entity @s[tag=RAFTBlockColor4] run playsound block.wood.break master @a ~ ~ ~ 2 1
execute if entity @s[tag=RAFTBlockColor5] run playsound block.stone.break master @a ~ ~ ~ 2 1
execute if entity @s[tag=RAFTBlockColor6] run playsound block.cloth.break master @a ~ ~ ~ 2 1
execute if entity @s[tag=RAFTBlockColor7] run playsound block.wood.break master @a ~ ~ ~ 2 1
execute if entity @s[tag=RAFTBlockColor8] run playsound block.stone.break master @a ~ ~ ~ 2 1
execute if entity @s[tag=RAFTBlockColor9] run playsound block.cloth.break master @a ~ ~ ~ 2 1
execute if entity @s[tag=RAFTBlockColor10] run playsound block.wood.break master @a ~ ~ ~ 2 1
execute if entity @s[tag=RAFTBlockColor11] run playsound block.stone.break master @a ~ ~ ~ 2 1
execute if entity @s[tag=RAFTBlockColor12] run playsound block.cloth.break master @a ~ ~ ~ 2 1
execute if entity @s[tag=RAFTBlockColor13] run playsound block.wood.break master @a ~ ~ ~ 2 1
execute if entity @s[tag=RAFTBlockColor14] run playsound block.stone.break master @a ~ ~ ~ 2 1

# If AI block, delete barrier block on template
execute if entity @e[type=bat,tag=data,tag=AI] as @e[type=armor_stand,tag=RAFTBlockStand,limit=1,distance=..2,sort=nearest] if entity @s[tag=Raft1] at @s run function ai/delete_template_block

# Kill stuff
tag @s add RAFTBreakingBlock
kill @e[type=armor_stand,tag=RAFTBlockStand,limit=1,distance=..10,sort=nearest,nbt={Passengers:[{Tags:["RAFTBreakingBlock"]}]}]
tag @s remove RAFTBreakingBlock
function raft/delete_shulker_self