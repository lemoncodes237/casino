execute if score $yj-temp yj-money >= @s yj-dealer-maxbet run scoreboard players operation $yj-temp yj-money = @s yj-dealer-maxbet

execute store result storage yjcasino:bet minbet int 1 run scoreboard players get @s yj-dealer-minbet
execute store result storage yjcasino:bet maxbet int 1 run scoreboard players get $yj-temp yj-money

execute if score $yj-temp yj-casino-var < @s yj-dealer-minbet run scoreboard players operation $yj-temp yj-casino-var = @s yj-dealer-minbet
execute if score $yj-temp yj-casino-var > @s yj-dealer-maxbet run scoreboard players operation $yj-temp yj-casino-var = @s yj-dealer-minbet
execute if score $yj-temp yj-casino-var > $yj-temp yj-money run scoreboard players operation $yj-temp yj-casino-var = @s yj-dealer-minbet
execute store result storage yjcasino:bet lastbet int 1 run scoreboard players get $yj-temp yj-casino-var

data modify storage yjcasino:bet betstr set value "$(bet)"