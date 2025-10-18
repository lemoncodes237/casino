execute store result storage yjcasino:temp id int 1 run scoreboard players get @s yj-id
function yjcasino:money/get_balance with storage yjcasino:temp

scoreboard players operation $yj-arg2 yj-casino-var = @s yj-payment
scoreboard players set @s yj-payment 0

execute if score $yj-arg2 yj-casino-var > @s yj-money run return run tellraw @s "You don't have enough money for this payment!"

scoreboard players operation $yj-arg2 yj-casino-var *= $hundred yj-casino-var
scoreboard players operation $yj-arg1 yj-casino-var = @s yj-payment-id
function yjcasino:change_money

scoreboard players operation $yj-arg2 yj-casino-var *= $negation yj-casino-var
scoreboard players operation $yj-arg1 yj-casino-var = @s yj-id
function yjcasino:change_money

execute store result storage yjcasino:temp id int 1 run scoreboard players get @s yj-id
function yjcasino:money/get_balance_100 with storage yjcasino:temp
execute store result storage yjcasino:balance var double 0.01 run scoreboard players get @s yj-money
function yjcasino:money/state_balance with storage yjcasino:balance