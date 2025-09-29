# The owner wins some money depending on responsbility
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-original-bet
# If doubled, double it
$execute if entity @s[tag=yj-blackjack-split$(split)-double] run scoreboard players operation $yj-arg2 yj-casino-var *= $two yj-casino-var

scoreboard players operation $yj-arg2 yj-casino-var *= $hundred yj-casino-var
scoreboard players operation $yj-arg1 yj-casino-var = @s yj-player-id
function yjcasino:change_money

execute as @a if score @s yj-id = $yj-arg1 yj-casino-var at @s run playsound entity.player.attack.sweep master @s ~ ~ ~

$scoreboard players set @s yj-blackjack-split$(split)-stage 100