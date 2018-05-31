#TODO: Add tag or something, then check if actually in water during normal play loop. Server keeps building up player momentum

# Effects
particle bubble ~ ~ ~ 0.2 0.6 0.2 0.5 500
playsound random.splash master @a ~ ~ ~ 2 1.5

# Death message
execute if entity @s[scores={DeathTime=100..},tag=!AlreadyRespawned] run tellraw @a [{"selector":"@s"},{"text":" couldn't swim"}]
#TODO: Varied death messages

# Teleport back rather than actually killing, because reloading chunks is very laggy
execute if entity @s[tag=!AlreadyRespawned] run function phase_play/respawn
effect give @s[tag=!AlreadyRespawned] minecraft:levitation 1 1 true
tag @s[tag=!AlreadyRespawned] add AlreadyRespawned

advancement revoke @s only technical/entered_water