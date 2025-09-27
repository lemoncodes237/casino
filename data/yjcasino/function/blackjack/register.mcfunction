scoreboard players add $yj-rank yj-casino-temp 1
execute if score $yj-rank yj-casino-temp matches 11..13 run scoreboard players set $yj-rank yj-casino-temp 10
scoreboard players operation @s yj-total += $yj-rank yj-casino-temp
execute if score $yj-rank yj-casino-temp matches 1 run tag @s add yj-blackjack-ace

scoreboard players operation @s yj-last-card = $yj-rank yj-casino-temp

scoreboard players add @s yj-cards 1
scoreboard players add @s yj-stage 1

# Check for busted hands
execute if score @s yj-total matches 22.. run return run function yjcasino:blackjack/bust