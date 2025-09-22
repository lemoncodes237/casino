function yjcasino:money/delete_diamonds with storage yjcasino:temp
scoreboard players operation @s deposit-money-yj *= $thousand yj-casino-var

execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-id
function yjcasino:money/get_balance_100 with storage yjcasino:balance

scoreboard players operation @s yj-money += @s deposit-money-yj
scoreboard players set @s deposit-money-yj 0

execute store result storage yjcasino:balance var int 1 run scoreboard players get @s yj-money
function yjcasino:money/set_balance with storage yjcasino:balance
execute store result storage yjcasino:balance var double 0.01 run scoreboard players get @s yj-money
function yjcasino:money/state_balance with storage yjcasino:balance