tellraw @s[nbt={Inventory:[{id:"minecraft:acacia_fence_gate"}]}] {"text":"Place your chest, or you won't be able to respawn!","color":"red"}
tellraw @s[nbt={Inventory:[{id:"minecraft:birch_fence_gate"}]}] {"text":"Place your helm, or you won't be able to sail!","color":"red"}
playsound block.note_block.pling master @s[nbt={Inventory:[{id:"minecraft:acacia_fence_gate"}]}] ~ ~ ~ 1 0.9
playsound block.note_block.pling master @s[nbt={Inventory:[{id:"minecraft:birch_fence_gate"}]}] ~ ~ ~ 1 0.9