# Carry out action every tick. These get set in arc_navigate
execute if entity @s[scores={AIShipAction=1}] run function raft/move/control_accelerate
execute if entity @s[scores={AIShipAction=2}] run function raft/move/control_turn_left
execute if entity @s[scores={AIShipAction=3}] run function raft/move/control_turn_right