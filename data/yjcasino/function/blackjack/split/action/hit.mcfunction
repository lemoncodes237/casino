tag @s remove yj-blackjack-awaiting

execute if score @s yj-blackjack-split4-stage matches 2..60 run scoreboard players add @s yj-blackjack-split4-stage 1
execute if score @s yj-blackjack-split1-stage matches 2..60 run scoreboard players add @s yj-blackjack-split1-stage 1
execute if score @s yj-blackjack-split2-stage matches 2..60 run scoreboard players add @s yj-blackjack-split2-stage 1
execute if score @s yj-blackjack-split3-stage matches 2..60 run scoreboard players add @s yj-blackjack-split3-stage 1