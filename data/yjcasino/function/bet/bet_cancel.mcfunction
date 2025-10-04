scoreboard players operation $yj-temp yj-id = @s yj-id
execute as @e[type=interaction,tag=yj-bet-spot,tag=yj-bet-spot-used,tag=!yj-bet-spot-bet,distance=..10] if score @s yj-player-id = $yj-temp yj-id run tag @s remove yj-bet-spot-used
scoreboard players set @s yj-bet -1
scoreboard players set @s yj-special-bet -1