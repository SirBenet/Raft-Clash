function code/clear_player

gamemode spectator @s
tp @s @a[gamemode=!spectator,limit=1]

scoreboard players set @s LeaveGame 0