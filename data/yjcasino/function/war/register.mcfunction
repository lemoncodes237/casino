scoreboard players operation @s yj-total = $yj-rank yj-casino-temp
execute if score @s yj-total matches 0 run scoreboard players set @s yj-total 13
scoreboard players add @s yj-cards 1
scoreboard players add @s yj-stage 1