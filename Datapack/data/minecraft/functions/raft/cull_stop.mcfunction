# Called from culled armorstand that needs to turn back into stand + shulker

# Summon new blockstand + shulker 
execute if entity @s[tag=RAFTBlockStandColor0] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor0","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:0,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor0","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:1,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}
execute if entity @s[tag=RAFTBlockStandColor1] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor1","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:1,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor1","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:10,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}
execute if entity @s[tag=RAFTBlockStandColor2] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor2","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:2,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor2","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:40,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}

execute if entity @s[tag=RAFTBlockStandColor3] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor3","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:3,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor3","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:1,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}
execute if entity @s[tag=RAFTBlockStandColor4] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor4","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:4,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor4","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:10,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}
execute if entity @s[tag=RAFTBlockStandColor5] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor5","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:5,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor5","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:40,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}

execute if entity @s[tag=RAFTBlockStandColor6] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor6","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:6,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor6","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:1,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}
execute if entity @s[tag=RAFTBlockStandColor7] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor7","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:7,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor7","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:10,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}
execute if entity @s[tag=RAFTBlockStandColor8] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor8","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:8,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor8","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:40,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}

execute if entity @s[tag=RAFTBlockStandColor9] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor9","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:9,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor9","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:1,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}
execute if entity @s[tag=RAFTBlockStandColor10] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor10","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:10,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor10","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:10,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}
execute if entity @s[tag=RAFTBlockStandColor11] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor11","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:11,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor11","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:40,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}

execute if entity @s[tag=RAFTBlockStandColor12] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor12","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:12,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor12","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:1,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}
execute if entity @s[tag=RAFTBlockStandColor13] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor13","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:13,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor13","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:10,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}
execute if entity @s[tag=RAFTBlockStandColor14] run summon armor_stand ~ ~0.05 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["RAFTBlockStand","RAFTBlockStandJustUnculled","RAFTBlockStandColor14","RAFTMove","RAFTNew"],Passengers:[{id:"shulker",Color:14,NoAI:1b,Tags:["RAFTBlock","RAFTBlockJustUnculled","RAFTBlockColor14","RAFTNew"],Peek:1b,DeathLootTable:"minecraft:empty",Silent:1b,AbsorptionAmount:40,ActiveEffects:[{Id:14,Duration:8,Ambient:1b}],Attributes:[{Name:generic.maxHealth,Base:1000.0}],Health:1000.0f}]}

# Transfer over my posititon tags
execute if entity @s[tag=x-16] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add x-16
execute if entity @s[tag=x8] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add x8
execute if entity @s[tag=x4] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add x4
execute if entity @s[tag=x2] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add x2
execute if entity @s[tag=x1] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add x1

execute if entity @s[tag=y-32] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add y-32
execute if entity @s[tag=y16] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add y16
execute if entity @s[tag=y8] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add y8
execute if entity @s[tag=y4] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add y4
execute if entity @s[tag=y2] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add y2
execute if entity @s[tag=y1] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add y1

execute if entity @s[tag=z-16] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add z-16
execute if entity @s[tag=z8] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add z8
execute if entity @s[tag=z4] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add z4
execute if entity @s[tag=z2] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add z2
execute if entity @s[tag=z1] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add z1

# Transfer over my raft ID score + tags
scoreboard players operation @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] RaftID = @s RaftID
execute if entity @s[tag=Raft1] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft1
execute if entity @s[tag=Raft2] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft2
execute if entity @s[tag=Raft3] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft3
execute if entity @s[tag=Raft4] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft4
execute if entity @s[tag=Raft5] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft5
execute if entity @s[tag=Raft6] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft6
execute if entity @s[tag=Raft7] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft7
execute if entity @s[tag=Raft8] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft8
execute if entity @s[tag=Raft9] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft9
execute if entity @s[tag=Raft10] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft10
execute if entity @s[tag=Raft11] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft11
execute if entity @s[tag=Raft12] run tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft12

execute if entity @s[tag=Raft1] run tag @e[type=shulker,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft1
execute if entity @s[tag=Raft2] run tag @e[type=shulker,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft2
execute if entity @s[tag=Raft3] run tag @e[type=shulker,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft3
execute if entity @s[tag=Raft4] run tag @e[type=shulker,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft4
execute if entity @s[tag=Raft5] run tag @e[type=shulker,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft5
execute if entity @s[tag=Raft6] run tag @e[type=shulker,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft6
execute if entity @s[tag=Raft7] run tag @e[type=shulker,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft7
execute if entity @s[tag=Raft8] run tag @e[type=shulker,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft8
execute if entity @s[tag=Raft9] run tag @e[type=shulker,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft9
execute if entity @s[tag=Raft10] run tag @e[type=shulker,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft10
execute if entity @s[tag=Raft11] run tag @e[type=shulker,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft11
execute if entity @s[tag=Raft12] run tag @e[type=shulker,tag=RAFTNew,distance=..10,sort=nearest,limit=1] add Raft12

# Transfer over my current rotation
execute store result entity @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] Rotation[0] float 0.000030517578125 run data get entity @s Rotation[0] 32768
execute as @e[type=shulker,tag=RAFTNew,distance=..10,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~ ~

# Restore absorption
#TODO

# Update tags
tag @e[type=armor_stand,tag=RAFTNew,distance=..10,sort=nearest,limit=1] remove RAFTNew
tag @e[type=shulker,tag=RAFTNew,distance=..10,sort=nearest,limit=1] remove RAFTNew
tag @s remove RAFTCullStand
tag @s add RAFTDyingCullStand