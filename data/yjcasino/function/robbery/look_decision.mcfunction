# Must have stole, let's go!
execute store result storage yjcasino:robbery offset double 0.1 run scoreboard players get @s yj-cards
execute store result storage yjcasino:robbery yoffset double 0.01 run scoreboard players get @s yj-cards
execute at @s positioned ^ ^0.01 ^4 as @e[type=villager,tag=yj-dealer,distance=..1,sort=nearest,limit=1] at @s run function yjcasino:robbery/deal_more_cards