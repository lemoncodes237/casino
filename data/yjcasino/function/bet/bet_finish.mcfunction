scoreboard players operation $yj-temp yj-id = @s yj-id
scoreboard players operation $yj-temp yj-bet = @s yj-bet
scoreboard players operation @s yj-casino-last-bet = @s yj-bet

execute as @e[type=interaction,tag=yj-bet-spot-in-play,tag=yj-bet-spot,tag=!yj-bet-spot-bet,distance=..10] if score @s yj-player-id = $yj-temp yj-id as @a if score @s yj-id = $yj-temp yj-id run tellraw @s "Bet registered too late. Please wait for this game to finish first."

execute as @e[type=interaction,tag=yj-bet-spot,tag=yj-bet-spot-used,tag=!yj-bet-spot-bet,distance=..10] if score @s yj-player-id = $yj-temp yj-id run scoreboard players operation @s yj-bet = $yj-temp yj-bet
execute as @e[type=interaction,tag=yj-bet-spot,tag=yj-bet-spot-used,tag=!yj-bet-spot-bet,distance=..10] if score @s yj-player-id = $yj-temp yj-id run scoreboard players operation @s yj-original-bet = $yj-temp yj-bet

execute as @e[type=interaction,tag=yj-bet-spot,tag=yj-bet-spot-used,tag=!yj-bet-spot-bet,distance=..10] if score @s yj-player-id = $yj-temp yj-id at @s positioned ^ ^ ^4 as @e[type=villager,tag=yj-dealer,distance=..1,sort=nearest,limit=1] run function yjcasino:bet/show_dealer

execute store result storage yjcasino:bet final_bet double 1 run scoreboard players get $yj-temp yj-bet

execute unless score @s yj-special-bet matches 1.. as @e[type=interaction,tag=yj-bet-spot,tag=yj-bet-spot-used,tag=!yj-bet-spot-bet,distance=..10] at @s positioned ~ ~0.2 ~ if score @s yj-player-id = $yj-temp yj-id run function yjcasino:bet/show_bet with storage yjcasino:bet
execute if score @s yj-special-bet matches 1.. as @e[type=interaction,tag=yj-bet-spot,tag=yj-bet-spot-used,tag=!yj-bet-spot-bet,distance=..10] at @s positioned ~ ~0.2 ~ if score @s yj-player-id = $yj-temp yj-id run function yjcasino:bet/show_bet_special with storage yjcasino:bet

execute as @e[type=interaction,tag=yj-bet-spot,tag=yj-bet-spot-used,tag=!yj-bet-spot-bet,distance=..10] if score @s yj-player-id = $yj-temp yj-id run tag @s add yj-bet-spot-bet

execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-id
function yjcasino:money/get_balance_100 with storage yjcasino:balance
scoreboard players operation @s yj-bet *= $hundred yj-casino-var
scoreboard players operation @s yj-money -= @s yj-bet

execute store result storage yjcasino:balance var double 1 run scoreboard players get @s yj-money
function yjcasino:money/set_balance with storage yjcasino:balance

scoreboard players set @s yj-bet -1
scoreboard players set @s yj-special-bet -1