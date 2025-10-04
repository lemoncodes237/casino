scoreboard players operation $yj-dealer-rotation yj-casino-temp = @s yj-dealer-rotation
scoreboard players operation $yj-dealer-minbet yj-casino-temp = @s yj-dealer-minbet
scoreboard players operation $yj-dealer-maxbet yj-casino-temp = @s yj-dealer-maxbet
scoreboard players operation $yj-dealer-game yj-casino-temp = @s yj-dealer-game
scoreboard players operation $yj-dealer-responsibility yj-casino-temp = @s yj-dealer-responsibility

execute if score $yj-dealer-minbet yj-casino-temp > $yj-dealer-maxbet yj-casino-temp run return run tellraw @s "The minimum bet must be lower than the maximum bet!"

execute at @s positioned ^ ^ ^2 as @e[type=villager,tag=yj-dealer,distance=..2] run tag @s add yj-dealer-temp
execute at @s as @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1,tag=yj-dealer-setup] at @s run function yjcasino:setup/delete_table

execute at @s if score $yj-dealer-rotation yj-casino-temp matches 1 as @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1] at @s run function yjcasino:setup/rotation/north
execute at @s if score $yj-dealer-rotation yj-casino-temp matches 2 as @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1] at @s run function yjcasino:setup/rotation/east
execute at @s if score $yj-dealer-rotation yj-casino-temp matches 3 as @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1] at @s run function yjcasino:setup/rotation/south
execute at @s if score $yj-dealer-rotation yj-casino-temp matches 4 as @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1] at @s run function yjcasino:setup/rotation/west

# Create table
execute as @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1] at @s run function yjcasino:setup/create_table

scoreboard players operation @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1] yj-dealer-game = $yj-dealer-game yj-casino-temp
scoreboard players operation @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1] yj-dealer-minbet = $yj-dealer-minbet yj-casino-temp
scoreboard players operation @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1] yj-dealer-maxbet = $yj-dealer-maxbet yj-casino-temp
scoreboard players operation @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1] yj-dealer-responsibility = $yj-dealer-responsibility yj-casino-temp

# For specific games
# Fifty Fifty - Need commission data
execute if score @s yj-dealer-game matches 1 run scoreboard players operation @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1] yj-fifty-fifty-commission = $yj-commission yj-casino-temp

# Blackjack - Need rules
execute if score @s yj-dealer-game matches 3 as @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1] run function yjcasino:setup/blackjack_modify

# Baccarat - Need commission and tie bet
execute if score @s yj-dealer-game matches 4 as @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1] run function yjcasino:setup/baccarat_modify

tag @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1] add yj-dealer-setup
tag @e[type=villager,tag=yj-dealer-temp,distance=..10,sort=nearest,limit=1] remove yj-dealer-temp