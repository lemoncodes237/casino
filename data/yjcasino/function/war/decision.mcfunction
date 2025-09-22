scoreboard players operation $yj-temp yj-id = @s yj-id

execute if score @s yj-war-decision matches 1 as @e[type=interaction,tag=yj-bet-spot-in-play] at @s if score @s yj-dealer-game matches 2 if score @s yj-stage matches 3 if score @s yj-player-id = $yj-temp yj-id run function yjcasino:war/go_to_war
execute if score @s yj-war-decision matches 2 as @e[type=interaction,tag=yj-bet-spot-in-play] at @s if score @s yj-dealer-game matches 2 if score @s yj-stage matches 3 if score @s yj-player-id = $yj-temp yj-id run function yjcasino:war/surrender

scoreboard players set @s yj-war-decision 0