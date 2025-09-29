# The owner wins some money depending on responsbility
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-original-bet
# If doubled, double it
$execute if entity @s[tag=yj-blackjack-split$(split)-double] run scoreboard players operation $yj-arg2 yj-casino-var *= $two yj-casino-var

scoreboard players operation @s yj-bet -= $yj-arg2 yj-casino-var

scoreboard players operation $yj-arg2 yj-casino-var *= @s yj-dealer-responsibility
scoreboard players operation $yj-arg1 yj-casino-var = @s yj-id
function yjcasino:change_money

scoreboard players operation $yj-temp yj-id = @s yj-player-id
execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.player.hurt master @s ~ ~ ~

execute store result storage yjcasino:temp final_bet double 1 run scoreboard players get @s yj-bet
function yjcasino:bet/show_bet with storage yjcasino:temp

$scoreboard players set @s yj-blackjack-split$(split)-stage 100