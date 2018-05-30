# Posieden's arrow
scoreboard players add @s[nbt={Color:731031}] ArrowTimer 1
execute if entity @s[scores={ArrowTimer=25}] run function phase_play/arrow_special

# Ability to hit shulker (keep posieden's arrow alive so it can explode)
execute if entity @s[nbt=!{Color:731031}] as @e[type=shulker,tag=RAFTBlock,distance=..5] run data merge entity @s {Peek:1b}

# Kill
execute if block ~ ~ ~ water run kill @s
kill @s[nbt={inGround:1b}]