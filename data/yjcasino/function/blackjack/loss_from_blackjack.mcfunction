scoreboard players add @s yj-stage 1

execute if entity @s[tag=yj-blackjack-insured] run return run function yjcasino:blackjack/insurance_blackjack

# Lose money rip
execute if entity @s[tag=yj-blackjack-ace] if score @s yj-total matches 11 at @s run return run function yjcasino:blackjack/tie
execute at @s run function yjcasino:blackjack/loss