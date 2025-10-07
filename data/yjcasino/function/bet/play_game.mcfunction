execute positioned ^ ^1 ^4 as @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] run function yjcasino:bet/begin_bet_spot
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] run function yjcasino:bet/begin_bet_spot
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] run function yjcasino:bet/begin_bet_spot
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] run function yjcasino:bet/begin_bet_spot
execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] run function yjcasino:bet/begin_bet_spot

scoreboard players set @s yj-cards 0
scoreboard players set @s yj-total 0
scoreboard players set @s yj-cards-banker 0
scoreboard players set @s yj-total-banker 0
scoreboard players set @s yj-stage 0
scoreboard players set @s yj-dealer-time-to-finish 0
tag @s remove yj-blackjack-ace
tag @s add yj-dealer-playing

scoreboard players set @s yj-card1 -1
scoreboard players set @s yj-card2 -1
scoreboard players set @s yj-card3 -1