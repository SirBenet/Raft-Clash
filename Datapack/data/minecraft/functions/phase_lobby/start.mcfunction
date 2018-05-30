gamerule naturalRegeneration true
data merge entity 0-0-0-0-1 {CustomName:"\"PhaseLobby\""}
worldborder set 60000000

spreadplayers 10 10 0 1 false 0-0-0-0-1
setworldspawn 10 4 10

execute as @a run function phase_lobby/start_player