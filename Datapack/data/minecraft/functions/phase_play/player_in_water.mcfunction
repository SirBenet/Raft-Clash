#TODO: Add tag or something, then check if actually in water during normal play loop. Server keeps building up player momentum

# Effects
particle bubble ~ ~ ~ 0.2 0.6 0.2 0.5 500
playsound random.splash master @a ~ ~ ~ 2 1.5

# If player recently died, be nice and just teleport back rather than killing (for players glitching out)
execute if entity @s[scores={DeathTime=..99},tag=!AlreadyRespawned] run function phase_play/respawn
effect give @s[scores={DeathTime=..99},tag=!AlreadyRespawned] minecraft:levitation 1 1 true
tag @s[scores={DeathTime=..99},tag=!AlreadyRespawned] add AlreadyRespawned
advancement revoke @s[scores={DeathTime=..99},tag=AlreadyRespawned] only technical/entered_water

# Death message
gamerule showDeathMessages false
kill @s[scores={DeathTime=100..}]
execute if entity @s[scores={DeathTime=100..}] run tellraw @a [{"selector":"@s"},{"text":" couldn't swim"}]
gamerule showDeathMessages true