data modify storage yjcasino:bet tie set value "8"
execute if entity @e[type=interaction,tag=yj-tie-9,tag=yj-bet-spot,distance=..1] run data modify storage yjcasino:bet tie set value "9"

data modify storage yjcasino:bet commission set value "5% Commission on Banker"
execute if entity @e[type=interaction,tag=yj-baccarat-no,tag=yj-bet-spot,distance=..1] run data modify storage yjcasino:bet commission set value "No Commission (Banker bet pays 2-to-1 on wins with total of 6)"
execute if entity @e[type=interaction,tag=yj-baccarat-ez,tag=yj-bet-spot,distance=..1] run data modify storage yjcasino:bet commission set value "EZ-Baccarat (Banker bet pushes on wins with 3-card 7)"

data modify storage yjcasino:bet betstr set value "$(bet)$(type)"

function yjcasino:baccarat/bet with storage yjcasino:bet