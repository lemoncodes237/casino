execute store result storage yjcasino:temp var int 1 run scoreboard players get @s withdraw-money-yj
scoreboard players operation @s withdraw-money-yj *= $ten yj-casino-var

execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-id
function yjcasino:money/get_balance with storage yjcasino:balance

execute if score @s yj-money >= @s withdraw-money-yj run return run function yjcasino:money/successful_withdrawal

scoreboard players operation @s withdraw-money-yj /= $ten yj-casino-var
tellraw @s ["Transaction Failed! Your balance of ",{"score":{"objective":"yj-money","name":"@s"}}," is not enough to withdraw ",{"score":{"objective":"withdraw-money-yj","name":"@s"}}," diamonds."]
scoreboard players set @s withdraw-money-yj 0