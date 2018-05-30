scoreboard players tag @s add AITurn
execute @s[score_RAFTDirection=1,score_RAFTDirection_min=1] ~ ~ ~ detect ~ 40 ~-20 air default execute @s ~ ~ ~ detect ~ 40 ~-10 air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=2,score_RAFTDirection_min=2] ~ ~ ~ detect ~7.6536 40 ~-18.4772 air default execute @s ~ ~ ~ detect ~3.8268 40 ~-9.2386 air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=3,score_RAFTDirection_min=3] ~ ~ ~ detect ~14.142 40 ~-14.142 air default execute @s ~ ~ ~ detect ~7.071 40 ~-7.071 air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=4,score_RAFTDirection_min=4] ~ ~ ~ detect ~18.4772 40 ~-7.6536 air default execute @s ~ ~ ~ detect ~9.2386 40 ~-3.8268 air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=5,score_RAFTDirection_min=5] ~ ~ ~ detect ~20 40 ~ air default execute @s ~ ~ ~ detect ~10 40 ~ air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=6,score_RAFTDirection_min=6] ~ ~ ~ detect ~18.4772 40 ~7.6536 air default execute @s ~ ~ ~ detect ~9.2386 40 ~3.8268 air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=7,score_RAFTDirection_min=7] ~ ~ ~ detect ~14.142 40 ~14.142 air default execute @s ~ ~ ~ detect ~7.071 40 ~7.071 air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=8,score_RAFTDirection_min=8] ~ ~ ~ detect ~7.6536 40 ~18.4772 air default execute @s ~ ~ ~ detect ~3.8268 40 ~9.2386 air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=9,score_RAFTDirection_min=9] ~ ~ ~ detect ~ 40 ~20 air default execute @s ~ ~ ~ detect ~ 40 ~10 air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=10,score_RAFTDirection_min=10] ~ ~ ~ detect ~-7.6536 40 ~18.4772 air default execute @s ~ ~ ~ detect ~-3.8268 40 ~9.2386 air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=11,score_RAFTDirection_min=11] ~ ~ ~ detect ~-14.142 40 ~14.142 air default execute @s ~ ~ ~ detect ~-7.071 40 ~7.071 air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=12,score_RAFTDirection_min=12] ~ ~ ~ detect ~-18.4772 40 ~7.6536 air default execute @s ~ ~ ~ detect ~-9.2386 40 ~3.8268 air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=13,score_RAFTDirection_min=13] ~ ~ ~ detect ~-20 40 ~ air default execute @s ~ ~ ~ detect ~-10 40 ~ air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=14,score_RAFTDirection_min=14] ~ ~ ~ detect ~-18.4772 40 ~-7.6536 air default execute @s ~ ~ ~ detect ~-9.2386 40 ~-3.8268 air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=15,score_RAFTDirection_min=15] ~ ~ ~ detect ~-14.142 40 ~-14.142 air default execute @s ~ ~ ~ detect ~-7.071 40 ~-7.071 air default scoreboard players tag @s remove AITurn
execute @s[score_RAFTDirection=16,score_RAFTDirection_min=16] ~ ~ ~ detect ~-7.6536 40 ~-18.4772 air default execute @s ~ ~ ~ detect ~-3.8268 40 ~-9.2386 air default scoreboard players tag @s remove AITurn
scoreboard players add @s[tag=AITurn] RAFTDirection 3
scoreboard players remove @s[score_RAFTDirection_min=17] RAFTDirection 16

execute @s[tag=AITurn] ~ ~ ~ function ai:turn