# Create AIMove AEC
summon area_effect_cloud ~ ~ ~ {Tags:["AIMove","AIMoveNew"],Age:-800,Particle:"block air"}
tp @e[type=area_effect_cloud,tag=AIMoveNew] @s
tag @e[type=area_effect_cloud,tag=AIMoveNew] remove AIMoveNew

# Ghost AI
#teleport @e[type=stray,tag=AIRecordGhost] ~ ~ ~ ~ ~

# Warning for when the start disappearing
tag @e[type=area_effect_cloud,tag=AIMove,nbt={Age:-1}] add AIMoveActive 
execute as @e[tag=AIMoveActive] run playsound block.note_block.pling master @a
execute as @e[tag=AIMoveActive] run tellraw @a {"text":"Vanishing!"}