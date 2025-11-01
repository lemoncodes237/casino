# Add a step
scoreboard players add @s yj-stage 1

# Save Player id
scoreboard players operation $yj-temp yj-id = @s yj-player-id

# Force quit at 24
execute if score @s yj-total matches 24.. as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
execute if score @s yj-total matches 24.. run return run scoreboard players set @s yj-stage 90

execute store result storage yjcasino:robbery player int 1 run scoreboard players get @s yj-total

execute at @s positioned ^ ^ ^4 as @e[type=villager,tag=yj-dealer-playing,distance=..2,limit=1,sort=nearest] store result storage yjcasino:robbery dealer int 1 run scoreboard players get @s yj-total

tag @s add yj-robbery-awaiting

execute as @a if score @s yj-id = $yj-temp yj-id run return run function yjcasino:robbery/decision_menu with storage yjcasino:robbery