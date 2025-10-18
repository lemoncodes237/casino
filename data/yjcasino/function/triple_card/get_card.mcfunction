execute store result score $yj-card yj-casino-temp run random value 0..51
scoreboard players set $yj-dup-check yj-casino-temp 0

execute store result score $yj-dup-check yj-casino-temp run function yjcasino:triple_card/check_duplicate
execute if score $yj-dup-check yj-casino-temp matches -1 run return run function yjcasino:triple_card/get_card
execute positioned ^4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] store result score $yj-dup-check yj-casino-temp run function yjcasino:triple_card/check_duplicate
#execute if score $yj-dup-check yj-casino-temp matches -1 run tellraw @a "Duplicate generated"
execute if score $yj-dup-check yj-casino-temp matches -1 run return run function yjcasino:triple_card/get_card
execute positioned ^3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] store result score $yj-dup-check yj-casino-temp run function yjcasino:triple_card/check_duplicate
#execute if score $yj-dup-check yj-casino-temp matches -1 run tellraw @a "Duplicate generated"
execute if score $yj-dup-check yj-casino-temp matches -1 run return run function yjcasino:triple_card/get_card
execute positioned ^0 ^1 ^4 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] store result score $yj-dup-check yj-casino-temp run function yjcasino:triple_card/check_duplicate
#execute if score $yj-dup-check yj-casino-temp matches -1 run tellraw @a "Duplicate generated"
execute if score $yj-dup-check yj-casino-temp matches -1 run return run function yjcasino:triple_card/get_card
execute positioned ^-3 ^1 ^3 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] store result score $yj-dup-check yj-casino-temp run function yjcasino:triple_card/check_duplicate
#execute if score $yj-dup-check yj-casino-temp matches -1 run tellraw @a "Duplicate generated"
execute if score $yj-dup-check yj-casino-temp matches -1 run return run function yjcasino:triple_card/get_card
execute positioned ^-4 ^1 ^1 as @e[type=interaction,tag=yj-bet-spot-bet,tag=yj-bet-spot-in-play,limit=1,sort=nearest,distance=..1] store result score $yj-dup-check yj-casino-temp run function yjcasino:triple_card/check_duplicate
#execute if score $yj-dup-check yj-casino-temp matches -1 run tellraw @a "Duplicate generated"
execute if score $yj-dup-check yj-casino-temp matches -1 run return run function yjcasino:triple_card/get_card