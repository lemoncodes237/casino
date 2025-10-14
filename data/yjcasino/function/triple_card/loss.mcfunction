# The owner wins some money depending on responsbility
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-original-bet
scoreboard players operation $yj-arg2 yj-casino-var *= @s yj-dealer-responsibility
# Whether just the ante or the play is taken depends.
scoreboard players operation $yj-arg2 yj-casino-var *= $yj-temp yj-casino-temp
scoreboard players operation $yj-arg1 yj-casino-var = @s yj-id
function yjcasino:change_money

scoreboard players operation $yj-temp yj-id = @s yj-player-id
execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.player.hurt master @s ~ ~ ~

scoreboard players operation @s yj-bet -= @s yj-original-bet
execute if score $yj-temp yj-casino-temp matches 2 run scoreboard players set @s yj-bet 0
execute store result storage yjcasnio:temp final_bet int 1 run scoreboard players get @s yj-bet
function yjcasino:bet/show_bet with storage yjcasino:temp

scoreboard players set @s yj-stage 100