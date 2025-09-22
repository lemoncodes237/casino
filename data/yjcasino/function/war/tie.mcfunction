execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-player-id
function yjcasino:money/get_balance_100 with storage yjcasino:balance

scoreboard players operation @s yj-casino-temp = @s yj-bet
scoreboard players operation @s yj-casino-temp *= $hundred yj-casino-var

scoreboard players operation $yj-temp yj-player-id = @s yj-player-id

# Do you even have enough money to double down?
execute if score @s yj-money < @s yj-casino-temp as @a if score @s yj-id = $yj-temp yj-player-id run tellraw @s "You do not have enough money to double down, so you automatically surrender."
execute if score @s yj-money < @s yj-casino-temp run return run function yjcasino:war/surrender

execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.vindicator.ambient master @s ~ ~ ~

# One more step to go
scoreboard players set @s yj-stage 2