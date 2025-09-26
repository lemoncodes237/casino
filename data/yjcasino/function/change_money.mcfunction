# Change money function
# Arguments: Score of $yj-arg1 yj-casino-var = id of player
# Score of $yj-arg2 yj-casino-var = amount in cents

# tellraw @a ["Adding ",{"score":{"objective":"yj-casino-var","name":"$yj-arg2"}}," dollars"]

execute store result storage yjcasino:balance id int 1 run scoreboard players get $yj-arg1 yj-casino-var
function yjcasino:money/return_balance with storage yjcasino:balance
scoreboard players operation $yj-money yj-money += $yj-arg2 yj-casino-var
execute store result storage yjcasino:balance var double 1 run scoreboard players get $yj-money yj-money
function yjcasino:money/set_balance with storage yjcasino:balance