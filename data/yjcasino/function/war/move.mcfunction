scoreboard players set $yj-roll yj-casino-temp -1
execute positioned ^4 ^1 ^1 facing ^8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.05 ^-0.5 run return run function yjcasino:war/deal_card
execute positioned ^3 ^1 ^3 facing ^6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.05 ^-0.5 run return run function yjcasino:war/deal_card
execute positioned ^0 ^1 ^4 facing ^0 ^ ^8 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.05 ^-0.5 run return run function yjcasino:war/deal_card
execute positioned ^-3 ^1 ^3 facing ^-6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.05 ^-0.5 run return run function yjcasino:war/deal_card
execute positioned ^-4 ^1 ^1 facing ^-8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.05 ^-0.5 run return run function yjcasino:war/deal_card

execute if score @s yj-stage matches 0 positioned ^ ^1 ^2.3 facing ^ ^ ^3 run return run function yjcasino:war/deal_card

# After 1 card is dealt to everyone
scoreboard players operation $yj-temp yj-total = @s yj-total

execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 run return run function yjcasino:war/check_winner
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 run return run function yjcasino:war/check_winner
execute positioned ^0 ^1 ^4 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 run return run function yjcasino:war/check_winner
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 run return run function yjcasino:war/check_winner
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 run return run function yjcasino:war/check_winner

# Stage 2 is the going to war stage, see if anyone needs to make a decision
# Stage 3 is waiting phase.
execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2 run function yjcasino:war/decision_screen
execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 3 run return 0
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2 run function yjcasino:war/decision_screen
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 3 run return 0
execute positioned ^0 ^1 ^4 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2 run function yjcasino:war/decision_screen
execute positioned ^0 ^1 ^4 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 3 run return 0
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2 run function yjcasino:war/decision_screen
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 3 run return 0
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2 run function yjcasino:war/decision_screen
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 3 run return 0

# If stage 4, there is a double down!
execute positioned ^4 ^1 ^1 facing ^8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 4 positioned ^0.1 ^0.06 ^-0.6 run return run function yjcasino:war/deal_card
execute positioned ^3 ^1 ^3 facing ^6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 4 positioned ^0.1 ^0.06 ^-0.6 run return run function yjcasino:war/deal_card
execute positioned ^0 ^1 ^4 facing ^0 ^ ^8 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 4 positioned ^0.1 ^0.06 ^-0.6 run return run function yjcasino:war/deal_card
execute positioned ^-3 ^1 ^3 facing ^-6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 4 positioned ^0.1 ^0.06 ^-0.6 run return run function yjcasino:war/deal_card
execute positioned ^-4 ^1 ^1 facing ^-8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 4 positioned ^0.1 ^0.06 ^-0.6 run return run function yjcasino:war/deal_card

# If a player went to war, we need the dealer as well
execute if score @s yj-stage matches 3 positioned ^0.1 ^1.01 ^2.4 facing ^ ^ ^3 run return run function yjcasino:war/deal_card

# Results of war
execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 5 run return run function yjcasino:war/check_winner_war
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 5 run return run function yjcasino:war/check_winner_war
execute positioned ^0 ^1 ^4 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 5 run return run function yjcasino:war/check_winner_war
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 5 run return run function yjcasino:war/check_winner_war
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 5 run return run function yjcasino:war/check_winner_war

# Finish game once everything is done after 3 seconds
scoreboard players add @s yj-dealer-time-to-finish 1

execute if score @s yj-dealer-time-to-finish matches 7.. run function yjcasino:bet/reset