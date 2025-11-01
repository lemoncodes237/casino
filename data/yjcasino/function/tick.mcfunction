scoreboard players add @a yj-id 0

execute as @a[scores={yj-id=0}] at @s run function yjcasino:init_id
execute as @a unless score @s yj-money matches -2147483648..2147483647 run scoreboard players set @s yj-money 0

execute as @a if score @s deposit-money-yj matches 1.. run function yjcasino:money/deposit_money
execute as @a if score @s withdraw-money-yj matches 1.. run function yjcasino:money/withdraw_money
execute as @a if score @s deposit-money matches 1.. run function yjcasino:money/deposit
execute as @a if score @s withdraw-money matches 1.. run function yjcasino:money/withdraw
execute as @a if score @s bank matches 1.. run function yjcasino:money/bank

scoreboard players enable @a deposit-money
scoreboard players enable @a withdraw-money
scoreboard players enable @a bank

# Deal with dealer interactions
execute as @a if score @s dealer-click matches 1.. at @s run function yjcasino:setup/dealer_interact

execute as @e[type=interaction,tag=yj-bet-spot] at @s on target run function yjcasino:bet/bet
execute as @e[type=interaction,tag=yj-bet-spot] run data remove entity @s interaction

execute as @a if score @s yj-bet matches 0.. at @s run function yjcasino:bet/bet_finish
execute as @a if score @s yj-special-bet matches 0.. at @s run function yjcasino:bet/special_bet_finish
execute as @a if score @s yj-bet matches -2 at @s run function yjcasino:bet/bet_cancel
execute as @a if score @s yj-special-bet matches -2 at @s run function yjcasino:bet/bet_cancel

execute as @e[type=villager,tag=yj-dealer,tag=yj-dealer-ready,tag=!yj-dealer-playing] at @s run function yjcasino:bet/dealer_time
execute as @e[type=villager,tag=yj-dealer,tag=yj-dealer-ready,tag=yj-dealer-playing] at @s run function yjcasino:bet/move

# Needed for War
execute as @a if score @s yj-war-decision matches 1.. at @s run function yjcasino:war/decision

# Needed for Blackjack
execute as @a if score @s yj-blackjack-insurance-decision matches 1.. at @s run function yjcasino:blackjack/insurance_decision
execute as @a if score @s yj-blackjack-decision matches 1.. at @s run function yjcasino:blackjack/check_decision

# Needed for Triple Card Poker
execute as @a if score @s yj-triple-card-decision matches 1.. at @s run function yjcasino:triple_card/check_decision

# Needed for Robbery
execute as @a if score @s yj-robbery-decision matches 1.. at @s run function yjcasino:robbery/check_decision

# Payment system
scoreboard players enable @a pay
execute as @a if score @s pay matches 1.. run function yjcasino:money/players/pay

execute as @a if score @s yj-payment matches 1.. run function yjcasino:money/players/finalize_pay

# Get id
scoreboard players enable @a get_id
execute as @a if score @s get_id matches 1.. run function yjcasino:get_id

# Refresh name sometimes
scoreboard players add $yj-name-refresh yj-casino-var 1
execute if score $yj-name-refresh yj-casino-var matches 72000.. run return run function yjcasino:refresh

scoreboard players add $yj-debug-time yj-casino-var 1