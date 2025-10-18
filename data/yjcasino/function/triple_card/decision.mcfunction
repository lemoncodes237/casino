# If you don't have enough to play, the bet automatically pushes
scoreboard players operation $yj-temp yj-id = @s yj-player-id
execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-player-id
function yjcasino:money/get_balance with storage yjcasino:balance

# Check money
execute if score @s yj-money < @s yj-original-bet run return run function yjcasino:triple_card/no_money

# If ante bonus, pay it out
execute if entity @s[tag=yj-ante-bonus] run function yjcasino:triple_card/ante_bonus

# Now we can play
execute store result storage yjcasino:temp card int 1 run scoreboard players get @s yj-card1
data modify storage yjcasino:temp index set value 1
function yjcasino:triple_card/copy_card with storage yjcasino:temp
execute store result storage yjcasino:temp card int 1 run scoreboard players get @s yj-card2
data modify storage yjcasino:temp index set value 2
function yjcasino:triple_card/copy_card with storage yjcasino:temp
execute store result storage yjcasino:temp card int 1 run scoreboard players get @s yj-card3
data modify storage yjcasino:temp index set value 3
function yjcasino:triple_card/copy_card with storage yjcasino:temp

# Now the three cards can be displayed properly
scoreboard players operation $yj-temp yj-id = @s yj-player-id
execute as @a if score @s yj-id = $yj-temp yj-id run function yjcasino:triple_card/decision_screen with storage yjcasino:card

scoreboard players add @s yj-stage 1