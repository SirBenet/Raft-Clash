# Resource pack message (not needed for realms)
tellraw @s {"translate":"You are not using the required resource pack! Click here to download it.","color":"red","bold":"true","clickEvent":{"action":"open_url","value":"http://rebrand.ly/RaftClashRP"},"with":[{"text":"Welcome to Raft Clash!","color":"green"}]}

# ID
scoreboard players add $Next PlayerID 1
scoreboard players operation @s PlayerID = $Next PlayerID

tag @s add RAFTMove

# Run appropriate player relog function
execute if entity @e[tag=data,name=PhaseLobby] run function phase_lobby/player_relog
execute if entity @e[tag=data,name=PhaseLoad] run function phase_build/player_relog
execute if entity @e[tag=data,name=PhaseBuild] run function phase_build/player_relog
execute if entity @e[tag=data,name=PhasePlay] run function phase_play/player_relog