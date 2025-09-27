$scoreboard players set @s yj-dealer-rotation $(facing)
$scoreboard players set @s yj-dealer-game $(game)
$scoreboard players set @s yj-dealer-minbet $(min_bet)
$scoreboard players set @s yj-dealer-maxbet $(max_bet)
$scoreboard players set @s yj-dealer-responsibility $(responsibility)

# If more setup required, send them to the next menu
execute if score @s yj-dealer-game matches 1 run return run dialog show @s yjcasino:fifty_fifty_dealer
execute if score @s yj-dealer-game matches 3 run return run dialog show @s yjcasino:blackjack_dealer

function yjcasino:setup/modify_dealer