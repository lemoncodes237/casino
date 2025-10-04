fill ^1 ^ ^3 ^-1 ^ ^2 lime_terracotta
fill ^1 ^ ^2 ^2 ^ ^1 lime_terracotta
fill ^-1 ^ ^2 ^-2 ^ ^1 lime_terracotta
fill ^2 ^ ^ ^3 ^ ^ lime_terracotta
fill ^2 ^ ^ ^3 ^ ^1 lime_terracotta
fill ^-2 ^ ^ ^-3 ^ ^1 lime_terracotta

execute if score $yj-dealer-rotation yj-casino-temp matches 1 run fill ^-4 ^ ^ ^-4 ^ ^2 oak_stairs[half=top,facing=west]
execute if score $yj-dealer-rotation yj-casino-temp matches 1 run fill ^4 ^ ^ ^4 ^ ^2 oak_stairs[half=top,facing=east]
execute if score $yj-dealer-rotation yj-casino-temp matches 1 run setblock ^3 ^ ^2 oak_stairs[half=top,facing=south]
execute if score $yj-dealer-rotation yj-casino-temp matches 1 run setblock ^-3 ^ ^2 oak_stairs[half=top,facing=south]
execute if score $yj-dealer-rotation yj-casino-temp matches 1 run setblock ^3 ^ ^3 oak_stairs[half=top,facing=east]
execute if score $yj-dealer-rotation yj-casino-temp matches 1 run setblock ^-3 ^ ^3 oak_stairs[half=top,facing=west]
execute if score $yj-dealer-rotation yj-casino-temp matches 1 run setblock ^2 ^ ^3 oak_stairs[half=top,facing=south]
execute if score $yj-dealer-rotation yj-casino-temp matches 1 run setblock ^-2 ^ ^3 oak_stairs[half=top,facing=south]
execute if score $yj-dealer-rotation yj-casino-temp matches 1 run setblock ^2 ^ ^4 oak_stairs[half=top,facing=east]
execute if score $yj-dealer-rotation yj-casino-temp matches 1 run setblock ^-2 ^ ^4 oak_stairs[half=top,facing=west]
execute if score $yj-dealer-rotation yj-casino-temp matches 1 run fill ^1 ^ ^4 ^-1 ^ ^4 oak_stairs[half=top,facing=south]

execute if score $yj-dealer-rotation yj-casino-temp matches 2 run fill ^-4 ^ ^ ^-4 ^ ^2 oak_stairs[half=top,facing=north]
execute if score $yj-dealer-rotation yj-casino-temp matches 2 run fill ^4 ^ ^ ^4 ^ ^2 oak_stairs[half=top,facing=south]
execute if score $yj-dealer-rotation yj-casino-temp matches 2 run setblock ^3 ^ ^2 oak_stairs[half=top,facing=west]
execute if score $yj-dealer-rotation yj-casino-temp matches 2 run setblock ^-3 ^ ^2 oak_stairs[half=top,facing=west]
execute if score $yj-dealer-rotation yj-casino-temp matches 2 run setblock ^3 ^ ^3 oak_stairs[half=top,facing=south]
execute if score $yj-dealer-rotation yj-casino-temp matches 2 run setblock ^-3 ^ ^3 oak_stairs[half=top,facing=north]
execute if score $yj-dealer-rotation yj-casino-temp matches 2 run setblock ^2 ^ ^3 oak_stairs[half=top,facing=west]
execute if score $yj-dealer-rotation yj-casino-temp matches 2 run setblock ^-2 ^ ^3 oak_stairs[half=top,facing=west]
execute if score $yj-dealer-rotation yj-casino-temp matches 2 run setblock ^2 ^ ^4 oak_stairs[half=top,facing=south]
execute if score $yj-dealer-rotation yj-casino-temp matches 2 run setblock ^-2 ^ ^4 oak_stairs[half=top,facing=north]
execute if score $yj-dealer-rotation yj-casino-temp matches 2 run fill ^1 ^ ^4 ^-1 ^ ^4 oak_stairs[half=top,facing=west]

execute if score $yj-dealer-rotation yj-casino-temp matches 3 run fill ^-4 ^ ^ ^-4 ^ ^2 oak_stairs[half=top,facing=east]
execute if score $yj-dealer-rotation yj-casino-temp matches 3 run fill ^4 ^ ^ ^4 ^ ^2 oak_stairs[half=top,facing=west]
execute if score $yj-dealer-rotation yj-casino-temp matches 3 run setblock ^3 ^ ^2 oak_stairs[half=top,facing=north]
execute if score $yj-dealer-rotation yj-casino-temp matches 3 run setblock ^-3 ^ ^2 oak_stairs[half=top,facing=north]
execute if score $yj-dealer-rotation yj-casino-temp matches 3 run setblock ^3 ^ ^3 oak_stairs[half=top,facing=west]
execute if score $yj-dealer-rotation yj-casino-temp matches 3 run setblock ^-3 ^ ^3 oak_stairs[half=top,facing=east]
execute if score $yj-dealer-rotation yj-casino-temp matches 3 run setblock ^2 ^ ^3 oak_stairs[half=top,facing=north]
execute if score $yj-dealer-rotation yj-casino-temp matches 3 run setblock ^-2 ^ ^3 oak_stairs[half=top,facing=north]
execute if score $yj-dealer-rotation yj-casino-temp matches 3 run setblock ^2 ^ ^4 oak_stairs[half=top,facing=west]
execute if score $yj-dealer-rotation yj-casino-temp matches 3 run setblock ^-2 ^ ^4 oak_stairs[half=top,facing=east]
execute if score $yj-dealer-rotation yj-casino-temp matches 3 run fill ^1 ^ ^4 ^-1 ^ ^4 oak_stairs[half=top,facing=north]

execute if score $yj-dealer-rotation yj-casino-temp matches 4 run fill ^-4 ^ ^ ^-4 ^ ^2 oak_stairs[half=top,facing=south]
execute if score $yj-dealer-rotation yj-casino-temp matches 4 run fill ^4 ^ ^ ^4 ^ ^2 oak_stairs[half=top,facing=north]
execute if score $yj-dealer-rotation yj-casino-temp matches 4 run setblock ^3 ^ ^2 oak_stairs[half=top,facing=east]
execute if score $yj-dealer-rotation yj-casino-temp matches 4 run setblock ^-3 ^ ^2 oak_stairs[half=top,facing=east]
execute if score $yj-dealer-rotation yj-casino-temp matches 4 run setblock ^3 ^ ^3 oak_stairs[half=top,facing=north]
execute if score $yj-dealer-rotation yj-casino-temp matches 4 run setblock ^-3 ^ ^3 oak_stairs[half=top,facing=south]
execute if score $yj-dealer-rotation yj-casino-temp matches 4 run setblock ^2 ^ ^3 oak_stairs[half=top,facing=east]
execute if score $yj-dealer-rotation yj-casino-temp matches 4 run setblock ^-2 ^ ^3 oak_stairs[half=top,facing=east]
execute if score $yj-dealer-rotation yj-casino-temp matches 4 run setblock ^2 ^ ^4 oak_stairs[half=top,facing=north]
execute if score $yj-dealer-rotation yj-casino-temp matches 4 run setblock ^-2 ^ ^4 oak_stairs[half=top,facing=south]
execute if score $yj-dealer-rotation yj-casino-temp matches 4 run fill ^1 ^ ^4 ^-1 ^ ^4 oak_stairs[half=top,facing=east]

setblock ^ ^1 ^4 heavy_weighted_pressure_plate
setblock ^3 ^1 ^3 heavy_weighted_pressure_plate
setblock ^-3 ^1 ^3 heavy_weighted_pressure_plate
setblock ^-4 ^1 ^1 heavy_weighted_pressure_plate
setblock ^4 ^1 ^1 heavy_weighted_pressure_plate

summon interaction ^ ^1 ^4 {height:0.3,Tags:["yj-bet-spot","yj-bet-spot-temp"],response:true}
summon interaction ^3 ^1 ^3 {height:0.3,Tags:["yj-bet-spot","yj-bet-spot-temp"],response:true}
summon interaction ^-3 ^1 ^3 {height:0.3,Tags:["yj-bet-spot","yj-bet-spot-temp"],response:true}
summon interaction ^-4 ^1 ^1 {height:0.3,Tags:["yj-bet-spot","yj-bet-spot-temp"],response:true}
summon interaction ^4 ^1 ^1 {height:0.3,Tags:["yj-bet-spot","yj-bet-spot-temp"],response:true}
execute as @e[type=interaction,distance=..20,tag=yj-bet-spot-temp] run scoreboard players operation @s yj-dealer-game = $yj-dealer-game yj-casino-temp
execute as @e[type=interaction,distance=..20,tag=yj-bet-spot-temp] run scoreboard players operation @s yj-dealer-minbet = $yj-dealer-minbet yj-casino-temp
execute as @e[type=interaction,distance=..20,tag=yj-bet-spot-temp] run scoreboard players operation @s yj-dealer-maxbet = $yj-dealer-maxbet yj-casino-temp
execute as @e[type=interaction,distance=..20,tag=yj-bet-spot-temp] run scoreboard players operation @s yj-dealer-responsibility = $yj-dealer-responsibility yj-casino-temp
scoreboard players operation $yj-temp yj-casino-temp = @s yj-id
execute as @e[type=interaction,distance=..20,tag=yj-bet-spot-temp] run scoreboard players operation @s yj-id = $yj-temp yj-casino-temp

# Fifty Fifty - Need commission data
execute if score $yj-dealer-game yj-casino-temp matches 1 as @e[type=interaction,distance=..10,tag=yj-bet-spot-temp] run scoreboard players operation @s yj-fifty-fifty-commission = $yj-commission yj-casino-temp

# Blackjack - Need rules data
execute if score $yj-dealer-game yj-casino-temp matches 3 as @e[type=interaction,distance=..10,tag=yj-bet-spot-temp] run function yjcasino:setup/blackjack_modify

# Baccarat
execute if score $yj-dealer-game yj-casino-temp matches 4 as @e[type=interaction,distance=..10,tag=yj-bet-spot-temp] run function yjcasino:setup/baccarat_modify

summon marker ~ ~ ~ {Tags:["yj-temp-marker"]}
execute as @e[type=interaction,distance=..10,tag=yj-bet-spot-temp] at @s run rotate @s facing entity @e[type=marker,tag=yj-temp-marker,distance=..10,limit=1,sort=nearest]
kill @e[type=marker,tag=yj-temp-marker,distance=..2,limit=1,sort=nearest]

tag @e[type=interaction,distance=..10,tag=yj-bet-spot-temp] remove yj-bet-spot-temp

summon text_display ^ ^1.2 ^4 {text:"",billboard:center,Tags:["yj-bet-display"]}
summon text_display ^3 ^1.2 ^3 {text:"",billboard:center,Tags:["yj-bet-display"]}
summon text_display ^-3 ^1.2 ^3 {text:"",billboard:center,Tags:["yj-bet-display"]}
summon text_display ^-4 ^1.2 ^1 {text:"",billboard:center,Tags:["yj-bet-display"]}
summon text_display ^4 ^1.2 ^1 {text:"",billboard:center,Tags:["yj-bet-display"]}