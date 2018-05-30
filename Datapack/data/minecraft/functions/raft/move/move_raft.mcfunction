# Check if pretty much stopped, add RAFTControllerStopped tag
tag @s remove RAFTControllerStopped
execute if entity @s[scores={AngularMomentum=-1000..1000}] run function raft/move/check_stopped

# Apply angular momentum & drag
execute if entity @s[tag=!RAFTControllerStopped] run function raft/move/apply_angular_momentum

# Teleport all raft blocks to the control minecart, then outwards
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft1] run tp @e[type=armor_stand,tag=RAFTMove,tag=Raft1] ~ ~-40 ~ ~ ~
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft2] run tp @e[type=armor_stand,tag=RAFTMove,tag=Raft2] ~ ~-40 ~ ~ ~
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft3] run tp @e[type=armor_stand,tag=RAFTMove,tag=Raft3] ~ ~-40 ~ ~ ~
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft4] run tp @e[type=armor_stand,tag=RAFTMove,tag=Raft4] ~ ~-40 ~ ~ ~
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft5] run tp @e[type=armor_stand,tag=RAFTMove,tag=Raft5] ~ ~-40 ~ ~ ~
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft6] run tp @e[type=armor_stand,tag=RAFTMove,tag=Raft6] ~ ~-40 ~ ~ ~
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft7] run tp @e[type=armor_stand,tag=RAFTMove,tag=Raft7] ~ ~-40 ~ ~ ~
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft8] run tp @e[type=armor_stand,tag=RAFTMove,tag=Raft8] ~ ~-40 ~ ~ ~
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft9] run tp @e[type=armor_stand,tag=RAFTMove,tag=Raft9] ~ ~-40 ~ ~ ~
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft10] run tp @e[type=armor_stand,tag=RAFTMove,tag=Raft10] ~ ~-40 ~ ~ ~
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft11] run tp @e[type=armor_stand,tag=RAFTMove,tag=Raft11] ~ ~-40 ~ ~ ~
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft12] run tp @e[type=armor_stand,tag=RAFTMove,tag=Raft12] ~ ~-40 ~ ~ ~
#TODO: distance=..40 improves performance?

execute if entity @s[tag=!RAFTControllerStopped,tag=Raft1] positioned ~ ~-40 ~ as @e[type=armor_stand,tag=RAFTMove,tag=Raft1] run function raft/move/move_raft_blocks
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft2] positioned ~ ~-40 ~ as @e[type=armor_stand,tag=RAFTMove,tag=Raft2] run function raft/move/move_raft_blocks
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft3] positioned ~ ~-40 ~ as @e[type=armor_stand,tag=RAFTMove,tag=Raft3] run function raft/move/move_raft_blocks
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft4] positioned ~ ~-40 ~ as @e[type=armor_stand,tag=RAFTMove,tag=Raft4] run function raft/move/move_raft_blocks
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft5] positioned ~ ~-40 ~ as @e[type=armor_stand,tag=RAFTMove,tag=Raft5] run function raft/move/move_raft_blocks
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft6] positioned ~ ~-40 ~ as @e[type=armor_stand,tag=RAFTMove,tag=Raft6] run function raft/move/move_raft_blocks
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft7] positioned ~ ~-40 ~ as @e[type=armor_stand,tag=RAFTMove,tag=Raft7] run function raft/move/move_raft_blocks
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft8] positioned ~ ~-40 ~ as @e[type=armor_stand,tag=RAFTMove,tag=Raft8] run function raft/move/move_raft_blocks
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft9] positioned ~ ~-40 ~ as @e[type=armor_stand,tag=RAFTMove,tag=Raft9] run function raft/move/move_raft_blocks
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft10] positioned ~ ~-40 ~ as @e[type=armor_stand,tag=RAFTMove,tag=Raft10] run function raft/move/move_raft_blocks
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft11] positioned ~ ~-40 ~ as @e[type=armor_stand,tag=RAFTMove,tag=Raft11] run function raft/move/move_raft_blocks
execute if entity @s[tag=!RAFTControllerStopped,tag=Raft12] positioned ~ ~-40 ~ as @e[type=armor_stand,tag=RAFTMove,tag=Raft12] run function raft/move/move_raft_blocks
