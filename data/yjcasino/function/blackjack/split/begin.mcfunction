# We first gotta move our second card
# 3 2 1 4
execute positioned ^0.1 ^0.01 ^-0.1 run tag @e[type=item_display,tag=yj-card,distance=..1,sort=nearest,limit=1] add yj-last-card-temp
execute positioned ^0.5 ^ ^ run tp @e[type=item_display,limit=1,tag=yj-last-card-temp,distance=..3,sort=nearest] ~ ~ ~

scoreboard players operation $yj-temp yj-id = @s yj-player-id
execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound block.stone.place master @a[distance=..20] ~ ~ ~

# Set total to everything
scoreboard players operation @s yj-blackjack-split1-total = @s yj-last-card
scoreboard players operation @s yj-blackjack-split2-total = @s yj-last-card
scoreboard players operation @s yj-blackjack-split3-total = @s yj-last-card
scoreboard players operation @s yj-blackjack-split4-total = @s yj-last-card
execute if entity @s[tag=yj-blackjack-ace] run function yjcasino:blackjack/split/add_ace_tag
scoreboard players set @s yj-blackjack-split1-cards 1
scoreboard players set @s yj-blackjack-split2-cards 1
scoreboard players set @s yj-blackjack-split3-cards 1
scoreboard players set @s yj-blackjack-split4-cards 1
scoreboard players set @s yj-blackjack-split1-stage 1
scoreboard players set @s yj-blackjack-split2-stage 1

scoreboard players set @s yj-blackjack-splits 1

tag @s remove yj-blackjack-split1-double
tag @s remove yj-blackjack-split2-double
tag @s remove yj-blackjack-split3-double
tag @s remove yj-blackjack-split4-double

execute as @e[type=item_display,limit=1,tag=yj-last-card-temp,distance=..3,sort=nearest] run tag @s remove yj-last-card-temp