execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-id
function yjcasino:money/get_balance with storage yjcasino:balance

scoreboard players operation $yj-temp yj-money = @s yj-money
execute if score @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-dealer-minbet > $yj-temp yj-money run return run tellraw @s ["You don't have enough money to bet at this table! Minimum Bet: $",{"score":{"objective":"yj-dealer-minbet","name":"@e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest]"}}]

# If the owner of the table has responsibility and they are broke, then stop more betting
execute store result storage yjcasino:balance id int 1 run scoreboard players get @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-id
function yjcasino:money/get_balance with storage yjcasino:balance
execute if score @s yj-money matches ..0 if score @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-dealer-responsibility matches 1.. run return run tellraw @s "The owner of this table has no money, so you cannot bet at this table."

execute if entity @e[type=interaction,tag=yj-bet-spot-used,distance=..1,limit=1,sort=nearest] run return run tellraw @s "Someone is already betting on that spot!"
execute if entity @e[type=interaction,tag=yj-bet-spot-in-play,distance=..1,limit=1,sort=nearest] run return run tellraw @s "Please wait for this game to finish first!"
execute as @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] run scoreboard players operation $yj-temp yj-game-id = @s yj-game-id
execute if score @s yj-game-id matches 1.. unless score @s yj-game-id = $yj-temp yj-game-id run return run tellraw @s "You cannot bet at more than two games at once!"

tag @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] add yj-bet-spot-used

# If there was a last bet, save it!
execute unless score @s yj-casino-last-bet matches -2147483648..2147483647 run scoreboard players set @s yj-casino-last-bet 0
scoreboard players operation $yj-temp yj-casino-var = @s yj-casino-last-bet

scoreboard players operation @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] yj-player-id = @s yj-id

execute as @e[type=interaction,tag=yj-bet-spot,distance=..1,limit=1,sort=nearest] run function yjcasino:bet/get_data

execute if entity @e[type=interaction,scores={yj-dealer-game=1},tag=yj-bet-spot,distance=..1] run function yjcasino:fifty_fifty/bet with storage yjcasino:bet
execute if entity @e[type=interaction,scores={yj-dealer-game=2},tag=yj-bet-spot,distance=..1] run function yjcasino:war/bet with storage yjcasino:bet
execute if entity @e[type=interaction,scores={yj-dealer-game=3},tag=yj-bet-spot,distance=..1] run function yjcasino:blackjack/begin_bet
execute if entity @e[type=interaction,scores={yj-dealer-game=4},tag=yj-bet-spot,distance=..1] run function yjcasino:baccarat/begin_bet
execute if entity @e[type=interaction,scores={yj-dealer-game=5},tag=yj-bet-spot,distance=..1] run function yjcasino:triple_card/begin_bet