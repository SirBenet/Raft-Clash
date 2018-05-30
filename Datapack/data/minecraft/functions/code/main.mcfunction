# Per-player stuff
execute as @a run function code/per_player

# Tips
execute as 0-0-0-0-1 run scoreboard players add @s TipTimer 1
execute as 0-0-0-0-1 if entity @s[scores={TipTimer=600..}] run function code/tips

# Phase-specific stuff
execute as 0-0-0-0-1 at @s if entity @s[name=PhaseLobby] run function phase_lobby/main
execute as 0-0-0-0-1 at @s if entity @s[name=PhaseLoad] run function phase_load/main
execute as 0-0-0-0-1 at @s if entity @s[name=PhaseBuild] run function phase_build/main
execute as 0-0-0-0-1 at @s if entity @s[name=PhasePlay] run function phase_play/main