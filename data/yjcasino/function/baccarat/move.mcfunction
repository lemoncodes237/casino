execute if score @s yj-stage matches 0 positioned ^-1 ^1.01 ^1.5 facing ^ ^ ^3 run return run function yjcasino:baccarat/deal_card_player
execute if score @s yj-stage matches 1 positioned ^1 ^1.01 ^1.5 facing ^ ^ ^3 run return run function yjcasino:baccarat/deal_card_banker
execute if score @s yj-stage matches 2 positioned ^-1.4 ^1.01 ^1.5 facing ^ ^ ^3 run return run function yjcasino:baccarat/deal_card_player
execute if score @s yj-stage matches 3 positioned ^1.4 ^1.01 ^1.5 facing ^ ^ ^3 run return run function yjcasino:baccarat/deal_card_banker

# Natural?
execute if score @s yj-total matches 8..9 if score @s yj-cards matches 2 run scoreboard players set @s yj-stage 6
execute if score @s yj-total-banker matches 8..9 if score @s yj-cards-banker matches 2 run scoreboard players set @s yj-stage 6

# Additional card
execute if score @s yj-stage matches 4 if score @s yj-total matches 0..5 positioned ^-1.8 ^1.01 ^1.5 facing ^-1 ^ ^ run return run function yjcasino:baccarat/deal_card_player
execute if score @s yj-stage matches 4 run scoreboard players add @s yj-stage 1

# Additional card for banker
execute if score @s yj-stage matches 5 positioned ^1.8 ^1.01 ^1.5 facing ^1 ^ ^ run return run function yjcasino:baccarat/banker_third

scoreboard players operation $yj-temp yj-total = @s yj-total
scoreboard players operation $yj-temp yj-total-banker = @s yj-total-banker
scoreboard players operation $yj-temp yj-cards-banker = @s yj-cards-banker

# Now payouts!
execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 run return run function yjcasino:baccarat/check_winner
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 run return run function yjcasino:baccarat/check_winner
execute positioned ^0 ^1 ^4 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 run return run function yjcasino:baccarat/check_winner
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 run return run function yjcasino:baccarat/check_winner
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 run return run function yjcasino:baccarat/check_winner

# Finish game once everything is done after 3 seconds
scoreboard players add @s yj-dealer-time-to-finish 1

execute if score @s yj-dealer-time-to-finish matches 6.. run function yjcasino:bet/reset