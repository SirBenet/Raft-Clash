# Per-player stuff
execute as @a run function code/per_player

# Tips
scoreboard players add Tip Timer 1
execute if score Tip Timer matches 600.. as 0-0-0-0-1 run function code/tips
execute if score Tip Timer matches 600.. run scoreboard players set Tip Timer 0

# Phase-specific stuff
execute as 0-0-0-0-1 at @s if entity @s[name=PhaseLobby] run function phase_lobby/main
execute as 0-0-0-0-1 at @s if entity @s[name=PhaseLoad] run function phase_load/main
execute as 0-0-0-0-1 at @s if entity @s[name=PhaseBuild] run function phase_build/main
execute as 0-0-0-0-1 at @s if entity @s[name=PhasePlay] run function phase_play/main