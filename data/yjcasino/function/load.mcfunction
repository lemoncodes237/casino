tellraw @a "YJ Casino ALPHA"
scoreboard objectives add yj-id dummy
# Basic balance list
execute unless score $yj-total yj-id matches 1.. run data modify storage yjcasino:balance balance insert 0 value 0
execute unless score $yj-total yj-id matches 1.. run scoreboard players set $yj-total yj-id 1

scoreboard objectives add yj-money dummy
scoreboard objectives add yj-casino-temp dummy
scoreboard objectives add yj-casino-var dummy

scoreboard objectives add deposit-money-yj trigger
scoreboard objectives add withdraw-money-yj trigger
scoreboard objectives add deposit-money trigger
scoreboard objectives add withdraw-money trigger
scoreboard objectives add bank trigger

scoreboard objectives add yj-war-bet trigger

scoreboard players set $hundred yj-casino-var 100
scoreboard players set $thirteen yj-casino-var 13