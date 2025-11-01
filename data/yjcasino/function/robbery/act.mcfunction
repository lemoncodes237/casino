# Check for decisions
scoreboard players operation $yj-temp yj-casino-temp = @s yj-stage
scoreboard players operation $yj-temp yj-casino-temp %= $three yj-casino-var

execute if score $yj-temp yj-casino-temp matches 2 run return run function yjcasino:robbery/decision
execute if score $yj-temp yj-casino-temp matches 1 run return run function yjcasino:robbery/look_decision