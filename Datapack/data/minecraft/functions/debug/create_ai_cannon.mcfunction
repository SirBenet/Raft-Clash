# Create cannon
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function raft/create/create_cannon
fill ~ ~ ~ ~ ~ ~ air replace jungle_fence_gate

# Tags
tag @e[tag=RAFTCannonStand,distance=..3,limit=1,sort=nearest] add AICannon

execute if entity @e[tag=AICannon1] if entity @e[tag=AICannon2] if entity @e[tag=AICannon3] if entity @e[tag=AICannon4] if entity @e[tag=AICannon5] if entity @e[tag=AICannon6] if entity @e[tag=AICannon7] unless entity @e[tag=AICannon8] run tag @e[tag=RAFTCannonStand,distance=..3,limit=1,sort=nearest] add AICannon8
execute if entity @e[tag=AICannon1] if entity @e[tag=AICannon2] if entity @e[tag=AICannon3] if entity @e[tag=AICannon4] if entity @e[tag=AICannon5] if entity @e[tag=AICannon6] unless entity @e[tag=AICannon7] run tag @e[tag=RAFTCannonStand,distance=..3,limit=1,sort=nearest] add AICannon7
execute if entity @e[tag=AICannon1] if entity @e[tag=AICannon2] if entity @e[tag=AICannon3] if entity @e[tag=AICannon4] if entity @e[tag=AICannon5] unless entity @e[tag=AICannon6] run tag @e[tag=RAFTCannonStand,distance=..3,limit=1,sort=nearest] add AICannon6
execute if entity @e[tag=AICannon1] if entity @e[tag=AICannon2] if entity @e[tag=AICannon3] if entity @e[tag=AICannon4] unless entity @e[tag=AICannon5] run tag @e[tag=RAFTCannonStand,distance=..3,limit=1,sort=nearest] add AICannon5
execute if entity @e[tag=AICannon1] if entity @e[tag=AICannon2] if entity @e[tag=AICannon3] unless entity @e[tag=AICannon4] run tag @e[tag=RAFTCannonStand,distance=..3,limit=1,sort=nearest] add AICannon4
execute if entity @e[tag=AICannon1] if entity @e[tag=AICannon2] unless entity @e[tag=AICannon3] run tag @e[tag=RAFTCannonStand,distance=..3,limit=1,sort=nearest] add AICannon3
execute if entity @e[tag=AICannon1] unless entity @e[tag=AICannon2] run tag @e[tag=RAFTCannonStand,distance=..3,limit=1,sort=nearest] add AICannon2
execute unless entity @e[tag=AICannon1] run tag @e[tag=RAFTCannonStand,distance=..3,limit=1,sort=nearest] add AICannon1
