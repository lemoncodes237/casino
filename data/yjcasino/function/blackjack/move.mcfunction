#return 0

# Stage 1: Deal first card, deal face down to dealer
execute positioned ^4 ^1 ^1 facing ^8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/deal_card
execute positioned ^3 ^1 ^3 facing ^6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/deal_card
execute positioned ^0 ^1 ^4 facing ^0 ^ ^8 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/deal_card
execute positioned ^-3 ^1 ^3 facing ^-6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/deal_card
execute positioned ^-4 ^1 ^1 facing ^-8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/deal_card
execute if score @s yj-stage matches 0 positioned ^ ^1.05 ^1.8 facing ^ ^ ^3 run return run function yjcasino:card/deal_facedown

# Stage 2: Deal second card
execute positioned ^4 ^1.01 ^0.9 facing ^8.1 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/deal_second_card
execute positioned ^3 ^1.01 ^2.9 facing ^6.1 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/deal_second_card
execute positioned ^ ^1.01 ^3.9 facing ^0.1 ^ ^8 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/deal_second_card
execute positioned ^-3 ^1.01 ^2.9 facing ^-6.1 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/deal_second_card
execute positioned ^-4 ^1.01 ^0.9 facing ^-8.1 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/deal_second_card
execute if score @s yj-stage matches 1 positioned ^ ^1.05 ^2.3 facing ^ ^ ^3 run kill @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=yj-hole-card]
execute if score @s yj-stage matches 1 positioned ^ ^1 ^1.8 facing ^ ^ ^3 run return run function yjcasino:blackjack/deal_card

# Stage 3: Ace Check
execute if score @s yj-stage matches 2 if entity @s[tag=!yj-blackjack-ace] run return run function yjcasino:blackjack/no_ace_move
execute if score @s yj-stage matches 2 run return run scoreboard players add @s yj-stage 1

# Stage 3 (Player): Insurance
# Stage 4 (Player): Wait
# Stage 5 (Player): Insurance Decision Made
execute positioned ^4 ^1 ^1 facing ^8.1 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2 positioned ^ ^0.05 ^-0.7 run function yjcasino:blackjack/insurance
execute positioned ^4 ^1 ^1 facing ^8.1 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 3 run return 0
execute positioned ^3 ^1 ^3 facing ^6.1 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2 positioned ^ ^0.05 ^-0.7 run function yjcasino:blackjack/insurance
execute positioned ^3 ^1 ^3 facing ^6.1 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 3 run return 0
execute positioned ^0 ^1 ^4 facing ^0.1 ^ ^8 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2 positioned ^ ^0.05 ^-0.7 run function yjcasino:blackjack/insurance
execute positioned ^0 ^1 ^4 facing ^0.1 ^ ^8 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 3 run return 0
execute positioned ^-3 ^1 ^3 facing ^-6.1 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2 positioned ^ ^0.05 ^-0.7 run function yjcasino:blackjack/insurance
execute positioned ^-3 ^1 ^3 facing ^-6.1 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 3 run return 0
execute positioned ^-4 ^1 ^1 facing ^-8.1 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2 positioned ^ ^0.05 ^-0.7 run function yjcasino:blackjack/insurance
execute positioned ^-4 ^1 ^1 facing ^-8.1 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 3 run return 0

# Now everyone's stage is 4, so they are in stage 5.
# Stage 4 (Dealer): Check Blackjack. If blackjack, send all players to Stage 99 and move Dealer to stage 100. Otherwise, continue. Otherwise, take insurance bets.
# So let's generate a card first
execute if score @s yj-stage matches 3 run return run function yjcasino:blackjack/check_blackjack

# Stage 6 (First Player): If blackjack, get paid and move to Stage 100. Otherwise, decide (unless hard 21). Doubling sends to Stage 64. Surrendering sends player from Stage 8 to Stage 100 and removes half of the bet.
# Stage 7-68 (First Player): 0 mod 3: Wait. 1 mod 3: Look at decision and deal card. 2 mod 3: Decide and move to next stage to wait. Hard 21 and standing sends to Stage 60, Busting sends to Stage 70.
# Stage 70: Busted!
scoreboard players set $yj-playing-temp yj-casino-temp 0
execute positioned ^4 ^1 ^1 facing ^8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 6..68 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/act
execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 69 run return run function yjcasino:blackjack/loss
scoreboard players set $yj-playing-temp yj-casino-temp 1
execute positioned ^3 ^1 ^3 facing ^6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 6..68 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/act
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 69 run return run function yjcasino:blackjack/loss
scoreboard players set $yj-playing-temp yj-casino-temp 2
execute positioned ^0 ^1 ^4 facing ^ ^ ^8 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 6..68 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/act
execute positioned ^0 ^1 ^4 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 69 run return run function yjcasino:blackjack/loss
scoreboard players set $yj-playing-temp yj-casino-temp 3
execute positioned ^-3 ^1 ^3 facing ^-6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 6..68 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/act
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 69 run return run function yjcasino:blackjack/loss
scoreboard players set $yj-playing-temp yj-casino-temp 4
execute positioned ^-4 ^1 ^1 facing ^-8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 6..68 positioned ^ ^0.05 ^-0.7 run return run function yjcasino:blackjack/act
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 69 run return run function yjcasino:blackjack/loss

# DOUBLE CASE:
# Stage 74: Get dealt exactly one card.
execute positioned ^4 ^1 ^1 facing ^8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 73 positioned ^-0.2 ^0.07 ^-1 facing ^1 ^ ^ run return run function yjcasino:blackjack/deal_card
execute positioned ^3 ^1 ^3 facing ^6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 73 positioned ^-0.2 ^0.07 ^-1 facing ^1 ^ ^ run return run function yjcasino:blackjack/deal_card
execute positioned ^0 ^1 ^4 facing ^0 ^ ^8 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 73 positioned ^-0.2 ^0.07 ^-1 facing ^1 ^ ^ run return run function yjcasino:blackjack/deal_card
execute positioned ^-3 ^1 ^3 facing ^-6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 73 positioned ^-0.2 ^0.07 ^-1 facing ^1 ^ ^ run return run function yjcasino:blackjack/deal_card
execute positioned ^-4 ^1 ^1 facing ^-8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 73 positioned ^-0.2 ^0.07 ^-1 facing ^1 ^ ^ run return run function yjcasino:blackjack/deal_card

# Time for the dealer to draw
execute if score @s yj-stage matches 4 run return run function yjcasino:blackjack/reveal_hole_card
execute if score @s yj-stage matches 5 run return run function yjcasino:blackjack/dealer_draw

# SPLIT CASE TODO

# STAND CASE
# Stage 75 players: Done with hand. Get paid/lose bet. Go to Stage 100.
scoreboard players operation $yj-temp yj-total = @s yj-total
execute if entity @s[tag=yj-blackjack-ace] if score $yj-temp yj-total matches 0..11 run scoreboard players add $yj-temp yj-total 10
execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 74 run return run function yjcasino:blackjack/check_winner
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 74 run return run function yjcasino:blackjack/check_winner
execute positioned ^0 ^1 ^4 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 74 run return run function yjcasino:blackjack/check_winner
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 74 run return run function yjcasino:blackjack/check_winner
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 74 run return run function yjcasino:blackjack/check_winner

# DEALER BLACKJACK CASE
# Stage 99 (Player): Lose initial bet (or push) and pay out insurance bets
execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 98 run return run function yjcasino:blackjack/loss_from_blackjack
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 98 run return run function yjcasino:blackjack/loss_from_blackjack
execute positioned ^0 ^1 ^4 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 98 run return run function yjcasino:blackjack/loss_from_blackjack
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 98 run return run function yjcasino:blackjack/loss_from_blackjack
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 98 run return run function yjcasino:blackjack/loss_from_blackjack

# COMPLETED!
# Finish game once everything is done after 3 seconds
scoreboard players add @s yj-dealer-time-to-finish 1

execute if score @s yj-dealer-time-to-finish matches 7.. run function yjcasino:bet/reset