tag @s remove yj-blackjack-awaiting

execute if score @s yj-blackjack-splits matches 1.. run return run function yjcasino:blackjack/split/action/split

scoreboard players set @s yj-stage 79

# Reset split scores
scoreboard players set @s yj-blackjack-split1-stage 0
scoreboard players set @s yj-blackjack-split2-stage 0
scoreboard players set @s yj-blackjack-split3-stage 0
scoreboard players set @s yj-blackjack-split4-stage 0
scoreboard players set @s yj-blackjack-split1-total 0
scoreboard players set @s yj-blackjack-split2-total 0
scoreboard players set @s yj-blackjack-split3-total 0
scoreboard players set @s yj-blackjack-split4-total 0
scoreboard players set @s yj-blackjack-split1-cards 0
scoreboard players set @s yj-blackjack-split2-cards 0
scoreboard players set @s yj-blackjack-split3-cards 0
scoreboard players set @s yj-blackjack-split4-cards 0

# Double the bet
scoreboard players operation $yj-arg1 yj-casino-var = @s yj-player-id
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-original-bet

scoreboard players operation @s yj-bet += $yj-arg2 yj-casino-var

scoreboard players operation $yj-arg2 yj-casino-var *= $hundred yj-casino-var

execute store result storage yjcasino:temp final_bet double 1 run scoreboard players get @s yj-bet
function yjcasino:bet/show_bet with storage yjcasino:temp

scoreboard players operation $yj-arg2 yj-casino-var *= $negation yj-casino-var
function yjcasino:change_money