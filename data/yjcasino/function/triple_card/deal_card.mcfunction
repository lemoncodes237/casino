function yjcasino:triple_card/get_card
# Now it's in $yj-card yj-casino-temp

execute positioned ^ ^ ^ run function yjcasino:card/deal_card
function yjcasino:triple_card/register

execute at @s positioned ^ ^ ^4 as @e[type=villager,tag=yj-dealer,distance=..1,sort=nearest,limit=1] run scoreboard players set @s yj-stage 3