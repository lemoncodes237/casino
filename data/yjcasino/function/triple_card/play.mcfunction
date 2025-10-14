scoreboard players add @s yj-stage 1

# Take away the play bet
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-original-bet
scoreboard players operation $yj-arg2 yj-casino-var *= $negation yj-casino-var
scoreboard players operation @s yj-bet += @s yj-original-bet

scoreboard players operation $yj-arg1 yj-casino-var = @s yj-player-id
function yjcasino:change_money

# Show the new bet
execute store result storage yjcasino:temp final_bet double 1 run scoreboard players get @s yj-bet
function yjcasino:bet/show_bet with storage yjcasino:temp