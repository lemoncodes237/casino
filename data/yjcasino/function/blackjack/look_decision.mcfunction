# Must have hit, let's go!
execute store result storage yjcasino:blackjack offset double 0.1 run scoreboard players get @s yj-cards
execute store result storage yjcasino:blackjack yoffset double 0.01 run scoreboard players get @s yj-cards
execute at @s positioned ^ ^0.05 ^4 as @e[type=villager,tag=yj-dealer,distance=..1,sort=nearest,limit=1] at @s run function yjcasino:blackjack/deal_more_cards