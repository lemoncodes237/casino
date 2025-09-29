execute if score @s yj-blackjack-split4-stage matches 99 run return run function yjcasino:blackjack/split/check_winner {split:4}
execute if score @s yj-blackjack-split1-stage matches 99 run return run function yjcasino:blackjack/split/check_winner {split:1}
execute if score @s yj-blackjack-split2-stage matches 99 run return run function yjcasino:blackjack/split/check_winner {split:2}
execute if score @s yj-blackjack-split3-stage matches 99 run return run function yjcasino:blackjack/split/check_winner {split:3}

# Done!
scoreboard players set @s yj-stage 99