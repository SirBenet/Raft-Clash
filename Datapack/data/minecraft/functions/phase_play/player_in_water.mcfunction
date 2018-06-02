#TODO: Add tag or something, then check if actually in water during normal play loop. Server keeps building up player momentum

# Effects
particle bubble ~ ~ ~ 0.2 0.6 0.2 0.5 500
playsound random.splash master @a ~ ~ ~ 2 1.5

# Death message
tellraw @a [{"selector":"@s"},{"text":" couldn't swim"}]

execute if entity @s[tag=HasChest] run function phase_play/respawn
execute if entity @s[tag=!HasChest] run function phase_play/eliminate