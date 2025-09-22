execute positioned ^ ^1 ^4 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-in-play
execute positioned ^3 ^1 ^3 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-in-play
execute positioned ^-3 ^1 ^3 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-in-play
execute positioned ^-4 ^1 ^1 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-in-play
execute positioned ^4 ^1 ^1 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-in-play

execute positioned ^ ^1 ^4 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-ready
execute positioned ^3 ^1 ^3 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-ready
execute positioned ^-3 ^1 ^3 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-ready
execute positioned ^-4 ^1 ^1 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-ready
execute positioned ^4 ^1 ^1 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-ready

execute positioned ^ ^1 ^4 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-used
execute positioned ^3 ^1 ^3 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-used
execute positioned ^-3 ^1 ^3 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-used
execute positioned ^-4 ^1 ^1 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-used
execute positioned ^4 ^1 ^1 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-used

execute positioned ^ ^1 ^4 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-bet
execute positioned ^3 ^1 ^3 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-bet
execute positioned ^-3 ^1 ^3 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-bet
execute positioned ^-4 ^1 ^1 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-bet
execute positioned ^4 ^1 ^1 run tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] remove yj-bet-spot-bet

execute positioned ^ ^1 ^4 run function yjcasino:bet/delete_bet
execute positioned ^3 ^1 ^3 run function yjcasino:bet/delete_bet
execute positioned ^-3 ^1 ^3 run function yjcasino:bet/delete_bet
execute positioned ^-4 ^1 ^1 run function yjcasino:bet/delete_bet
execute positioned ^4 ^1 ^1 run function yjcasino:bet/delete_bet

# Delete all cards
execute positioned ^ ^1 ^2.5 run kill @e[type=item_display,distance=..3]
execute positioned ^2 ^1 ^2 run kill @e[type=item_display,distance=..3]
execute positioned ^-2 ^1 ^2 run kill @e[type=item_display,distance=..3]
execute positioned ^-3 ^1 ^0.5 run kill @e[type=item_display,distance=..3]
execute positioned ^3 ^1 ^0.5 run kill @e[type=item_display,distance=..3]
execute positioned ^ ^1 ^1.5 run kill @e[type=item_display,distance=..2]

tag @s remove yj-dealer-playing
tag @s remove yj-dealer-ready