# Run by interaction entity
# End stage
scoreboard players set @s yj-stage 100

execute if score @s yj-bet-type matches 1 if score $yj-temp yj-total-banker > $yj-temp yj-total run return run function yjcasino:baccarat/banker_win
execute if score @s yj-bet-type matches 2 if score $yj-temp yj-total-banker < $yj-temp yj-total run return run function yjcasino:baccarat/player_win
execute if score @s yj-bet-type matches 3 if score $yj-temp yj-total-banker = $yj-temp yj-total run return run function yjcasino:baccarat/tie_win
execute if score @s yj-bet-type matches 1..2 if score $yj-temp yj-total-banker = $yj-temp yj-total run return run function yjcasino:baccarat/push

function yjcasino:baccarat/loss