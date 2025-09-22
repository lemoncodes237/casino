execute positioned ^ ^1 ^4 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] add yj-bet-spot-in-play
execute positioned ^3 ^1 ^3 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] add yj-bet-spot-in-play
execute positioned ^-3 ^1 ^3 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] add yj-bet-spot-in-play
execute positioned ^-4 ^1 ^1 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] add yj-bet-spot-in-play
execute positioned ^4 ^1 ^1 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] add yj-bet-spot-in-play

execute positioned ^ ^1 ^4 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-cards 0
execute positioned ^3 ^1 ^3 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-cards 0
execute positioned ^-3 ^1 ^3 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-cards 0
execute positioned ^-4 ^1 ^1 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-cards 0
execute positioned ^4 ^1 ^1 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-cards 0

execute positioned ^ ^1 ^4 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-total 0
execute positioned ^3 ^1 ^3 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-total 0
execute positioned ^-3 ^1 ^3 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-total 0
execute positioned ^-4 ^1 ^1 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-total 0
execute positioned ^4 ^1 ^1 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-total 0

execute positioned ^ ^1 ^4 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-stage 0
execute positioned ^3 ^1 ^3 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-stage 0
execute positioned ^-3 ^1 ^3 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-stage 0
execute positioned ^-4 ^1 ^1 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-stage 0
execute positioned ^4 ^1 ^1 run scoreboard players set @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-stage 0

scoreboard players set @s yj-cards 0
scoreboard players set @s yj-total 0
scoreboard players set @s yj-stage 0
scoreboard players set @s yj-dealer-time-to-finish 0
tag @s add yj-dealer-playing