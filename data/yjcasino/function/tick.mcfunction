scoreboard players add @a yj-id 0

execute as @a[scores={yj-id=0}] run function yjcasino:init_id
execute as @a unless score @s yj-money matches -2147483648..2147483647 run scoreboard players set @s yj-money 0

execute as @a if score @s deposit-money-yj matches 1.. run function yjcasino:money/deposit_money
execute as @a if score @s withdraw-money-yj matches 1.. run function yjcasino:money/withdraw_money
execute as @a if score @s deposit-money matches 1.. run function yjcasino:money/deposit
execute as @a if score @s withdraw-money matches 1.. run function yjcasino:money/withdraw
execute as @a if score @s bank matches 1.. run function yjcasino:money/bank

scoreboard players enable @a deposit-money
scoreboard players enable @a withdraw-money
scoreboard players enable @a bank