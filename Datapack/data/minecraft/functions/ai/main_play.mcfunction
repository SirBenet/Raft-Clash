# Every 3 seconds: Check for falling stuff, load entire raft, update target, change mode (AIModeControl/AIModeBow/AIModeMelee)
scoreboard players add @s AICheckTimer 1
execute if entity @s[scores={AICheckTimer=61..}] run function ai/slow_checks
scoreboard players set @s[scores={AICheckTimer=61..}] AICheckTimer 0

# Every 1.5 seconds: Load self and get move direction
scoreboard players add @s AIMoveTimer 1
execute if entity @s[scores={AIMoveTimer=30..}] run function ai/navigate
scoreboard players set @s[scores={AIMoveTimer=30..}] AIMoveTimer 0

# Every 3 ticks: Teleport to mob I'm meant to be tracking (based on mode)
scoreboard players add @s AITeleportTimer 1
execute if entity @s[scores={AITeleportTimer=3..},tag=AIModeControl] run tp @s @e[type=armor_stand,tag=RAFTHelmStand,tag=Raft1,limit=1]
execute if entity @s[scores={AITeleportTimer=3..},tag=AIModeControl] at @s run tp @s ~ ~ ~ ~-180 ~
execute if entity @s[scores={AITeleportTimer=3..},tag=AIModeAttack] run function ai/pathfind
scoreboard players set @s[scores={AITeleportTimer=3..}] AITeleportTimer 0

# Every tick: Carry out current ship action (accelerate, turn)
execute if entity @s[tag=AIModeControl] as @e[type=xp_orb,tag=RAFTController,tag=Raft1] at @s run function ai/do_current_raft_action
#TODO: Shooting with bow
#replaceitem entity @s[tag=AIModeBow] armor.head golden_hoe{Damage:10,Unbreakable:1b}