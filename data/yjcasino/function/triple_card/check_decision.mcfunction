scoreboard players set $yj-temp yj-casino-temp 1
scoreboard players operation $yj-temp yj-id = @s yj-id

execute if score @s yj-triple-card-decision matches 2 as @e[type=interaction,tag=yj-bet-spot-in-play] if score @s yj-dealer-game matches 5 if score @s yj-stage matches 4 if score @s yj-player-id = $yj-temp yj-id at @s run function yjcasino:triple_card/loss

execute if score @s yj-triple-card-decision matches 1 as @e[type=interaction,tag=yj-bet-spot-in-play] if score @s yj-dealer-game matches 5 if score @s yj-stage matches 4 if score @s yj-player-id = $yj-temp yj-id at @s run function yjcasino:triple_card/play

scoreboard players set @s yj-triple-card-decision 0