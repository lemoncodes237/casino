# Run by interaction entity
# End stage
scoreboard players set @s yj-stage 100

execute if score $yj-temp yj-total matches 0 run return run function yjcasino:fifty_fifty/win
execute if score $yj-temp yj-total matches 1.. run function yjcasino:fifty_fifty/loss