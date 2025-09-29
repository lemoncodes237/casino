# Check for resplits
execute if entity @s[tag=yj-blackjack-further-splits] run return run function yjcasino:blackjack/split/resplit

# Otherwise must have hit, let's go!
$execute store result storage yjcasino:blackjack offset double 0.1 run scoreboard players get @s yj-blackjack-split$(split)-cards
$execute store result storage yjcasino:blackjack yoffset double 0.01 run scoreboard players get @s yj-blackjack-split$(split)-cards
$data modify storage yjcasino:blackjack split set value $(split)
function yjcasino:blackjack/split/deal_card with storage yjcasino:blackjack

# If ace, then it's done unless we get another ace
$execute if entity @s[tag=yj-blackjack-ace,tag=!yj-blackjack-ace-split$(split)] run scoreboard players set @s yj-blackjack-split$(split)-stage 99
# Unless RSA not enabled, in which case it's lways done
$execute if entity @s[tag=yj-blackjack-ace,tag=!yj-rsa] run scoreboard players set @s yj-blackjack-split$(split)-stage 99
# Also stop if too many splits
$execute if entity @s[tag=yj-blackjack-ace] if score @s yj-blackjack-splits matches 3.. run scoreboard players set @s yj-blackjack-split$(split)-stage 99