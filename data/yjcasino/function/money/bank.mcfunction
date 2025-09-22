scoreboard players set @s bank 0
execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-id
function yjcasino:money/get_balance_100 with storage yjcasino:balance

execute store result storage yjcasino:transaction var double 0.01 run scoreboard players get @s yj-money

function yjcasino:money/banking_screen with storage yjcasino:transaction