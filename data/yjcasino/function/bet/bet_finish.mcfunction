scoreboard players operation $yj-temp yj-id = @s yj-id
scoreboard players operation $yj-temp yj-bet = @s yj-bet
scoreboard players operation @s yj-casino-last-bet = @s yj-bet
scoreboard players set @s yj-bet -1

execute as @e[type=interaction,tag=yj-bet-spot-in-play,tag=yj-bet-spot,tag=!yj-bet-spot-bet,distance=..10] if score @s yj-id = $yj-temp yj-id run return run tellraw @s "Bet registered too late. Please wait for this game to finish first."

execute as @e[type=interaction,tag=yj-bet-spot,tag=yj-bet-spot-used,tag=!yj-bet-spot-bet,distance=..10] if score @s yj-id = $yj-temp yj-id run scoreboard players operation @s yj-bet = $yj-temp yj-bet

execute as @e[type=interaction,tag=yj-bet-spot,tag=yj-bet-spot-used,tag=!yj-bet-spot-bet,distance=..10] at @s positioned ^ ^ ^4 as @e[type=villager,tag=yj-dealer,distance=..1,sort=nearest,limit=1] run function yjcasino:bet/show_dealer

execute store result storage yjcasino:bet final_bet int 1 run scoreboard players get $yj-temp yj-bet
execute as @e[type=interaction,tag=yj-bet-spot,tag=yj-bet-spot-used,tag=!yj-bet-spot-bet,distance=..10] at @s positioned ~ ~0.2 ~ run function yjcasino:bet/show_bet with storage yjcasino:bet

tag @e[type=interaction,tag=yj-bet-spot,tag=yj-bet-spot-used,tag=!yj-bet-spot-bet,distance=..10] add yj-bet-spot-bet