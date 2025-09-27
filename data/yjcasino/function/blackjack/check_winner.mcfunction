scoreboard players set @s yj-stage 99

execute if score $yj-temp yj-total > @s yj-total if score $yj-temp yj-total matches 0..21 run function yjcasino:blackjack/loss
execute if score $yj-temp yj-total < @s yj-total run function yjcasino:blackjack/win
execute if score $yj-temp yj-total matches 22.. run function yjcasino:blackjack/win
execute if score $yj-temp yj-total = @s yj-total run function yjcasino:blackjack/tie