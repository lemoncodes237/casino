function yjcasino:money/give_diamonds with storage yjcasino:temp
scoreboard players operation @s yj-money -= @s withdraw-money-yj
scoreboard players set @s withdraw-money-yj 0

execute store result storage yjcasino:balance var double 1 run scoreboard players get @s yj-money
function yjcasino:money/set_balance with storage yjcasino:balance
execute store result storage yjcasino:balance var double 0.01 run scoreboard players get @s yj-money
function yjcasino:money/state_balance with storage yjcasino:balance