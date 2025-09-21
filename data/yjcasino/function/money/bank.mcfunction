scoreboard players set @s bank 0
execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-id
function yjcasino:money/get_balance with storage yjcasino:balance

execute store result storage yjcasino:transaction var int 1 run scoreboard players get @s yj-money

function yjcasino:money/banking_screen with storage yjcasino:transaction