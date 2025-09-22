scoreboard players set @s withdraw-money 0
execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-id
function yjcasino:money/get_balance with storage yjcasino:balance
scoreboard players operation @s yj-money /= $ten yj-casino-var

execute if score @s yj-money matches 0 run return run tellraw @s "You can't withdraw with less than $10 in your account!"

execute store result storage yjcasino:transaction amount int 1 run scoreboard players get @s yj-money
data modify storage yjcasino:transaction value_str set value "$(value)"

scoreboard players enable @s withdraw-money-yj

function yjcasino:money/withdraw_screen with storage yjcasino:transaction