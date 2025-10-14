# The owner loses some money depending on responsbility
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-bet
scoreboard players operation $yj-arg2 yj-casino-var *= @s yj-dealer-responsibility
scoreboard players operation $yj-arg2 yj-casino-var *= $negation yj-casino-var

# If no qualify, only lose half
execute if score $yj-qualify yj-casino-temp matches 0 run scoreboard players operation $yj-arg2 yj-casino-var /= $two yj-casino-var

scoreboard players operation $yj-arg1 yj-casino-var = @s yj-id
function yjcasino:change_money

execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-player-id
function yjcasino:money/get_balance_100 with storage yjcasino:balance

scoreboard players operation @s yj-bet += @s yj-original-bet
# If qualify, paid on play bet too
execute if score $yj-qualify yj-casino-temp matches 1 run scoreboard players operation @s yj-bet += @s yj-original-bet

scoreboard players operation @s yj-bet *= $hundred yj-casino-var
scoreboard players operation @s yj-money += @s yj-bet

execute store result storage yjcasino:balance var double 1 run scoreboard players get @s yj-money
scoreboard players operation $yj-temp yj-id = @s yj-player-id
function yjcasino:money/set_balance with storage yjcasino:balance

execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

execute store result storage yjcasino:temp final_bet double 0.01 run scoreboard players get @s yj-bet
function yjcasino:bet/show_bet with storage yjcasino:temp