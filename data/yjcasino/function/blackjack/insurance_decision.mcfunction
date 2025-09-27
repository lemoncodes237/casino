scoreboard players operation $yj-temp yj-id = @s yj-id

execute if score @s yj-blackjack-insurance-decision matches 1 as @e[type=interaction,tag=yj-bet-spot-in-play] at @s if score @s yj-dealer-game matches 3 if score @s yj-stage matches 3 if score @s yj-player-id = $yj-temp yj-id run function yjcasino:blackjack/insure

execute if score @s yj-blackjack-insurance-decision matches 1.. as @e[type=interaction,tag=yj-bet-spot-in-play] at @s if score @s yj-dealer-game matches 3 if score @s yj-stage matches 3 if score @s yj-player-id = $yj-temp yj-id run scoreboard players add @s yj-stage 1

scoreboard players set @s yj-blackjack-insurance-decision 0