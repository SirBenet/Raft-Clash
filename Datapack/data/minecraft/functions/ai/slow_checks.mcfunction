# Load rest of raft
setblock ~ 0 ~ structure_block[mode=load]{mode:"LOAD",name:"ship_loader",integrity:0.0f}
setblock ~ 1 ~ redstone_block destroy
fill ~ 0 ~ ~ 1 ~ bedrock

# Check if cannons have fallen, remove their arcs
execute as @e[type=armor_stand,tag=RAFTCannonStand,tag=Raft1,tag=!AIFallenCannon] at @s if block ~ ~ ~ water run function ai/fall

function ai/get_target

# Change AI mode if needed, based on distance to target
execute if entity @s[tag=AIModeAttack] unless entity @p[gamemode=!spectator,distance=..8] run function ai/enter_control_mode
execute if entity @s[tag=AIModeControl] if entity @p[gamemode=!spectator,distance=..8] run function ai/enter_attack_mode