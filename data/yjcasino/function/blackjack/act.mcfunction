# Check blackjack first
# Need to add code TODO
scoreboard players operation $yj-temp yj-casino-temp = @s yj-stage
scoreboard players operation $yj-temp yj-casino-temp %= $three yj-casino-var

execute if score $yj-temp yj-casino-temp matches 2 run return run function yjcasino:blackjack/look_decision
execute if score $yj-temp yj-casino-temp matches 0 run return run function yjcasino:blackjack/decision