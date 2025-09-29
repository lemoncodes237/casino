execute positioned ^ ^0.01 ^ run function yjcasino:card/deal_card

scoreboard players operation @s yj-total = $yj-suit yj-casino-temp
execute if score @s yj-total matches 2 run scoreboard players set @s yj-total 0
scoreboard players add @s yj-stage 1