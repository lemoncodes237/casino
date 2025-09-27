execute store result score @s yj-hole-card run random value 0..12
scoreboard players add @s yj-stage 1

# Check both possible blackjacks
execute if score @s yj-total matches 10 if score @s yj-hole-card matches 0 run return run function yjcasino:blackjack/dealer_blackjack
execute if score @s yj-total matches 1 if score @s yj-hole-card matches 9..12 run return run function yjcasino:blackjack/dealer_blackjack

# Now take all insurance bets
execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] at @s run function yjcasino:blackjack/lose_insurance
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] at @s run function yjcasino:blackjack/lose_insurance
execute positioned ^0 ^1 ^4 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] at @s run function yjcasino:blackjack/lose_insurance
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] at @s run function yjcasino:blackjack/lose_insurance
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] at @s run function yjcasino:blackjack/lose_insurance