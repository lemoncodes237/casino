# The owner loses some money depending on responsbility
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-bet
scoreboard players operation $yj-arg2 yj-casino-var *= @s yj-dealer-responsibility
scoreboard players operation $yj-arg2 yj-casino-var *= $negation yj-casino-var
scoreboard players operation $yj-arg1 yj-casino-var = @s yj-id

# 1-to-2 if banker wins with 6
execute if score $yj-temp yj-total-banker matches 6 run scoreboard players operation $yj-arg2 yj-casino-var /= $two yj-casino-var

function yjcasino:change_money

execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-player-id
function yjcasino:money/get_balance_100 with storage yjcasino:balance

execute unless score $yj-temp yj-total-banker matches 6 run scoreboard players operation @s yj-bet *= $twohundred yj-casino-var
execute if score $yj-temp yj-total-banker matches 6 run scoreboard players operation @s yj-bet *= $onefifty yj-casino-var
scoreboard players operation @s yj-money += @s yj-bet

execute store result storage yjcasino:balance var double 1 run scoreboard players get @s yj-money
scoreboard players operation $yj-temp yj-id = @s yj-player-id
function yjcasino:money/set_balance with storage yjcasino:balance

execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

execute store result storage yjcasino:temp final_bet double 0.01 run scoreboard players get @s yj-bet
function yjcasino:bet/show_bet with storage yjcasino:temp