# If haven't already picked a team, join smallest team
execute as @s[tag=!blue,tag=!red,tag=!green,tag=!yellow] run function phase_lobby/pig_actions/join_team_balanced

# If already made a choice, join previous team 
execute as @s[tag=blue] run function phase_lobby/pig_actions/join_blue
execute as @s[tag=red] run function phase_lobby/pig_actions/join_red
execute as @s[tag=green] run function phase_lobby/pig_actions/join_green
execute as @s[tag=yellow] run function phase_lobby/pig_actions/join_yellow