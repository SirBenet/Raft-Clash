# Face target
tp @s ~ ~ ~ facing entity @e[tag=AITarget,limit=1,sort=nearest]

# Debug particles
#execute rotated as @s run particle barrier
#execute rotated as @s run particle flame ^ ^ ^1
#execute rotated as @s run particle flame ^ ^ ^2
#execute rotated as @s run particle flame ^ ^ ^3

# Get my forward vector
summon area_effect_cloud ~ ~ ~ {Tags:["VectorGetter"]}
execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[type=area_effect_cloud,tag=VectorGetter] ^ ^ ^1
execute as @e[type=area_effect_cloud,tag=VectorGetter] at @s run function code/get_vector
kill @e[type=area_effect_cloud,tag=VectorGetter]

# Move my forward vector
scoreboard players operation @s TempX = ForwardX WorkSpace
scoreboard players operation @s TempZ = ForwardZ WorkSpace

# Get forward/left vector for AI RAFTController
summon area_effect_cloud ~ ~ ~ {Tags:["VectorGetter"]}
execute as @e[type=xp_orb,tag=RAFTController,tag=Raft1,limit=1] rotated as @s run tp @e[type=area_effect_cloud,tag=VectorGetter] 0.0 0.0 0.0 ~-90 0
execute as @e[type=area_effect_cloud,tag=VectorGetter] at @s run function code/get_vectors
kill @e[type=area_effect_cloud,tag=VectorGetter]

# Find how much left/forward is in my facing direction
scoreboard players operation ForwardX WorkSpace *= @s TempX
scoreboard players operation ForwardZ WorkSpace *= @s TempZ

scoreboard players operation LeftX WorkSpace *= @s TempX
scoreboard players operation LeftZ WorkSpace *= @s TempZ

scoreboard players operation Forwardness WorkSpace = ForwardX WorkSpace
scoreboard players operation Forwardness WorkSpace += ForwardZ WorkSpace
scoreboard players operation Leftness WorkSpace = LeftX WorkSpace
scoreboard players operation Leftness WorkSpace += LeftZ WorkSpace

# Set ship action
scoreboard players set @e[type=xp_orb,tag=RAFTController,tag=Raft1] AIShipAction 0
execute if score Forwardness WorkSpace matches 10000000.. run scoreboard players set AIShipAction Global 1
execute if score Forwardness WorkSpace matches ..-200000000 run scoreboard players set AIShipAction Global 2
execute if score Leftness WorkSpace matches 1000000000.. run scoreboard players set AIShipAction Global 2
execute if score Leftness WorkSpace matches ..-1000000000 run scoreboard players set AIShipAction Global 3

# If on target
execute if entity @e[tag=AITarget,distance=..7] run function ai/arc_on_target