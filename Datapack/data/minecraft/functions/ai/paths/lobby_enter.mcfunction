# Open then close door
setblock -6 15 -1 stone_button[facing=east,powered=true]
summon falling_block -2 20 -2 {BlockState:{Name:"redstone_block"},Motion:[0.0,0.3,0.0]}
# Load path
setblock -2 17 -2 redstone_block destroy