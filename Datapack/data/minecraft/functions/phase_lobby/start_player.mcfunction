teleport @s -16.6 15 3.7 -110 0
gamemode adventure @s

function code/clear_player
replaceitem entity @s weapon.offhand air
give @s written_book{HideFlags:63,title:"How to Play",author:"SirBenet",pages:["{\"translate\":\"You are not using the required resource pack! Click here to download it.\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"open_url\",\"value\":\"http://rebrand.ly/RaftClashRP\"},\"with\":[\"\"]}"]}