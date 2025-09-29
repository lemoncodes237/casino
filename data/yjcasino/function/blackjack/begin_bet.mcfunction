data modify storage yjcasino:bet s17 set value "Dealer hits Soft 17"
execute if entity @e[type=interaction,tag=yj-s17,tag=yj-bet-spot,distance=..1] run data modify storage yjcasino:bet s17 set value "Dealer stands on All 17s"

data modify storage yjcasino:bet das set value "No Double After Split Allowed"
execute if entity @e[type=interaction,tag=yj-das,tag=yj-bet-spot,distance=..1] run data modify storage yjcasino:bet das set value "Double after Split Allowed"

data modify storage yjcasino:bet rsa set value "No Resplit Aces"
execute if entity @e[type=interaction,tag=yj-rsa,tag=yj-bet-spot,distance=..1] run data modify storage yjcasino:bet rsa set value "Resplit Aces Allowed"

data modify storage yjcasino:bet ls set value "No Late Surrender"
execute if entity @e[type=interaction,tag=yj-ls,tag=yj-bet-spot,distance=..1] run data modify storage yjcasino:bet ls set value "Late Surrender Allowed"

function yjcasino:blackjack/bet with storage yjcasino:bet