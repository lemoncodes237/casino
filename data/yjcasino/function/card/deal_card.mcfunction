execute store result score $yj-roll yj-casino-temp run random value 0..51
scoreboard players operation $yj-suit yj-casino-temp = $yj-roll yj-casino-temp
scoreboard players operation $yj-suit yj-casino-temp /= $thirteen yj-casino-var
scoreboard players operation $yj-rank yj-casino-temp = $yj-roll yj-casino-temp
scoreboard players operation $yj-rank yj-casino-temp %= $thirteen yj-casino-var

execute if score $yj-suit yj-casino-temp matches 0 run function yjcasino:card/heart
execute if score $yj-suit yj-casino-temp matches 1 run function yjcasino:card/club
execute if score $yj-suit yj-casino-temp matches 2 run function yjcasino:card/diamond
execute if score $yj-suit yj-casino-temp matches 3 run function yjcasino:card/spade

execute as @e[type=item_display,distance=..1,tag=yj-card-temp,sort=nearest,limit=1] run rotate @s facing ^ ^ ^1
execute as @e[type=item_display,distance=..1,tag=yj-card-temp,sort=nearest,limit=1] run tag @s remove yj-card-temp

playsound block.stone.place master @a ~ ~ ~