execute at @s positioned ^ ^ ^2 if score @s yj-id = @e[type=villager,tag=yj-dealer,distance=..2,sort=nearest,limit=1] yj-id run dialog show @s yjcasino:dealer

execute at @s positioned ^ ^ ^2 unless score @s yj-id = @e[type=villager,tag=yj-dealer,distance=..2,sort=nearest,limit=1] yj-id run tellraw @s "You can only modify your own dealer!"