# Go to helm pos (+ motion)
execute store result entity @s Pos[0] double 0.000030517578125 run scoreboard players get HelmX WorkSpace
execute store result entity @s Pos[2] double 0.000030517578125 run scoreboard players get HelmZ WorkSpace

# Rotation
execute store result entity @s Rotation[0] float 0.00001 run scoreboard players get AngularMomentum WorkSpace

# Teleport out based on PlayerRelativeX/PlayerRelativeZ to get transformed pos (where player should be)
execute if score PlayerRelativeX WorkSpace matches ..-1 at @s run tp @s ^-32 ^ ^
execute if score PlayerRelativeX WorkSpace matches ..-1 run scoreboard players add PlayerRelativeX WorkSpace 1048576
execute if score PlayerRelativeX WorkSpace matches 524288.. at @s run tp @s ^16 ^ ^
execute if score PlayerRelativeX WorkSpace matches 524288.. run scoreboard players remove PlayerRelativeX WorkSpace 524288
execute if score PlayerRelativeX WorkSpace matches 262144.. at @s run tp @s ^8 ^ ^
execute if score PlayerRelativeX WorkSpace matches 262144.. run scoreboard players remove PlayerRelativeX WorkSpace 262144
execute if score PlayerRelativeX WorkSpace matches 131072.. at @s run tp @s ^4 ^ ^
execute if score PlayerRelativeX WorkSpace matches 131072.. run scoreboard players remove PlayerRelativeX WorkSpace 131072
execute if score PlayerRelativeX WorkSpace matches 65536.. at @s run tp @s ^2 ^ ^
execute if score PlayerRelativeX WorkSpace matches 65536.. run scoreboard players remove PlayerRelativeX WorkSpace 65536
execute if score PlayerRelativeX WorkSpace matches 32768.. at @s run tp @s ^1 ^ ^
execute if score PlayerRelativeX WorkSpace matches 32768.. run scoreboard players remove PlayerRelativeX WorkSpace 32768
execute if score PlayerRelativeX WorkSpace matches 16384.. at @s run tp @s ^0.5 ^ ^
execute if score PlayerRelativeX WorkSpace matches 16384.. run scoreboard players remove PlayerRelativeX WorkSpace 16384
execute if score PlayerRelativeX WorkSpace matches 8192.. at @s run tp @s ^0.25 ^ ^
execute if score PlayerRelativeX WorkSpace matches 8192.. run scoreboard players remove PlayerRelativeX WorkSpace 8192
execute if score PlayerRelativeX WorkSpace matches 4096.. at @s run tp @s ^0.125 ^ ^
execute if score PlayerRelativeX WorkSpace matches 4096.. run scoreboard players remove PlayerRelativeX WorkSpace 4096
execute if score PlayerRelativeX WorkSpace matches 2048.. at @s run tp @s ^0.0625 ^ ^
execute if score PlayerRelativeX WorkSpace matches 2048.. run scoreboard players remove PlayerRelativeX WorkSpace 2048
execute if score PlayerRelativeX WorkSpace matches 1024.. at @s run tp @s ^0.03125 ^ ^
execute if score PlayerRelativeX WorkSpace matches 1024.. run scoreboard players remove PlayerRelativeX WorkSpace 1024
execute if score PlayerRelativeX WorkSpace matches 512.. at @s run tp @s ^0.015625 ^ ^
execute if score PlayerRelativeX WorkSpace matches 512.. run scoreboard players remove PlayerRelativeX WorkSpace 512
execute if score PlayerRelativeX WorkSpace matches 256.. at @s run tp @s ^0.0078125 ^ ^
execute if score PlayerRelativeX WorkSpace matches 256.. run scoreboard players remove PlayerRelativeX WorkSpace 256
execute if score PlayerRelativeX WorkSpace matches 128.. at @s run tp @s ^0.00390625 ^ ^
execute if score PlayerRelativeX WorkSpace matches 128.. run scoreboard players remove PlayerRelativeX WorkSpace 128

execute if score PlayerRelativeZ WorkSpace matches ..-1 at @s run tp @s ^ ^ ^-32
execute if score PlayerRelativeZ WorkSpace matches ..-1 run scoreboard players add PlayerRelativeZ WorkSpace 1048576
execute if score PlayerRelativeZ WorkSpace matches 524288.. at @s run tp @s ^ ^ ^16
execute if score PlayerRelativeZ WorkSpace matches 524288.. run scoreboard players remove PlayerRelativeZ WorkSpace 524288
execute if score PlayerRelativeZ WorkSpace matches 262144.. at @s run tp @s ^ ^ ^8
execute if score PlayerRelativeZ WorkSpace matches 262144.. run scoreboard players remove PlayerRelativeZ WorkSpace 262144
execute if score PlayerRelativeZ WorkSpace matches 131072.. at @s run tp @s ^ ^ ^4
execute if score PlayerRelativeZ WorkSpace matches 131072.. run scoreboard players remove PlayerRelativeZ WorkSpace 131072
execute if score PlayerRelativeZ WorkSpace matches 65536.. at @s run tp @s ^ ^ ^2
execute if score PlayerRelativeZ WorkSpace matches 65536.. run scoreboard players remove PlayerRelativeZ WorkSpace 65536
execute if score PlayerRelativeZ WorkSpace matches 32768.. at @s run tp @s ^ ^ ^1
execute if score PlayerRelativeZ WorkSpace matches 32768.. run scoreboard players remove PlayerRelativeZ WorkSpace 32768
execute if score PlayerRelativeZ WorkSpace matches 16384.. at @s run tp @s ^ ^ ^0.5
execute if score PlayerRelativeZ WorkSpace matches 16384.. run scoreboard players remove PlayerRelativeZ WorkSpace 16384
execute if score PlayerRelativeZ WorkSpace matches 8192.. at @s run tp @s ^ ^ ^0.25
execute if score PlayerRelativeZ WorkSpace matches 8192.. run scoreboard players remove PlayerRelativeZ WorkSpace 8192
execute if score PlayerRelativeZ WorkSpace matches 4096.. at @s run tp @s ^ ^ ^0.125
execute if score PlayerRelativeZ WorkSpace matches 4096.. run scoreboard players remove PlayerRelativeZ WorkSpace 4096
execute if score PlayerRelativeZ WorkSpace matches 2048.. at @s run tp @s ^ ^ ^0.0625
execute if score PlayerRelativeZ WorkSpace matches 2048.. run scoreboard players remove PlayerRelativeZ WorkSpace 2048
execute if score PlayerRelativeZ WorkSpace matches 1024.. at @s run tp @s ^ ^ ^0.03125
execute if score PlayerRelativeZ WorkSpace matches 1024.. run scoreboard players remove PlayerRelativeZ WorkSpace 1024
execute if score PlayerRelativeZ WorkSpace matches 512.. at @s run tp @s ^ ^ ^0.015625
execute if score PlayerRelativeZ WorkSpace matches 512.. run scoreboard players remove PlayerRelativeZ WorkSpace 512
execute if score PlayerRelativeZ WorkSpace matches 256.. at @s run tp @s ^ ^ ^0.0078125
execute if score PlayerRelativeZ WorkSpace matches 256.. run scoreboard players remove PlayerRelativeZ WorkSpace 256
execute if score PlayerRelativeZ WorkSpace matches 128.. at @s run tp @s ^ ^ ^0.00390625
execute if score PlayerRelativeZ WorkSpace matches 128.. run scoreboard players remove PlayerRelativeZ WorkSpace 128

# Teleport player to my location
execute at @s run tp @a[tag=MoveMe] ~ ~ ~