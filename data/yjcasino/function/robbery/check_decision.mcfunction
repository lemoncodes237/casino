execute if score @s yj-robbery-decision matches 1 as @e[type=interaction,tag=yj-bet-spot-in-play,tag=yj-robbery-awaiting] at @s if score @s yj-dealer-game matches 6 if score @s yj-player-id = $yj-temp yj-id run function yjcasino:robbery/steal
execute if score @s yj-robbery-decision matches 2 as @e[type=interaction,tag=yj-bet-spot-in-play,tag=yj-robbery-awaiting] at @s if score @s yj-dealer-game matches 6 if score @s yj-player-id = $yj-temp yj-id run function yjcasino:robbery/leave

scoreboard players set @s yj-robbery-decision 0