# To always be able to identify who is modifying a dealer, only one player can do it at a time
execute if entity @a[tag=making-dealer] run return run tellraw @s "Please wait until another player is done modifying their dealer!"

execute at @s positioned ^ ^ ^2 if score @s yj-id = @e[type=villager,tag=yj-dealer,distance=..2,sort=nearest,limit=1] yj-id run tag @s add making-dealer
execute at @s positioned ^ ^ ^2 if score @s yj-id = @e[type=villager,tag=yj-dealer,distance=..2,sort=nearest,limit=1] yj-id run dialog show @s yjcasino:dealer

execute at @s positioned ^ ^ ^2 unless score @s yj-id = @e[type=villager,tag=yj-dealer,distance=..2,sort=nearest,limit=1] yj-id run tellraw @s "You can only modify your own dealer!"