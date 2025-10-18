execute store result storage yjcasino:pay id int 1 run scoreboard players get @s pay
function yjcasino:money/players/get_name with storage yjcasino:pay
scoreboard players operation $yj-temp pay = @s pay
scoreboard players operation @s yj-payment-id = @s pay
scoreboard players set @s pay 0

execute if score $yj-temp pay >= $yj-total yj-id run return run tellraw @s "Could not find player with that ID."
execute if score $yj-temp pay matches ..0 run return run tellraw @s "Could not find player with that ID."
# execute if score $yj-temp pay = @s yj-id run return run tellraw @s "You cannot pay yourself!"

data modify storage yjcasino:pay payment set value "$(payment)"

execute store result storage yjcasino:temp id int 1 run scoreboard players get @s yj-id
function yjcasino:money/get_balance with storage yjcasino:temp

execute store result storage yjcasino:pay money int 1 run scoreboard players get @s yj-money

function yjcasino:money/players/payment_menu with storage yjcasino:pay