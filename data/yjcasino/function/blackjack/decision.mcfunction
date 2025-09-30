# Add a step
scoreboard players add @s yj-stage 1

# Save Player id
scoreboard players operation $yj-temp yj-id = @s yj-player-id

# Get balance
execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-player-id
function yjcasino:money/get_balance_100 with storage yjcasino:balance

# Do you have a BLACKJACK???
execute if score @s yj-total matches 11 if entity @s[tag=yj-blackjack-ace] if score @s yj-cards matches 2 at @s run return run function yjcasino:blackjack/player_blackjack

# Force quit at 21
execute if score @s yj-total matches 21 as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
execute if score @s yj-total matches 21 run return run scoreboard players set @s yj-stage 74

# Figure out what you're allowed to do
scoreboard players set $yj-can-double yj-casino-temp 0
# Can double with any two cards
execute if score @s yj-cards matches 2 if score @s yj-money >= @s yj-original-bet run scoreboard players set $yj-can-double yj-casino-temp 1

scoreboard players set $yj-can-split yj-casino-temp 0
# Can split with matching two cards
scoreboard players operation $yj-first-card yj-casino-temp = @s yj-total
scoreboard players operation $yj-first-card yj-casino-temp -= @s yj-last-card
execute if score @s yj-last-card = $yj-first-card yj-casino-temp if score @s yj-cards matches 2 if score @s yj-money >= @s yj-original-bet run scoreboard players set $yj-can-split yj-casino-temp 1

scoreboard players set $yj-can-surrender yj-casino-temp 0
# Can surrender if rules allow for it with any two cards
execute if score @s yj-cards matches 2 if entity @s[tag=yj-ls] run scoreboard players set $yj-can-surrender yj-casino-temp 1

scoreboard players set $yj-temp yj-casino-temp 0
scoreboard players operation $yj-temp yj-total = @s yj-total
execute if entity @s[tag=yj-blackjack-ace] if score $yj-temp yj-total matches 0..11 run scoreboard players set $yj-temp yj-casino-temp 1
execute if entity @s[tag=yj-blackjack-ace] if score $yj-temp yj-total matches 0..11 run scoreboard players add $yj-temp yj-total 10
execute store result storage yjcasino:blackjack player int 1 run scoreboard players get $yj-temp yj-total
execute if entity @s[tag=yj-blackjack-ace] if score $yj-temp yj-casino-temp matches 1 run function yjcasino:blackjack/player_soft with storage yjcasino:blackjack

execute at @s positioned ^ ^ ^4 as @e[type=villager,tag=yj-dealer-playing,distance=..2,limit=1,sort=nearest] run scoreboard players operation $yj-temp-dealer yj-total = @s yj-total
execute if score $yj-temp-dealer yj-total matches 2.. store result storage yjcasino:blackjack dealer int 1 run scoreboard players get $yj-temp-dealer yj-total
execute if score $yj-temp-dealer yj-total matches 1 run data modify storage yjcasino:blackjack dealer set value "A"

tag @s add yj-blackjack-awaiting

execute if score $yj-can-double yj-casino-temp matches 1 if score $yj-can-split yj-casino-temp matches 1 if score $yj-can-surrender yj-casino-temp matches 1 as @a if score @s yj-id = $yj-temp yj-id run return run function yjcasino:blackjack/decision_dialog/double_split_surrender with storage yjcasino:blackjack
execute if score $yj-can-double yj-casino-temp matches 1 if score $yj-can-split yj-casino-temp matches 0 if score $yj-can-surrender yj-casino-temp matches 1 as @a if score @s yj-id = $yj-temp yj-id run return run function yjcasino:blackjack/decision_dialog/double_surrender with storage yjcasino:blackjack
execute if score $yj-can-double yj-casino-temp matches 1 if score $yj-can-split yj-casino-temp matches 1 if score $yj-can-surrender yj-casino-temp matches 0 as @a if score @s yj-id = $yj-temp yj-id run return run function yjcasino:blackjack/decision_dialog/double_split with storage yjcasino:blackjack
execute if score $yj-can-double yj-casino-temp matches 1 if score $yj-can-split yj-casino-temp matches 0 if score $yj-can-surrender yj-casino-temp matches 0 as @a if score @s yj-id = $yj-temp yj-id run return run function yjcasino:blackjack/decision_dialog/double with storage yjcasino:blackjack
execute if score $yj-can-double yj-casino-temp matches 0 if score $yj-can-split yj-casino-temp matches 0 if score $yj-can-surrender yj-casino-temp matches 1 as @a if score @s yj-id = $yj-temp yj-id run return run function yjcasino:blackjack/decision_dialog/surrender with storage yjcasino:blackjack
execute if score $yj-can-double yj-casino-temp matches 0 if score $yj-can-split yj-casino-temp matches 0 if score $yj-can-surrender yj-casino-temp matches 0 as @a if score @s yj-id = $yj-temp yj-id run return run function yjcasino:blackjack/decision_dialog/none with storage yjcasino:blackjack

tellraw @a "BUG!"