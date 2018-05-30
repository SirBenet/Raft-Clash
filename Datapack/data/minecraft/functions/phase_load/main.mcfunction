# Loading whole arena at once made all players time out, so do it gradually with ticks inbetween

# Per player stuff
execute as @a[gamemode=!spectator] run function phase_load/per_player

# Generation
scoreboard players add @s LOADTimer 1

execute if entity @s[tag=MAPGlaciers] run function phase_load/glaciers
execute if entity @s[tag=MAPRocks] run function phase_load/rocks

execute if entity @s[scores={LOADTimer=10}] run tellraw @a {"text":"6% reloaded..","color":"red"}
execute if entity @s[scores={LOADTimer=20}] run tellraw @a {"text":"12% reloaded..","color":"red"}
execute if entity @s[scores={LOADTimer=30}] run tellraw @a {"text":"18% reloaded..","color":"red"}
execute if entity @s[scores={LOADTimer=40}] run tellraw @a {"text":"24% reloaded..","color":"gold"}
execute if entity @s[scores={LOADTimer=50}] run tellraw @a {"text":"29% reloaded..","color":"gold"}
execute if entity @s[scores={LOADTimer=60}] run tellraw @a {"text":"35% reloaded..","color":"gold"}
execute if entity @s[scores={LOADTimer=70}] run tellraw @a {"text":"41% reloaded..","color":"yellow"}
execute if entity @s[scores={LOADTimer=80}] run tellraw @a {"text":"47% reloaded..","color":"yellow"}
execute if entity @s[scores={LOADTimer=90}] run tellraw @a {"text":"53% reloaded..","color":"yellow"}
execute if entity @s[scores={LOADTimer=100}] run tellraw @a {"text":"59% reloaded..","color":"green"}
execute if entity @s[scores={LOADTimer=110}] run tellraw @a {"text":"65% reloaded..","color":"green"}
execute if entity @s[scores={LOADTimer=120}] run tellraw @a {"text":"71% reloaded..","color":"green"}
execute if entity @s[scores={LOADTimer=130}] run tellraw @a {"text":"76% reloaded..","color":"dark_green"}
execute if entity @s[scores={LOADTimer=140}] run tellraw @a {"text":"82% reloaded..","color":"dark_green"}
execute if entity @s[scores={LOADTimer=150}] run tellraw @a {"text":"88% reloaded..","color":"dark_green"}
execute if entity @s[scores={LOADTimer=160}] run tellraw @a {"text":"94% reloaded..","color":"dark_green"}

execute if entity @s[scores={LOADTimer=170}] run function phase_build/start_callback
