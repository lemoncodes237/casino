scoreboard players add @a yj-id 0

execute as @a[scores={yj-id=0}] run function yjcasino:init_id
execute as @a unless score @s yj-money matches -2147483648..2147483647 run scoreboard players set @s yj-money 0

execute as @a if score @s deposit-money-yj matches 1.. run function yjcasino:money/deposit_money
execute as @a if score @s withdraw-money-yj matches 1.. run function yjcasino:money/withdraw_money
execute as @a if score @s deposit-money matches 1.. run function yjcasino:money/deposit
execute as @a if score @s withdraw-money matches 1.. run function yjcasino:money/withdraw
execute as @a if score @s bank matches 1.. run function yjcasino:money/bank
execute as @a if score @s create-dealer matches 1.. at @s run function yjcasino:setup/summon_dealer

scoreboard players enable @a deposit-money
scoreboard players enable @a withdraw-money
scoreboard players enable @a bank
scoreboard players enable @a create-dealer

# Deal with dealer interactions
execute as @a if score @s dealer-click matches 1.. at @s run function yjcasino:setup/dealer_interact

execute store result score #test-yj yj-casino-temp run data get storage yjcasino:dealer details[0]
execute if score #test-yj yj-casino-temp matches 1.. run function yjcasino:setup/dealer_setup