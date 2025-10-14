scoreboard players add @s yj-cards 1
execute if score @s yj-cards matches 1 run scoreboard players operation @s yj-card1 = $yj-card yj-casino-temp
execute if score @s yj-cards matches 2 run scoreboard players operation @s yj-card2 = $yj-card yj-casino-temp
execute if score @s yj-cards matches 3 run scoreboard players operation @s yj-card3 = $yj-card yj-casino-temp

scoreboard players add @s yj-stage 1