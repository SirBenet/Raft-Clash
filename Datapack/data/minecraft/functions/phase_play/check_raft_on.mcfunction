# Ran from player

# Remove all previous tags
tag @s remove OnRaft
tag @s remove OnRaft1
tag @s remove OnRaft2
tag @s remove OnRaft3
tag @s remove OnRaft4
tag @s remove OnRaft5
tag @s remove OnRaft6
tag @s remove OnRaft7
tag @s remove OnRaft8
tag @s remove OnRaft9
tag @s remove OnRaft10
tag @s remove OnRaft11
tag @s remove OnRaft12

tag @s remove ControllingRaft
tag @s remove ControllingRaft1
tag @s remove ControllingRaft2
tag @s remove ControllingRaft3
tag @s remove ControllingRaft4
tag @s remove ControllingRaft5
tag @s remove ControllingRaft6
tag @s remove ControllingRaft7
tag @s remove ControllingRaft8
tag @s remove ControllingRaft9
tag @s remove ControllingRaft10
tag @s remove ControllingRaft11
tag @s remove ControllingRaft12

# Make closest armorstand set my OnRaft tag
tag @s add GetRaftOn
execute positioned ~ ~-1 ~ as @e[type=armor_stand,tag=RAFTBlockStand,distance=..2,sort=nearest,limit=1] run function phase_play/set_raft_on
tag @s remove GetRaftOn

# If on a helm, get raft I'm controlling 
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:armor_stand",Tags:["RAFTHelmStand"]}}}] run function phase_play/check_raft_controlling