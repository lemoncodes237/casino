execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-player-id
function yjcasino:money/get_balance_100 with storage yjcasino:balance

scoreboard players operation @s yj-casino-temp = @s yj-bet
scoreboard players operation @s yj-casino-temp *= $hundred yj-casino-var
scoreboard players operation @s yj-money -= @s yj-casino-temp
scoreboard players operation @s yj-casino-temp *= $two yj-casino-var
execute store result storage yjcasino:temp final_bet double 0.01 run scoreboard players get @s yj-casino-temp

execute store result storage yjcasino:balance var double 1 run scoreboard players get @s yj-money
scoreboard players operation $yj-temp yj-id = @s yj-player-id
function yjcasino:money/set_balance with storage yjcasino:balance

execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.vindicator.hurt master @s ~ ~ ~

function yjcasino:bet/show_bet with storage yjcasino:temp

scoreboard players add @s yj-stage 1
# Alert the dealer
execute at @s positioned ^ ^ ^4 as @e[type=villager,tag=yj-dealer,distance=..1,sort=nearest,limit=1] run scoreboard players set @s yj-stage 3