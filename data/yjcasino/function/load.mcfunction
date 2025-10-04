tellraw @a "YJ Casino ALPHA"
scoreboard objectives add yj-id dummy
scoreboard objectives add yj-player-id dummy
# Basic balance list
execute unless score $yj-total yj-id matches 1.. run data modify storage yjcasino:balance balance insert 0 value 0
execute unless score $yj-total yj-id matches 1.. run scoreboard players set $yj-total yj-id 1

# For creating dealers
data modify storage yjcasino:dealer details set value [0]

scoreboard objectives add yj-money dummy
scoreboard objectives add yj-casino-temp dummy
scoreboard objectives add yj-casino-var dummy

scoreboard objectives add yj-dealer-rotation dummy
scoreboard objectives add yj-dealer-game dummy
scoreboard objectives add yj-dealer-minbet dummy
scoreboard objectives add yj-dealer-maxbet dummy
scoreboard objectives add yj-dealer-responsibility dummy
scoreboard objectives add yj-dealer-time dummy
scoreboard objectives add yj-cards dummy
scoreboard objectives add yj-stage dummy
scoreboard objectives add yj-total dummy
scoreboard objectives add yj-last-card dummy
scoreboard objectives add yj-last-suit dummy
scoreboard objectives add yj-dealer-time-to-finish dummy

scoreboard objectives add yj-cards-banker dummy
scoreboard objectives add yj-total-banker dummy

scoreboard objectives add yj-hole-card dummy

scoreboard objectives add deposit-money-yj trigger
scoreboard objectives add withdraw-money-yj trigger
scoreboard objectives add deposit-money trigger
scoreboard objectives add withdraw-money trigger
scoreboard objectives add bank trigger
scoreboard objectives add dealer-click custom:talked_to_villager

scoreboard objectives add yj-casino-last-bet dummy
scoreboard objectives add yj-bet trigger
scoreboard objectives add yj-special-bet trigger
scoreboard objectives add yj-original-bet trigger
scoreboard objectives add yj-bet-type dummy

# Fifty Fifty
scoreboard objectives add yj-fifty-fifty-commission dummy
# War
scoreboard objectives add yj-war-decision trigger
# Blackjack
scoreboard objectives add yj-blackjack-insurance-decision trigger
scoreboard objectives add yj-blackjack-decision trigger
scoreboard objectives add yj-blackjack-splits dummy
scoreboard objectives add yj-blackjack-split1-stage dummy
scoreboard objectives add yj-blackjack-split2-stage dummy
scoreboard objectives add yj-blackjack-split3-stage dummy
scoreboard objectives add yj-blackjack-split4-stage dummy
scoreboard objectives add yj-blackjack-split1-total dummy
scoreboard objectives add yj-blackjack-split2-total dummy
scoreboard objectives add yj-blackjack-split3-total dummy
scoreboard objectives add yj-blackjack-split4-total dummy
scoreboard objectives add yj-blackjack-split1-cards dummy
scoreboard objectives add yj-blackjack-split2-cards dummy
scoreboard objectives add yj-blackjack-split3-cards dummy
scoreboard objectives add yj-blackjack-split4-cards dummy

scoreboard players set $ten yj-casino-var 10
scoreboard players set $hundred yj-casino-var 100
scoreboard players set $fifty yj-casino-var 50
scoreboard players set $onefifty yj-casino-var 150
scoreboard players set $twohundred yj-casino-var 200
scoreboard players set $twofifty yj-casino-var 250
scoreboard players set $threehundred yj-casino-var 300
scoreboard players set $thousand yj-casino-var 1000
scoreboard players set $thirteen yj-casino-var 13
scoreboard players set $two yj-casino-var 2
scoreboard players set $three yj-casino-var 3
scoreboard players set $negation yj-casino-var -1
scoreboard players set $ninetyfive yj-casino-var 95
scoreboard players set $oneninetyfive yj-casino-var 195