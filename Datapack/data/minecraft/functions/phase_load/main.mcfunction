# Loading whole arena at once made all players time out, so do it gradually with ticks inbetween

# Per player stuff
execute as @a[gamemode=!spectator] run function phase_load/per_player

# Generation
scoreboard players add LOAD Timer 1

execute if entity @s[tag=MAPGlaciers] run function phase_load/glaciers
execute if entity @s[tag=MAPRocks] run function phase_load/rocks

execute if score LOAD Timer matches 10 run tellraw @a {"text":"6% reloaded..","color":"red"}
execute if score LOAD Timer matches 20 run tellraw @a {"text":"12% reloaded..","color":"red"}
execute if score LOAD Timer matches 30 run tellraw @a {"text":"18% reloaded..","color":"red"}
execute if score LOAD Timer matches 40 run tellraw @a {"text":"24% reloaded..","color":"gold"}
execute if score LOAD Timer matches 50 run tellraw @a {"text":"29% reloaded..","color":"gold"}
execute if score LOAD Timer matches 60 run tellraw @a {"text":"35% reloaded..","color":"gold"}
execute if score LOAD Timer matches 70 run tellraw @a {"text":"41% reloaded..","color":"yellow"}
execute if score LOAD Timer matches 80 run tellraw @a {"text":"47% reloaded..","color":"yellow"}
execute if score LOAD Timer matches 90 run tellraw @a {"text":"53% reloaded..","color":"yellow"}
execute if score LOAD Timer matches 100 run tellraw @a {"text":"59% reloaded..","color":"green"}
execute if score LOAD Timer matches 110 run tellraw @a {"text":"65% reloaded..","color":"green"}
execute if score LOAD Timer matches 120 run tellraw @a {"text":"71% reloaded..","color":"green"}
execute if score LOAD Timer matches 130 run tellraw @a {"text":"76% reloaded..","color":"dark_green"}
execute if score LOAD Timer matches 140 run tellraw @a {"text":"82% reloaded..","color":"dark_green"}
execute if score LOAD Timer matches 150 run tellraw @a {"text":"88% reloaded..","color":"dark_green"}
execute if score LOAD Timer matches 160 run tellraw @a {"text":"94% reloaded..","color":"dark_green"}

execute if score LOAD Timer matches 170 run function phase_build/start_callback
