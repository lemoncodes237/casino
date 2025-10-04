execute positioned ^ ^ ^ run function yjcasino:card/deal_card

scoreboard players add $yj-rank yj-casino-temp 1
execute if score $yj-rank yj-casino-temp matches 10..13 run scoreboard players set $yj-rank yj-casino-temp 0


scoreboard players operation @s yj-total-banker += $yj-rank yj-casino-temp
execute if score @s yj-total-banker matches 10.. run scoreboard players remove @s yj-total-banker 10
scoreboard players add @s yj-cards-banker 1

scoreboard players add @s yj-stage 1