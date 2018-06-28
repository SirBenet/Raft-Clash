# Moves the player when they're on a moving raft, and not sitting

# Gets all needed info from the RAFTController into WorkSpace fakeplayers
execute if entity @s[tag=OnRaft1] as @e[type=experience_orb,tag=!RAFTControllerStopped,tag=Raft1] run function code/get_controller_scores
execute if entity @s[tag=OnRaft2] as @e[type=experience_orb,tag=!RAFTControllerStopped,tag=Raft2] run function code/get_controller_scores
execute if entity @s[tag=OnRaft3] as @e[type=experience_orb,tag=!RAFTControllerStopped,tag=Raft3] run function code/get_controller_scores
execute if entity @s[tag=OnRaft4] as @e[type=experience_orb,tag=!RAFTControllerStopped,tag=Raft4] run function code/get_controller_scores
execute if entity @s[tag=OnRaft5] as @e[type=experience_orb,tag=!RAFTControllerStopped,tag=Raft5] run function code/get_controller_scores
execute if entity @s[tag=OnRaft6] as @e[type=experience_orb,tag=!RAFTControllerStopped,tag=Raft6] run function code/get_controller_scores
execute if entity @s[tag=OnRaft7] as @e[type=experience_orb,tag=!RAFTControllerStopped,tag=Raft7] run function code/get_controller_scores
execute if entity @s[tag=OnRaft8] as @e[type=experience_orb,tag=!RAFTControllerStopped,tag=Raft8] run function code/get_controller_scores
execute if entity @s[tag=OnRaft9] as @e[type=experience_orb,tag=!RAFTControllerStopped,tag=Raft9] run function code/get_controller_scores
execute if entity @s[tag=OnRaft10] as @e[type=experience_orb,tag=!RAFTControllerStopped,tag=Raft10] run function code/get_controller_scores
execute if entity @s[tag=OnRaft11] as @e[type=experience_orb,tag=!RAFTControllerStopped,tag=Raft11] run function code/get_controller_scores
execute if entity @s[tag=OnRaft12] as @e[type=experience_orb,tag=!RAFTControllerStopped,tag=Raft12] run function code/get_controller_scores

# Get my player pos relative to controller pos
execute store result score PlayerInitialX WorkSpace run data get entity @s Pos[0] 32768
execute store result score PlayerInitialZ WorkSpace run data get entity @s Pos[2] 32768
scoreboard players operation PlayerRelativeX WorkSpace = PlayerInitialX WorkSpace
scoreboard players operation PlayerRelativeZ WorkSpace = PlayerInitialZ WorkSpace
scoreboard players operation PlayerRelativeX WorkSpace -= HelmX WorkSpace
scoreboard players operation PlayerRelativeZ WorkSpace -= HelmZ WorkSpace

# Summon marker
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["PlayerMover"],Particle:"block air"}

# Do rest of stuff from marker
scoreboard players operation HelmX WorkSpace += MotionX WorkSpace
scoreboard players operation HelmZ WorkSpace += MotionZ WorkSpace
tag @s add MoveMe
execute at @s as @e[type=area_effect_cloud,distance=..1,tag=PlayerMover] run function phase_play/move_playermover
tag @s remove MoveMe