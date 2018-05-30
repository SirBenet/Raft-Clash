# Join smallest  team, in order blue-red-green-yellow
execute store result score BlueCount WorkSpace if entity @a[tag=blue]
execute store result score RedCount WorkSpace if entity @a[tag=red]
execute store result score GreenCount WorkSpace if entity @a[tag=green]
execute store result score YellowCount WorkSpace if entity @a[tag=yellow]

execute if score BlueCount WorkSpace <= RedCount WorkSpace if score BlueCount WorkSpace <= GreenCount WorkSpace if score BlueCount WorkSpace <= YellowCount WorkSpace run function phase_lobby/pig_actions/join_blue
execute if score RedCount WorkSpace < BlueCount WorkSpace if score RedCount WorkSpace <= GreenCount WorkSpace if score RedCount WorkSpace <= YellowCount WorkSpace run function phase_lobby/pig_actions/join_red
execute if score GreenCount WorkSpace < RedCount WorkSpace if score GreenCount WorkSpace < BlueCount WorkSpace if score GreenCount WorkSpace <= YellowCount WorkSpace run function phase_lobby/pig_actions/join_green
execute if score YellowCount WorkSpace < RedCount WorkSpace if score YellowCount WorkSpace < GreenCount WorkSpace if score YellowCount WorkSpace < BlueCount WorkSpace run function phase_lobby/pig_actions/join_yellow