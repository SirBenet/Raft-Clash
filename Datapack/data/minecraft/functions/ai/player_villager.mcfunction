# Get player's offset from AI ship center
execute store result score AIPlayerX WorkSpace run data get entity @p Pos[0] 1024
execute store result score AIPlayerY WorkSpace run data get entity @p Pos[1] 32768
execute store result score AIPlayerZ WorkSpace run data get entity @p Pos[2] 1024

execute store result score AICenterX WorkSpace run data get entity @e[type=experience_orb,tag=RAFTController,tag=Raft1,limit=1,sort=nearest] Pos[0] 1024
execute store result score AICenterY WorkSpace run data get entity @e[type=experience_orb,tag=RAFTController,tag=Raft1,limit=1,sort=nearest] Pos[1] 32768
execute store result score AICenterZ WorkSpace run data get entity @e[type=experience_orb,tag=RAFTController,tag=Raft1,limit=1,sort=nearest] Pos[2] 1024
scoreboard players remove AICenterY WorkSpace 1310720

scoreboard players operation AIPlayerX WorkSpace -= AICenterX WorkSpace
scoreboard players operation AIPlayerY WorkSpace -= AICenterY WorkSpace
scoreboard players operation AIPlayerZ WorkSpace -= AICenterZ WorkSpace

# Get components local to way ship is facing
summon area_effect_cloud ~ ~ ~ {Tags:["VectorGetter"]}
execute as @e[type=experience_orb,tag=RAFTController,tag=Raft1,limit=1,sort=nearest] rotated as @s run tp @e[type=area_effect_cloud,tag=VectorGetter,distance=..0.1] 0.0 0.0 0.0 ~ 0
execute as @e[type=area_effect_cloud,tag=VectorGetter] at @s run function code/get_vectors
kill @e[type=area_effect_cloud,tag=VectorGetter]

scoreboard players operation AIPlayerForwardX WorkSpace = AIPlayerX WorkSpace
scoreboard players operation AIPlayerForwardZ WorkSpace = AIPlayerZ WorkSpace
scoreboard players operation AIPlayerForwardX WorkSpace *= ForwardX WorkSpace
scoreboard players operation AIPlayerForwardZ WorkSpace *= ForwardZ WorkSpace
scoreboard players operation AIPlayerForward WorkSpace = AIPlayerForwardX WorkSpace
scoreboard players operation AIPlayerForward WorkSpace += AIPlayerForwardZ WorkSpace
scoreboard players operation AIPlayerForward WorkSpace /= 1024 Constants

scoreboard players operation AIPlayerLeftX WorkSpace = AIPlayerX WorkSpace
scoreboard players operation AIPlayerLeftZ WorkSpace = AIPlayerZ WorkSpace
scoreboard players operation AIPlayerLeftX WorkSpace *= LeftX WorkSpace
scoreboard players operation AIPlayerLeftZ WorkSpace *= LeftZ WorkSpace
scoreboard players operation AIPlayerLeft WorkSpace = AIPlayerLeftX WorkSpace
scoreboard players operation AIPlayerLeft WorkSpace += AIPlayerLeftZ WorkSpace
scoreboard players operation AIPlayerLeft WorkSpace /= 1024 Constants

# Add to template center, store to the player villager's position
scoreboard players operation AIPlayerLeft WorkSpace += AILayoutCenterX WorkSpace
scoreboard players operation AIPlayerY WorkSpace += AILayoutCenterY WorkSpace
scoreboard players operation AIPlayerForward WorkSpace += AILayoutCenterZ WorkSpace

execute store result entity @e[type=villager,tag=AIPlayerVillager,limit=1,sort=nearest] Pos[0] double 0.000030517578125 run scoreboard players get AIPlayerLeft WorkSpace
execute store result entity @e[type=villager,tag=AIPlayerVillager,limit=1,sort=nearest] Pos[1] double 0.000030517578125 run scoreboard players get AIPlayerY WorkSpace
execute store result entity @e[type=villager,tag=AIPlayerVillager,limit=1,sort=nearest] Pos[2] double 0.000030517578125 run scoreboard players get AIPlayerForward WorkSpace
