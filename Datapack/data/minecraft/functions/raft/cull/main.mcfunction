# Remove the shulker of far away blocks, to cut down on entities/collisions
# RAFTCull - A shulker to be culled, unless anything removes the tag before next iteration
# RAFTCullStand - A stand with no shulker (has been culled)
# RAFTDontCull - Blocks under RAFTHasGravity stuff, maybe more in the future, won't be culled

# Uncull cullstands around the player (other things can also call this, to uncull early)
execute at @a[gamemode=!spectator] positioned ~ ~1 ~ as @e[type=armor_stand,distance=..5,tag=RAFTCullStand,tag=!RAFTDyingCullStand] at @s run function raft/cull/stop

# Don't cull shulkers around players
execute at @a[gamemode=!spectator] positioned ~ ~1 ~ run tag @e[type=shulker,distance=..5,tag=RAFTCull] remove RAFTCull
# Cull shulkers that haven't had the tag removed by anything
execute as @e[type=shulker,tag=RAFTCull] at @s run function raft/cull/start
# At end to let arrows/cannonballs/etc. remove this tag before next call
tag @e[type=shulker,tag=RAFTBlock,tag=!RAFTDontCull] add RAFTCull