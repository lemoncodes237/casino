tag @s remove yj-blackjack-awaiting

scoreboard players set @s yj-stage 99

# The owner wins some money depending on responsbility
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-bet
scoreboard players operation $yj-arg2 yj-casino-var *= @s yj-dealer-responsibility
scoreboard players operation $yj-arg2 yj-casino-var *= $fifty yj-casino-var
scoreboard players operation $yj-arg2 yj-casino-var /= $hundred yj-casino-var
scoreboard players operation $yj-arg1 yj-casino-var = @s yj-id
function yjcasino:change_money

scoreboard players operation $yj-arg1 yj-casino-var = @s yj-player-id
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-bet
scoreboard players operation $yj-arg2 yj-casino-var *= $fifty yj-casino-var
function yjcasino:change_money

scoreboard players operation $yj-temp yj-id = @s yj-player-id
execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.player.hurt master @s ~ ~ ~

execute store result storage yjcasino:temp final_bet double 0.01 run scoreboard players get $yj-arg2 yj-casino-var
function yjcasino:bet/show_bet with storage yjcasino:temp