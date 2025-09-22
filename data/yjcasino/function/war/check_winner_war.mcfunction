# End stage
scoreboard players set @s yj-stage 100

# Tie is a win here
execute if score $yj-temp yj-total > @s yj-total run function yjcasino:war/loss
execute if score $yj-temp yj-total <= @s yj-total run function yjcasino:war/win_war