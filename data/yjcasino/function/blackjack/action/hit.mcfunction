tag @s remove yj-blackjack-awaiting

execute if score @s yj-blackjack-splits matches 1.. run return run function yjcasino:blackjack/split/action/hit

scoreboard players add @s yj-stage 1