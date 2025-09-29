tag @s remove yj-blackjack-further-splits

# Now do the split
execute positioned ^0.1 ^0.5 ^-0.1 run tag @e[type=item_display,tag=yj-card,distance=..1,sort=nearest,limit=1] add yj-last-card-temp

scoreboard players add @s yj-blackjack-splits 1

execute if score @s yj-blackjack-splits matches 2 if score @s yj-blackjack-split1-stage matches 2..60 positioned ^-1 ^ ^ run tp @e[type=item_display,limit=1,tag=yj-last-card-temp,distance=..3,sort=nearest] ~ ~ ~
execute if score @s yj-blackjack-splits matches 2 if score @s yj-blackjack-split2-stage matches 2..60 positioned ^-0.5 ^ ^ run tp @e[type=item_display,limit=1,tag=yj-last-card-temp,distance=..3,sort=nearest] ~ ~ ~
execute if score @s yj-blackjack-splits matches 3 if score @s yj-blackjack-split1-stage matches 2..60 positioned ^0.5 ^ ^ run tp @e[type=item_display,limit=1,tag=yj-last-card-temp,distance=..3,sort=nearest] ~ ~ ~
execute if score @s yj-blackjack-splits matches 3 if score @s yj-blackjack-split2-stage matches 2..60 positioned ^1 ^ ^ run tp @e[type=item_display,limit=1,tag=yj-last-card-temp,distance=..3,sort=nearest] ~ ~ ~
execute if score @s yj-blackjack-splits matches 3 if score @s yj-blackjack-split3-stage matches 2..60 positioned ^1.5 ^ ^ run tp @e[type=item_display,limit=1,tag=yj-last-card-temp,distance=..3,sort=nearest] ~ ~ ~

scoreboard players operation $yj-temp yj-id = @s yj-player-id
execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound block.stone.place master @a[distance=..20] ~ ~ ~

execute if score @s yj-blackjack-splits matches 2 run scoreboard players set @s yj-blackjack-split3-stage 1
execute if score @s yj-blackjack-splits matches 3 run scoreboard players set @s yj-blackjack-split4-stage 1

execute if score @s yj-blackjack-split1-stage matches 2..60 run scoreboard players operation @s yj-blackjack-split1-total = @s yj-blackjack-split4-total
execute if score @s yj-blackjack-split2-stage matches 2..60 run scoreboard players operation @s yj-blackjack-split2-total = @s yj-blackjack-split4-total
execute if score @s yj-blackjack-split3-stage matches 2..60 run scoreboard players operation @s yj-blackjack-split3-total = @s yj-blackjack-split4-total

# Reset cards and stage if needed
execute if score @s yj-blackjack-split1-stage matches 2..60 run scoreboard players set @s yj-blackjack-split1-cards 1
execute if score @s yj-blackjack-split2-stage matches 2..60 run scoreboard players set @s yj-blackjack-split2-cards 1
execute if score @s yj-blackjack-split3-stage matches 2..60 run scoreboard players set @s yj-blackjack-split3-cards 1
execute if score @s yj-blackjack-split1-stage matches 2..60 run scoreboard players set @s yj-blackjack-split1-stage 1
execute if score @s yj-blackjack-split2-stage matches 2..60 run scoreboard players set @s yj-blackjack-split2-stage 1
execute if score @s yj-blackjack-split3-stage matches 2..60 run scoreboard players set @s yj-blackjack-split3-stage 1

execute as @e[type=item_display,limit=1,tag=yj-last-card-temp,distance=..3,sort=nearest] run tag @s remove yj-last-card-temp