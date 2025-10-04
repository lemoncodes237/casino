scoreboard players operation $yj-temp yj-id = @s yj-id
scoreboard players operation $yj-temp yj-bet = @s yj-bet

execute as @e[type=interaction,tag=yj-bet-spot,tag=yj-bet-spot-used,tag=!yj-bet-spot-bet,distance=..10] if score @s yj-player-id = $yj-temp yj-id run scoreboard players operation $yj-temp yj-dealer-game = @s yj-dealer-game

execute if score $yj-temp yj-dealer-game matches 4 run function yjcasino:bet/game/baccarat