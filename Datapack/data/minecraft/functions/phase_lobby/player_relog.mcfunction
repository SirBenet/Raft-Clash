function phase_lobby/start_player

execute if block -12 17 6 gray_carpet run function phase_lobby/pig_actions/join
execute if block -12 17 6 green_carpet run function phase_lobby/pig_actions/join_team
execute if block -12 17 6 yellow_carpet run function phase_lobby/pig_actions/join_ai

scoreboard players set @s LeaveGame 0
