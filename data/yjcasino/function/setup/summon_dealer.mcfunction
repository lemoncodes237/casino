execute at @s align xz positioned ~0.5 ~ ~0.5 run summon villager ~ ~ ~ {Tags:["yj-dealer","yj-temp"],CustomName:"Dealer",NoAI:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b}
tellraw @s "Dealer Summoned!"
scoreboard players set @s create-dealer 0
scoreboard players operation @e[type=villager,tag=yj-temp,distance=..5,limit=1,sort=nearest] yj-id = @s yj-id
tag @e[type=villager,tag=yj-temp,distance=..5,limit=1,sort=nearest] remove yj-temp