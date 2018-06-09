# Carry out action every tick. These get set in arc_navigate
execute if score AIShipAction Global matches 1 run function raft/move/control_accelerate
execute if score AIShipAction Global matches 2 run function raft/move/control_turn_left
execute if score AIShipAction Global matches 3 run function raft/move/control_turn_right