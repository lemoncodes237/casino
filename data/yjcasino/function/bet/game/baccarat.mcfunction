scoreboard players operation @s yj-bet = @s yj-special-bet
scoreboard players operation @s yj-bet /= $ten yj-casino-var

# Figure out what they bet on
scoreboard players operation $yj-bet yj-casino-temp = @s yj-special-bet
scoreboard players operation $yj-bet yj-casino-temp %= $ten yj-casino-var

execute if score $yj-bet yj-casino-temp matches 1 run data modify storage yjcasino:bet extra set value "Banker\n"
execute if score $yj-bet yj-casino-temp matches 2 run data modify storage yjcasino:bet extra set value "Player\n"
execute if score $yj-bet yj-casino-temp matches 3 run data modify storage yjcasino:bet extra set value "Tie\n"

execute as @e[type=interaction,tag=yj-bet-spot,tag=yj-bet-spot-used,tag=!yj-bet-spot-bet,distance=..10] if score @s yj-player-id = $yj-temp yj-id run scoreboard players operation @s yj-bet-type = $yj-bet yj-casino-temp

function yjcasino:bet/bet_finish