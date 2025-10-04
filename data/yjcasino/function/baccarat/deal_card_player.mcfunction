execute positioned ^ ^ ^ run function yjcasino:card/deal_card

scoreboard players add $yj-rank yj-casino-temp 1
execute if score $yj-rank yj-casino-temp matches 10..13 run scoreboard players set $yj-rank yj-casino-temp 0

scoreboard players operation @s yj-last-card = $yj-rank yj-casino-temp


scoreboard players operation @s yj-total += $yj-rank yj-casino-temp
execute if score @s yj-total matches 10.. run scoreboard players remove @s yj-total 10
scoreboard players add @s yj-cards 1

scoreboard players add @s yj-stage 1