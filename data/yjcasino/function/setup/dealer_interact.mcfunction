scoreboard players set @s dealer-click 0
execute at @s positioned ^ ^ ^2 if entity @e[type=villager,tag=yj-dealer,distance=..2] run function yjcasino:setup/dealer_menu