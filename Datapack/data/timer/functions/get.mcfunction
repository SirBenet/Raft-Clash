execute store result score WorldborderSize Tickometer run worldborder get
scoreboard players remove WorldborderSize Tickometer 50000000
scoreboard players operation @p Tickometer = WorldborderSize Tickometer
tellraw @a [{"text":"Time elapsed: ","color":"blue"},{"score":{"name":"@p","objective":"Tickometer"}},{"text":"ms"}]