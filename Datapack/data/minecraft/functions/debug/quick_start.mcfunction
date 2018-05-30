# Set lobby settings & start
setblock -15 14 -4 green_stained_glass
execute positioned -11.36 16.55 6.88 run function phase_lobby/mode_ffa
execute positioned -11.36 16.55 6.88 run function phase_lobby/mode_ai
function phase_lobby/pig_actions/join_ai
execute as 0-0-0-0-1 at @s run function phase_lobby/try_start_game

# Create raft
execute at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 iron_block
execute at @s run setblock ~ ~1 ~-2 birch_fence_gate[facing=north]
execute at @s run setblock ~ ~1 ~2 acacia_fence_gate[facing=south]
execute at @s run setblock ~2 ~1 ~ jungle_fence_gate[facing=east]
execute at @s run setblock ~-2 ~1 ~ jungle_fence_gate[facing=west]

execute at @s run tp @s ~ ~1 ~

scoreboard players set @e[type=bat,tag=data] BuildTimerTick 1
scoreboard players set @e[type=bat,tag=data] BuildTimerSecond 0