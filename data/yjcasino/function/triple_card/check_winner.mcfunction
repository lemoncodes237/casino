# The annoying code to figure out strength
function yjcasino:triple_card/strength {player:"player"}
scoreboard players set @s yj-stage 100

# Now we get to figure out who won!
# First, qualify?
# Did the dealer qualify?
scoreboard players set $yj-qualify yj-casino-temp 1
execute if score $yj-dealer-strength yj-casino-temp matches 0 if score $yj-dealer1-rank yj-casino-temp matches 0..10 run scoreboard players set $yj-qualify yj-casino-temp 0
execute if score $yj-qualify yj-casino-temp matches 0 run return run function yjcasino:triple_card/win

# First check: strength
execute if score $yj-dealer-strength yj-casino-temp > $yj-player-strength yj-casino-temp run return run function yjcasino:triple_card/loss
execute if score $yj-dealer-strength yj-casino-temp < $yj-player-strength yj-casino-temp run return run function yjcasino:triple_card/win

# Now, if straight flush or straight, check the lowest card for winner
execute if score $yj-dealer-strength yj-casino-temp matches 5 if score $yj-dealer3-rank yj-casino-temp > $yj-player3-rank yj-casino-temp run return run function yjcasino:triple_card/loss
execute if score $yj-dealer-strength yj-casino-temp matches 5 if score $yj-dealer3-rank yj-casino-temp < $yj-player3-rank yj-casino-temp run return run function yjcasino:triple_card/win
execute if score $yj-dealer-strength yj-casino-temp matches 3 if score $yj-dealer3-rank yj-casino-temp > $yj-player3-rank yj-casino-temp run return run function yjcasino:triple_card/loss
execute if score $yj-dealer-strength yj-casino-temp matches 3 if score $yj-dealer3-rank yj-casino-temp < $yj-player3-rank yj-casino-temp run return run function yjcasino:triple_card/win

# If trips or pair, check pair card
execute if score $yj-dealer-strength yj-casino-temp matches 4 if score $yj-dealer-pair yj-casino-temp > $yj-player-pair yj-casino-temp run return run function yjcasino:triple_card/loss
execute if score $yj-dealer-strength yj-casino-temp matches 4 if score $yj-dealer-pair yj-casino-temp < $yj-player-pair yj-casino-temp run return run function yjcasino:triple_card/win
execute if score $yj-dealer-strength yj-casino-temp matches 1 if score $yj-dealer-pair yj-casino-temp > $yj-player-pair yj-casino-temp run return run function yjcasino:triple_card/loss
execute if score $yj-dealer-strength yj-casino-temp matches 1 if score $yj-dealer-pair yj-casino-temp < $yj-player-pair yj-casino-temp run return run function yjcasino:triple_card/win

# Otherwise, just check from top down (this also applies to a tied pair)
execute if score $yj-dealer1-rank yj-casino-temp > $yj-player1-rank yj-casino-temp run return run function yjcasino:triple_card/loss
execute if score $yj-dealer1-rank yj-casino-temp < $yj-player1-rank yj-casino-temp run return run function yjcasino:triple_card/win
execute if score $yj-dealer2-rank yj-casino-temp > $yj-player2-rank yj-casino-temp run return run function yjcasino:triple_card/loss
execute if score $yj-dealer2-rank yj-casino-temp < $yj-player2-rank yj-casino-temp run return run function yjcasino:triple_card/win
execute if score $yj-dealer3-rank yj-casino-temp > $yj-player3-rank yj-casino-temp run return run function yjcasino:triple_card/loss
execute if score $yj-dealer3-rank yj-casino-temp < $yj-player3-rank yj-casino-temp run return run function yjcasino:triple_card/win

# Otherwise, it's a tie
function yjcasino:triple_card/tie