# Every 3 seconds: Check for falling stuff, load entire raft, update target, change mode (AIModeControl/AIModeBow/AIModeMelee)
scoreboard players add AICheck Timer 1
execute if score AICheck Timer matches 61 run function ai/slow_checks
execute if score AICheck Timer matches 61 run scoreboard players set AICheck Timer 0

# Every 1.5 seconds: Load self and get move direction
scoreboard players add AIMove Timer 1
execute if score AIMove Timer matches 30 run function ai/navigate
execute if score AIMove Timer matches 30 run scoreboard players set AIMove Timer 0

# Every 3 ticks: Teleport to mob I'm meant to be tracking (based on mode)
scoreboard players add AITeleport Timer 1
execute if score AITeleport Timer matches 3 if entity @s[tag=AIModeControl] run tp @s @e[type=armor_stand,tag=RAFTHelmStand,tag=Raft1,limit=1]
execute if score AITeleport Timer matches 3 if entity @s[tag=AIModeControl] at @s run tp @s ~ ~ ~ ~-180 ~
execute if score AITeleport Timer matches 3 if entity @s[tag=AIModeAttack] run function ai/pathfind
execute if score AITeleport Timer matches 3 run scoreboard players set AITeleport Timer 0

# Every tick: Carry out current ship action (accelerate, turn)
execute if entity @s[tag=AIModeControl] as @e[type=xp_orb,tag=RAFTController,tag=Raft1] at @s run function ai/do_current_raft_action
#TODO: Shooting with bow
#replaceitem entity @s[tag=AIModeBow] armor.head golden_hoe{Damage:10,Unbreakable:1b}