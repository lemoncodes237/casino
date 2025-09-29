$execute positioned ^$(offset) ^$(yoffset) ^-$(offset) run function yjcasino:card/deal_card

scoreboard players add $yj-rank yj-casino-temp 1
execute if score $yj-rank yj-casino-temp matches 11..13 run scoreboard players set $yj-rank yj-casino-temp 10
$scoreboard players operation @s yj-blackjack-split$(split)-total += $yj-rank yj-casino-temp
$execute if score $yj-rank yj-casino-temp matches 1 run tag @s add yj-blackjack-ace-split$(split)

scoreboard players operation @s yj-last-card = $yj-rank yj-casino-temp
scoreboard players operation @s yj-last-suit = $yj-suit yj-casino-temp

$scoreboard players add @s yj-blackjack-split$(split)-cards 1
$scoreboard players add @s yj-blackjack-split$(split)-stage 1

# Check for busted hands
$execute if score @s yj-blackjack-split$(split)-total matches 22.. run scoreboard players set @s yj-blackjack-split$(split)-stage 70