scoreboard players set @s yj-dealer-time 0

execute if score @s yj-dealer-game matches 1 run function yjcasino:fifty_fifty/move
execute if score @s yj-dealer-game matches 2 run function yjcasino:war/move
execute if score @s yj-dealer-game matches 3 run function yjcasino:blackjack/move
execute if score @s yj-dealer-game matches 4 run function yjcasino:baccarat/move
execute if score @s yj-dealer-game matches 5 run function yjcasino:triple_card/move
execute if score @s yj-dealer-game matches 6 run function yjcasino:robbery/move
