# End stage
scoreboard players set @s yj-stage 100

execute if score $yj-temp yj-total > @s yj-total run function yjcasino:war/loss
execute if score $yj-temp yj-total < @s yj-total run function yjcasino:war/win
execute if score $yj-temp yj-total = @s yj-total run function yjcasino:war/tie