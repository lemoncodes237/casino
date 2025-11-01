scoreboard players add $yj-rank yj-casino-temp 1
# Face cards are bad
execute if score $yj-rank yj-casino-temp matches 11..13 run scoreboard players set $yj-rank yj-casino-temp 100
scoreboard players operation @s yj-total += $yj-rank yj-casino-temp

scoreboard players operation @s yj-last-card = $yj-rank yj-casino-temp
scoreboard players operation @s yj-last-suit = $yj-suit yj-casino-temp

scoreboard players add @s yj-cards 1
scoreboard players add @s yj-stage 1

execute if score @s yj-total matches ..90 if score @s yj-cards matches 1 run scoreboard players add @s yj-stage 1

# Check for face cards
execute if score @s yj-total matches 100.. if score @s yj-cards matches 2.. run scoreboard players set @s yj-stage 99