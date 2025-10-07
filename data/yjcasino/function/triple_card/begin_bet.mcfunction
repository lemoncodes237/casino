data modify storage yjcasino:bet ante set value "No Ante Bonuses"
execute if entity @e[type=interaction,tag=yj-ante-bonus,tag=yj-bet-spot,distance=..1] run data modify storage yjcasino:bet s17 set value "Ante Bonus: 5-to-1 on Straight Flush, 4-to-1 on Trips, 1-to-1 on Straight"

function yjcasino:triple_card/bet with storage yjcasino:bet