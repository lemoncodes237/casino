execute if score @s yj-cards matches 3 if score @s yj-total-banker matches 0..2 run return run function yjcasino:baccarat/deal_card_banker
execute if score @s yj-cards matches 3 if score @s yj-total-banker matches 3 unless score @s yj-last-card matches 8 run return run function yjcasino:baccarat/deal_card_banker
execute if score @s yj-cards matches 3 if score @s yj-total-banker matches 4 if score @s yj-last-card matches 2..7 run return run function yjcasino:baccarat/deal_card_banker
execute if score @s yj-cards matches 3 if score @s yj-total-banker matches 5 if score @s yj-last-card matches 4..7 run return run function yjcasino:baccarat/deal_card_banker
execute if score @s yj-cards matches 3 if score @s yj-total-banker matches 6 if score @s yj-last-card matches 6..7 run return run function yjcasino:baccarat/deal_card_banker

execute if score @s yj-cards matches 2 if score @s yj-total-banker matches 0..5 run return run function yjcasino:baccarat/deal_card_banker

scoreboard players add @s yj-stage 1
return run function yjcasino:baccarat/move