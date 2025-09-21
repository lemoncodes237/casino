scoreboard players set @s deposit-money 0
execute store result score @s yj-casino-temp run clear @s diamond 0

execute if score @s yj-casino-temp matches 0 run return run tellraw @s "You can't deposit with no diamonds in your inventory!"

execute store result storage yjcasino:transaction amount int 1 run scoreboard players get @s yj-casino-temp
data modify storage yjcasino:transaction value_str set value "$(value)"

scoreboard players enable @s deposit-money-yj

function yjcasino:money/deposit_screen with storage yjcasino:transaction