# Load rest of raft
setblock ~ 0 ~ structure_block[mode=load]{mode:"LOAD",name:"ship_loader",integrity:0.0f}
setblock ~ 1 ~ redstone_block destroy
fill ~ 0 ~ ~ 1 ~ bedrock

#TODO: Check if cannons are falling, remove their arcs
#scoreboard players tag @e[type=armor_stand,score_RaftID_min=-5,score_RaftID=-5] remove AINotFalling
#scoreboard players tag @e[type=armor_stand,score_RaftID_min=-5,score_RaftID=-5] add AINotFalling {FallDistance:0.0f}
#execute @e[type=armor_stand,score_RaftID_min=-5,score_RaftID=-5,tag=!AINotFalling] ~ ~ ~ function ai:fall

function ai/get_target

# Change AI mode if needed, based on distance to target
execute if entity @s[tag=AIModeAttack] unless entity @p[gamemode=!spectator,distance=..8] run function ai/enter_control_mode
execute if entity @s[tag=AIModeControl] if entity @p[gamemode=!spectator,distance=..8] run function ai/enter_attack_mode