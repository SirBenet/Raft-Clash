# Gets all needed info (for on_raft_movement) from the RAFTController into WorkSpace fakeplayers
execute store result score HelmX WorkSpace run data get entity @s Pos[0] 32768
execute store result score HelmZ WorkSpace run data get entity @s Pos[2] 32768

execute store result score MotionX WorkSpace run data get entity @s Motion[0] 32768
execute store result score MotionZ WorkSpace run data get entity @s Motion[2] 32768

scoreboard players operation AngularMomentum WorkSpace = @s AngularMomentum