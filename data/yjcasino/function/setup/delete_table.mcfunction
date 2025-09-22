fill ^4 ^1 ^ ^-4 ^1 ^4 air
fill ^4 ^ ^ ^-4 ^0 ^4 air
execute positioned ^ ^1 ^4 run kill @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest]
execute positioned ^3 ^1 ^3 run kill @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest]
execute positioned ^-3 ^1 ^3 run kill @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest]
execute positioned ^-4 ^1 ^1 run kill @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest]
execute positioned ^4 ^1 ^1 run kill @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest]

execute positioned ^ ^1.2 ^4 run kill @e[type=text_display,tag=yj-bet-display,distance=..1,limit=1,sort=nearest]
execute positioned ^3 ^1.2 ^3 run kill @e[type=text_display,tag=yj-bet-display,distance=..1,limit=1,sort=nearest]
execute positioned ^-3 ^1.2 ^3 run kill @e[type=text_display,tag=yj-bet-display,distance=..1,limit=1,sort=nearest]
execute positioned ^-4 ^1.2 ^1 run kill @e[type=text_display,tag=yj-bet-display,distance=..1,limit=1,sort=nearest]
execute positioned ^4 ^1.2 ^1 run kill @e[type=text_display,tag=yj-bet-display,distance=..1,limit=1,sort=nearest]