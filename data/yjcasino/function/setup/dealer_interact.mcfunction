scoreboard players set @s dealer-click 0
execute at @s positioned ^ ^ ^2 if entity @e[type=villager,tag=yj-dealer,distance=..2,tag=!yj-dealer-ready] run function yjcasino:setup/dealer_menu
execute at @s positioned ^ ^ ^2 if entity @e[type=villager,tag=yj-dealer,distance=..2,tag=yj-dealer-ready] run tellraw @s "Please wait for the current game to finish first!"