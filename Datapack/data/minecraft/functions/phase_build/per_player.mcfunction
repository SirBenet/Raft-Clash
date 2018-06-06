# Handle relogs
execute if entity @s[scores={LeaveGame=1..}] run function phase_build/player_relog

# Respawn
gamemode spectator @s[scores={DeathTime=1}]
tp @s[scores={DeathTime=1}] @a[gamemode=!spectator,sort=nearest,limit=1]

# Effects
effect give @s haste 10 3 true
effect give @s resistance 10 5 true

# Check if have items
tag @s remove BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:light_gray_wool"}]}] add BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:red_wool"}]}] add BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:cyan_wool"}]}] add BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:lime_wool"}]}] add BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:yellow_wool"}]}] add BUILDHasMaterials

tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:oak_planks"}]}] add BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:acacia_planks"}]}] add BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:jungle_planks"}]}] add BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:dark_oak_planks"}]}] add BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:birch_planks"}]}] add BUILDHasMaterials

tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:iron_block"}]}] add BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:diamond_block"}]}] add BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:redstone_block"}]}] add BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:emerald_block"}]}] add BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:gold_block"}]}] add BUILDHasMaterials

tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:acacia_fence_gate"}]}] add BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:jungle_fence_gate"}]}] add BUILDHasMaterials
tag @s[tag=!BUILDHasMaterials,nbt={Inventory:[{id:"minecraft:birch_fence_gate"}]}] add BUILDHasMaterials