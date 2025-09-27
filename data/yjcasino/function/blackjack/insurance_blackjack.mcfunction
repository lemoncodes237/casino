# Kill the insurance display
execute at @s positioned ^ ^0.15 ^1 run kill @e[type=text_display,tag=yj-insurance-display,distance=..1,limit=1,sort=nearest]

execute if entity @s[tag=yj-blackjack-ace] if score @s yj-total matches 11 run return run function yjcasino:blackjack/double_blackjack

execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-player-id
function yjcasino:money/get_balance_100 with storage yjcasino:balance

scoreboard players operation @s yj-bet *= $onefifty yj-casino-var
scoreboard players operation @s yj-money += @s yj-bet

execute store result storage yjcasino:balance var double 1 run scoreboard players get @s yj-money
scoreboard players operation $yj-temp yj-id = @s yj-player-id
function yjcasino:money/set_balance with storage yjcasino:balance

execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

execute store result storage yjcasino:temp final_bet double 0.01 run scoreboard players get @s yj-bet
function yjcasino:bet/show_bet with storage yjcasino:temp