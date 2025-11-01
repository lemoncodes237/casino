# Delete previous card
kill @e[type=item_display,tag=yj-card,distance=..0.1,sort=nearest,limit=1]
scoreboard players set @s yj-total 0

execute positioned ^ ^ ^ run function yjcasino:card/deal_card
function yjcasino:robbery/register

# Instant death to dealer if it's another face card
execute if score @s yj-stage matches 99 if entity @s[tag=yj-dealer] run scoreboard players set @s yj-stage 50

execute if score @s yj-stage matches 0..98 run scoreboard players set @s yj-cards 1