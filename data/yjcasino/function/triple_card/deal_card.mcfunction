execute at @s positioned ^ ^ ^4 as @e[type=villager,tag=yj-dealer,distance=..1,sort=nearest,limit=1] at @s run function yjcasino:triple_card/get_card

# Now it's in $yj-card yj-casino-temp

scoreboard players operation $yj-arg1 yj-casino-var = $yj-card yj-casino-temp
scoreboard players operation $yj-arg2 yj-casino-var = $yj-card yj-casino-temp
scoreboard players operation $yj-arg1 yj-casino-var %= $thirteen yj-casino-var
scoreboard players operation $yj-arg2 yj-casino-var /= $thirteen yj-casino-var

function yjcasino:card/deal_exact_card
function yjcasino:triple_card/register

#execute at @s positioned ^ ^ ^4 as @e[type=villager,tag=yj-dealer,distance=..1,sort=nearest,limit=1] run scoreboard players set @s yj-stage 3