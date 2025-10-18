function yjcasino:triple_card/strength {player:"player"}

scoreboard players set $yj-bonus yj-casino-temp 0

# Pay out ante bonus
execute if score $yj-player-strength yj-casino-temp matches 3 run scoreboard players set $yj-bonus yj-casino-temp 1
execute if score $yj-player-strength yj-casino-temp matches 4 run scoreboard players set $yj-bonus yj-casino-temp 4
execute if score $yj-player-strength yj-casino-temp matches 5 run scoreboard players set $yj-bonus yj-casino-temp 5

scoreboard players set $yj-bonus yj-casino-temp 1
execute if score $yj-bonus yj-casino-temp matches 0 run return 0

# The owner loses some money depending on responsbility
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-original-bet
scoreboard players operation $yj-arg2 yj-casino-var *= @s yj-dealer-responsibility
scoreboard players operation $yj-arg2 yj-casino-var *= $yj-bonus yj-casino-temp
scoreboard players operation $yj-arg2 yj-casino-var *= $negation yj-casino-var

scoreboard players operation $yj-arg1 yj-casino-var = @s yj-id
function yjcasino:change_money

scoreboard players operation $yj-arg2 yj-casino-var = @s yj-original-bet
scoreboard players operation $yj-arg2 yj-casino-var *= $yj-bonus yj-casino-temp
scoreboard players operation $yj-arg2 yj-casino-var *= $hundred yj-casino-var

scoreboard players operation $yj-arg1 yj-casino-var = @s yj-player-id
function yjcasino:change_money

scoreboard players operation $yj-temp yj-id = @s yj-player-id
execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.player.levelup master @s ~ ~ ~

scoreboard players operation $yj-arg2 yj-casino-var = @s yj-original-bet
scoreboard players operation $yj-arg2 yj-casino-var *= $yj-bonus yj-casino-temp
execute as @a if score @s yj-id = $yj-temp yj-id run tellraw @s ["You were paid $",{"score":{"name":"$yj-arg2","objective":"yj-casino-var"}}," for your Ante Bonus!"]