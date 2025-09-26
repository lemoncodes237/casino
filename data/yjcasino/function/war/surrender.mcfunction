# The owner wins some money depending on responsbility
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-bet
scoreboard players operation $yj-arg2 yj-casino-var *= @s yj-dealer-responsibility
scoreboard players operation $yj-arg2 yj-casino-var /= $two yj-casino-var
scoreboard players operation $yj-arg1 yj-casino-var = @s yj-id
function yjcasino:change_money

scoreboard players operation @s yj-bet *= $fifty yj-casino-var
scoreboard players operation @s yj-money += @s yj-bet

execute store result storage yjcasino:balance var double 1 run scoreboard players get @s yj-money
scoreboard players operation $yj-temp yj-id = @s yj-player-id
function yjcasino:money/set_balance with storage yjcasino:balance

execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.player.hurt master @s ~ ~ ~

execute store result storage yjcasino:temp final_bet double 0.01 run scoreboard players get @s yj-bet
function yjcasino:bet/show_bet with storage yjcasino:temp

# End of action
scoreboard players set @s yj-stage 100