scoreboard players add @s yj-stage 1

# Now decide if you want to take insurance!
scoreboard players operation $yj-temp yj-player-id = @s yj-player-id
execute as @a if score @s yj-id = $yj-temp yj-player-id run scoreboard players enable @s yj-blackjack-insurance-decision

execute store result storage yjcasino:decision sum int 1 run scoreboard players get @s yj-total
execute as @a if score @s yj-id = $yj-temp yj-player-id run function yjcasino:blackjack/insurance_dialog with storage yjcasino:decision