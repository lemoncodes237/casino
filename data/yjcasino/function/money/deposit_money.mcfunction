execute store result score @s yj-casino-temp run clear @s diamond 0
execute store result storage yjcasino:temp var int 1 run scoreboard players get @s deposit-money-yj
execute if score @s yj-casino-temp >= @s deposit-money-yj run return run function yjcasino:money/successful_deposit
tellraw @s ["Transaction Failed. You do not have enough diamonds!"]
scoreboard players set @s deposit-money-yj 0