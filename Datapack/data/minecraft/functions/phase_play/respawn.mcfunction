scoreboard players set @s UseTotem 0

# Teleport to chest with same RaftID
function phase_play/teleport_to_chest

# Replace used-up totem
replaceitem entity @s weapon.offhand totem_of_undying{display:{Name:"\"\""}}

# Respawn effects
effect clear @s regeneration
effect clear @s absorption

effect give @s mining_fatigue 3 10
effect give @s resistance 3 10
effect give @s weakness 3 10
effect give @s blindness 1 10
effect give @s instant_health 10 20
effect give @s levitation 1 1 true

execute if entity @s run particle cloud ~ ~1 ~ 0.2 0.2 0.2 0.2 100

execute at @s run playsound block.beacon.power_select master @s ~ ~ ~ 2 2
execute at @s run particle block gold_block ~ ~1.5 ~ 0.2 0.3 0.2 0 100