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