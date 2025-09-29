execute if score @s yj-stage matches 0 positioned ^ ^1 ^2.3 facing ^ ^ ^3 run return run function yjcasino:fifty_fifty/deal_card

# After the card is dealt
scoreboard players operation $yj-temp yj-total = @s yj-total

# Now payouts!
execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 run return run function yjcasino:fifty_fifty/check_winner
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 run return run function yjcasino:fifty_fifty/check_winner
execute positioned ^0 ^1 ^4 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 run return run function yjcasino:fifty_fifty/check_winner
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 run return run function yjcasino:fifty_fifty/check_winner
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 run return run function yjcasino:fifty_fifty/check_winner

# Finish game once everything is done after 3 seconds
scoreboard players add @s yj-dealer-time-to-finish 1

execute if score @s yj-dealer-time-to-finish matches 6.. run function yjcasino:bet/reset