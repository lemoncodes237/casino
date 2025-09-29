$scoreboard players operation $yj-temp yj-casino-temp = @s yj-blackjack-split$(split)-stage
scoreboard players operation $yj-temp yj-casino-temp %= $three yj-casino-var

$execute if score $yj-temp yj-casino-temp matches 1 run return run function yjcasino:blackjack/split/look_decision {split:$(split)}
$execute if score $yj-temp yj-casino-temp matches 2 run return run function yjcasino:blackjack/split/decision {split:$(split)}