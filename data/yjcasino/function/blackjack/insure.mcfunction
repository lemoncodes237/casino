scoreboard players operation $yj-arg1 yj-casino-var = @s yj-player-id
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-bet

# Take half of it
scoreboard players operation $yj-arg2 yj-casino-var *= $fifty yj-casino-var

execute store result storage yjcasino:bet bet double 0.01 run scoreboard players get $yj-arg2 yj-casino-var
execute at @s positioned ^ ^0.3 ^1 run function yjcasino:blackjack/show_insurance_bet with storage yjcasino:bet

scoreboard players operation $yj-arg2 yj-casino-var *= $negation yj-casino-var
function yjcasino:change_money

tag @s add yj-blackjack-insured