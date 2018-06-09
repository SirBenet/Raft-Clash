# Try to bump away from wall
execute unless block ~ ~ ~8 air run data merge entity @s {Motion:[0.0,0.0,-0.25]}
execute unless block ~ ~ ~-8 air run data merge entity @s {Motion:[0.0,0.0,0.25]}
execute unless block ~8 ~ ~ air run data merge entity @s {Motion:[-0.25,0.0,0.0]}
execute unless block ~-8 ~ ~ air run data merge entity @s {Motion:[0.25,0.0,0.0]}