execute if score $yj-debug-time yj-casino-var matches ..0 run return run tellraw @s "You cannot debug this soon after another debug!"
scoreboard players set $yj-debug-time yj-casino-var -72000

execute as @e[type=interaction,tag=yj-bet-spot-bet] run function yjcasino:give_back
execute as @e[type=villager,tag=yj-dealer-ready,tag=yj-dealer] at @s run function yjcasino:bet/reset
scoreboard players set @a yj-game-id 0