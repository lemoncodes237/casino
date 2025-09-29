# Arg 1: rank of card
# Arg 2: suit of card
scoreboard players operation $yj-suit yj-casino-temp = $yj-arg2 yj-casino-var
scoreboard players operation $yj-rank yj-casino-temp = $yj-arg1 yj-casino-var

execute if score $yj-suit yj-casino-temp matches 0 run function yjcasino:card/heart
execute if score $yj-suit yj-casino-temp matches 1 run function yjcasino:card/club
execute if score $yj-suit yj-casino-temp matches 2 run function yjcasino:card/diamond
execute if score $yj-suit yj-casino-temp matches 3 run function yjcasino:card/spade

execute as @e[type=item_display,distance=..1,tag=yj-card-temp,sort=nearest,limit=1] run rotate @s facing ^ ^ ^1
execute as @e[type=item_display,distance=..1,tag=yj-card-temp,sort=nearest,limit=1] run tag @s remove yj-card-temp

playsound block.stone.place master @a ~ ~ ~