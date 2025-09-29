$scoreboard players set @s yj-blackjack-split$(split)-stage 100

$execute if entity @s[tag=yj-blackjack-ace-split$(split)] if score @s yj-blackjack-split$(split)-total matches 0..11 run scoreboard players add @s yj-blackjack-split$(split)-total 10

$execute if score $yj-temp yj-total > @s yj-blackjack-split$(split)-total if score $yj-temp yj-total matches 0..21 run return run function yjcasino:blackjack/split/loss {split:$(split)}
$execute if score $yj-temp yj-total < @s yj-blackjack-split$(split)-total run return run function yjcasino:blackjack/split/win {split:$(split)}
$execute if score $yj-temp yj-total matches 22.. run return run function yjcasino:blackjack/split/win {split:$(split)}
$execute if score $yj-temp yj-total = @s yj-blackjack-split$(split)-total run return run function yjcasino:blackjack/split/tie {split:$(split)}

$execute if score @s yj-blackjack-splits matches 1 if score $two yj-casino-var matches $(split) run scoreboard players set @s yj-stage 99