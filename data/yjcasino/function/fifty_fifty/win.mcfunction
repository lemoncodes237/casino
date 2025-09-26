# First figure out full payout
scoreboard players operation $yj-payout yj-casino-temp = @s yj-bet
scoreboard players operation $yj-payout yj-casino-temp *= $hundred yj-casino-var
scoreboard players operation $yj-commission yj-casino-temp = @s yj-bet
scoreboard players operation $yj-commission yj-casino-temp *= @s yj-fifty-fifty-commission
scoreboard players operation $yj-payout yj-casino-temp -= $yj-commission yj-casino-temp
# $yj-payout yj-casino-temp is now the payout in cents.

# The owner loses some money depending on responsbility
scoreboard players operation $yj-arg2 yj-casino-var = $yj-payout yj-casino-temp
scoreboard players operation $yj-arg2 yj-casino-var *= $negation yj-casino-var
scoreboard players operation $yj-arg2 yj-casino-var *= @s yj-dealer-responsibility
scoreboard players operation $yj-arg2 yj-casino-var /= $hundred yj-casino-var
scoreboard players operation $yj-arg1 yj-casino-var = @s yj-id
function yjcasino:change_money

scoreboard players operation @s yj-bet *= $hundred yj-casino-var
scoreboard players operation @s yj-bet += $yj-payout yj-casino-temp
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-bet
scoreboard players operation $yj-arg1 yj-casino-var = @s yj-player-id
function yjcasino:change_money

execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

execute store result storage yjcasino:temp final_bet double 0.01 run scoreboard players get @s yj-bet
function yjcasino:bet/show_bet with storage yjcasino:temp