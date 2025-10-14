execute store result storage yjcasion:temp card int 1 run scoreboard players get @s yj-card1
data modify storage yjcasino:temp index set value 1
function yjcasino:triple_card/copy_card with storage yjcasino:temp
execute store result storage yjcasion:temp card int 1 run scoreboard players get @s yj-card2
data modify storage yjcasino:temp index set value 2
function yjcasino:triple_card/copy_card with storage yjcasino:temp
execute store result storage yjcasion:temp card int 1 run scoreboard players get @s yj-card3
data modify storage yjcasino:temp index set value 3
function yjcasino:triple_card/copy_card with storage yjcasino:temp

# Now the three cards can be displayed properly
scoreboard players operation $yj-temp yj-id = @s yj-id
execute as @a if score @s yj-id = $yj-temp yj-id run return run function yjcasino:triple_card/decision_screen with storage yjcasino:card

scoreboard players add @s yj-stage 1