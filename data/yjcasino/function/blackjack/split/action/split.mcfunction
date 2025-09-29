tag @s remove yj-blackjack-awaiting

tag @s add yj-blackjack-further-splits
execute if score @s yj-blackjack-split4-stage matches 2..60 run scoreboard players add @s yj-blackjack-split4-stage 1
execute if score @s yj-blackjack-split1-stage matches 2..60 run scoreboard players add @s yj-blackjack-split1-stage 1
execute if score @s yj-blackjack-split2-stage matches 2..60 run scoreboard players add @s yj-blackjack-split2-stage 1
execute if score @s yj-blackjack-split3-stage matches 2..60 run scoreboard players add @s yj-blackjack-split3-stage 1

scoreboard players operation $yj-arg1 yj-casino-var = @s yj-player-id
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-original-bet

scoreboard players operation @s yj-bet += $yj-arg2 yj-casino-var

scoreboard players operation $yj-arg2 yj-casino-var *= $hundred yj-casino-var

execute store result storage yjcasino:temp final_bet double 1 run scoreboard players get @s yj-bet
function yjcasino:bet/show_bet with storage yjcasino:temp

scoreboard players operation $yj-arg2 yj-casino-var *= $negation yj-casino-var
function yjcasino:change_money