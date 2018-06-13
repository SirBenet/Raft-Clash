# Build-mode tips
scoreboard players add BuildTipStage Global 1

execute if score BuildTipStage Global matches 1 run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"text":"Make sure to place your treasure chest and helm where they won't easily sink!"}]
execute if score BuildTipStage Global matches 4 run tellraw @a [{"text":"[TIP] ","color":"dark_green"}, {"text":"A well positioned helm will let you collect items and reach your cannons without standing up."}]