# Add a step
$scoreboard players add @s yj-blackjack-split$(split)-stage 1

# Save Player id
scoreboard players operation $yj-temp yj-id = @s yj-player-id

# Get balance
execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-player-id
function yjcasino:money/get_balance_100 with storage yjcasino:balance

# Force quit at 21
$execute if score @s yj-blackjack-split$(split)-total matches 21 as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
$execute if score @s yj-blackjack-split$(split)-total matches 21 run return run scoreboard players set @s yj-blackjack-split$(split)-stage 100

# Figure out what you're allowed to do
scoreboard players set $yj-can-double yj-casino-temp 0
# Can double with any two cards
$execute if score @s yj-blackjack-split$(split)-cards matches 2 if score @s yj-money >= @s yj-original-bet if entity @s[tag=yj-das] run scoreboard players set $yj-can-double yj-casino-temp 1

# This code can stay as yj-total does not change
scoreboard players set $yj-can-split yj-casino-temp 0
# Can split with matching two cards
scoreboard players operation $yj-first-card yj-casino-temp = @s yj-total
scoreboard players operation $yj-first-card yj-casino-temp -= @s yj-last-card
$execute if score @s yj-last-card = $yj-first-card yj-casino-temp if score @s yj-blackjack-split$(split)-cards matches 2 if score @s yj-blackjack-splits matches 1..2 if score @s yj-money >= @s yj-original-bet run scoreboard players set $yj-can-split yj-casino-temp 1

scoreboard players set $yj-temp yj-casino-temp 0
$scoreboard players operation $yj-temp yj-total = @s yj-blackjack-split$(split)-total
$execute if entity @s[tag=yj-blackjack-ace-split$(split)] if score $yj-temp yj-total matches 0..11 run scoreboard players set $yj-temp yj-casino-temp 1
$execute if entity @s[tag=yj-blackjack-ace-split$(split)] if score $yj-temp yj-total matches 0..11 run scoreboard players add $yj-temp yj-total 10
execute store result storage yjcasino:blackjack player int 1 run scoreboard players get $yj-temp yj-total
$execute if entity @s[tag=yj-blackjack-ace-split$(split)] if score $yj-temp yj-casino-temp matches 1 run function yjcasino:blackjack/player_soft with storage yjcasino:blackjack

execute at @s positioned ^ ^ ^4 as @e[type=villager,tag=yj-dealer-playing,distance=..2,limit=1,sort=nearest] run scoreboard players operation $yj-temp-dealer yj-total = @s yj-total
execute if score $yj-temp-dealer yj-total matches 2.. store result storage yjcasino:blackjack dealer int 1 run scoreboard players get $yj-temp-dealer yj-total
execute if score $yj-temp-dealer yj-total matches 1 run data modify storage yjcasino:blackjack dealer set value "A"

tag @s add yj-blackjack-awaiting

$execute if score @s yj-last-card = $yj-first-card yj-casino-temp if score @s yj-blackjack-split$(split)-cards matches 2 if entity @s[tag=yj-blackjack-ace] as @a if score @s yj-id = $yj-temp yj-id if score @s yj-money >= @s yj-original-bet run return run function yjcasino:blackjack/decision_dialog/split_stand with storage yjcasino:blackjack
execute if score $yj-can-double yj-casino-temp matches 1 if score $yj-can-split yj-casino-temp matches 1 as @a if score @s yj-id = $yj-temp yj-id run return run function yjcasino:blackjack/decision_dialog/double_split with storage yjcasino:blackjack
execute if score $yj-can-double yj-casino-temp matches 1 if score $yj-can-split yj-casino-temp matches 0 as @a if score @s yj-id = $yj-temp yj-id run return run function yjcasino:blackjack/decision_dialog/double with storage yjcasino:blackjack
execute if score $yj-can-double yj-casino-temp matches 0 if score $yj-can-split yj-casino-temp matches 1 as @a if score @s yj-id = $yj-temp yj-id run return run function yjcasino:blackjack/decision_dialog/split with storage yjcasino:blackjack
execute if score $yj-can-double yj-casino-temp matches 0 if score $yj-can-split yj-casino-temp matches 0 as @a if score @s yj-id = $yj-temp yj-id run return run function yjcasino:blackjack/decision_dialog/none with storage yjcasino:blackjack

tellraw @a "BUG!"