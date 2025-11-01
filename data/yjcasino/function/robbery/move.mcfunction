#return 0

# Stage 0: Deal first card to everyone
execute positioned ^4 ^1 ^1 facing ^8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/deal_card
execute positioned ^3 ^1 ^3 facing ^6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/deal_card
execute positioned ^0 ^1 ^4 facing ^0 ^ ^8 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/deal_card
execute positioned ^-3 ^1 ^3 facing ^-6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/deal_card
execute positioned ^-4 ^1 ^1 facing ^-8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/deal_card

execute if score @s yj-stage matches 0 positioned ^ ^1.01 ^1.8 facing ^ ^ ^3 run return run function yjcasino:robbery/deal_card

# Stage 1: Face card dealt first, get the Save card
execute positioned ^4 ^1 ^1 facing ^8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/deal_save_card
execute positioned ^3 ^1 ^3 facing ^6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/deal_save_card
execute positioned ^0 ^1 ^4 facing ^0 ^ ^8 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/deal_save_card
execute positioned ^-3 ^1 ^3 facing ^-6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/deal_save_card
execute positioned ^-4 ^1 ^1 facing ^-8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 1 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/deal_save_card

execute if score @s yj-stage matches 1 positioned ^ ^1.01 ^1.8 facing ^ ^ ^3 run return run function yjcasino:robbery/deal_save_card

# Did Dealer get instantly caught?
execute if score @s yj-stage matches 50 positioned ^4 ^1 ^1 facing ^8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0..99 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/instant_catch
execute if score @s yj-stage matches 50 positioned ^3 ^1 ^3 facing ^6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0..99 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/instant_catch
execute if score @s yj-stage matches 50 positioned ^0 ^1 ^4 facing ^0 ^ ^8 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0..99 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/instant_catch
execute if score @s yj-stage matches 50 positioned ^-3 ^1 ^3 facing ^-6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0..99 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/instant_catch
execute if score @s yj-stage matches 50 positioned ^-4 ^1 ^1 facing ^-8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 0..99 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/instant_catch

execute if score @s yj-stage matches 50 run scoreboard players set @s yj-stage 100

# Stage 2-72: Actions
scoreboard players set $yj-playing-temp yj-casino-temp 0
execute positioned ^4 ^1 ^1 facing ^8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2..72 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/act
execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 99 run return run function yjcasino:robbery/loss

scoreboard players set $yj-playing-temp yj-casino-temp 1
execute positioned ^3 ^1 ^3 facing ^6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2..72 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/act
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 99 run return run function yjcasino:robbery/loss

scoreboard players set $yj-playing-temp yj-casino-temp 2
execute positioned ^0 ^1 ^4 facing ^ ^ ^8 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2..72 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/act
execute positioned ^0 ^1 ^4 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 99 run return run function yjcasino:robbery/loss

scoreboard players set $yj-playing-temp yj-casino-temp 3
execute positioned ^-3 ^1 ^3 facing ^-6 ^ ^6 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2..72 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/act
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 99 run return run function yjcasino:robbery/loss

scoreboard players set $yj-playing-temp yj-casino-temp 4
execute positioned ^-4 ^1 ^1 facing ^-8 ^ ^2 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 2..72 positioned ^ ^0.01 ^-0.8 run return run function yjcasino:robbery/act
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 99 run return run function yjcasino:robbery/loss

# Time for the dealer to draw
execute if score @s yj-stage matches 2..40 run return run function yjcasino:robbery/dealer_draw

# Check Winner
scoreboard players operation $yj-temp yj-total = @s yj-total
execute if entity @s[tag=yj-robbery-ace] if score $yj-temp yj-total matches 0..11 run scoreboard players add $yj-temp yj-total 10
execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 90 run return run function yjcasino:robbery/check_winner
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 90 run return run function yjcasino:robbery/check_winner
execute positioned ^0 ^1 ^4 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 90 run return run function yjcasino:robbery/check_winner
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 90 run return run function yjcasino:robbery/check_winner
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] if score @s yj-stage matches 90 run return run function yjcasino:robbery/check_winner

# Finish game once everything is done after 3 seconds
scoreboard players add @s yj-dealer-time-to-finish 1

execute if score @s yj-dealer-time-to-finish matches 6.. run function yjcasino:bet/reset