# If blackjack, send all players to stage 99 and move Dealer to stage 100.
scoreboard players set @s yj-stage 99
execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] run scoreboard players set @s yj-stage 98
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] run scoreboard players set @s yj-stage 98
execute positioned ^0 ^1 ^4 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] run scoreboard players set @s yj-stage 98
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] run scoreboard players set @s yj-stage 98
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] run scoreboard players set @s yj-stage 98

# Deal the blackjack
scoreboard players operation $yj-arg1 yj-casino-var = @s yj-hole-card
execute positioned ^0.1 ^1 ^2.3 facing ^ ^ ^3 run function yjcasino:card/deal_specific_card