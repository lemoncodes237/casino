scoreboard players set @s yj-stage 100

execute if score $yj-temp yj-total matches 100.. run return run function yjcasino:robbery/win
execute if score $yj-temp yj-total < @s yj-total run return run function yjcasino:robbery/win
execute if score $yj-temp yj-total > @s yj-total run return run function yjcasino:robbery/loss
execute if score $yj-temp yj-total = @s yj-total run return run function yjcasino:robbery/tie