tag @s remove GAMEUsedCannonball
clear @s shears{Damage:1}
clear @s shears{Damage:2}
clear @s shears{Damage:3}
clear @s shears{Damage:4}
clear @s shears{Damage:5}
playsound entity.zombie.attack_door_wood master @s ~ ~ ~ 0.4 0

# Kill wool drops
kill @e[type=item,distance=..15,nbt={Item:{id:"minecraft:white_wool"}}]

# Get sheep that was sheared
execute as @e[type=sheep,distance=..10,nbt={Sheared:1b}] at @s run function phase_play/fire_cannonball

# Don't give the hint, player knows how to use cannonball
scoreboard players set @s TipUseCannon -1