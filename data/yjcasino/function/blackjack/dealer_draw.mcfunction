execute store result storage yjcasino:blackjack offset double 0.1 run scoreboard players get @s yj-cards
execute store result storage yjcasino:blackjack yoffset double 0.01 run scoreboard players get @s yj-cards
execute positioned ^ ^1.01 ^1.8 facing ^ ^ ^3 run function yjcasino:blackjack/deal_next_card_dealer with storage yjcasino:blackjack

tellraw @a [{"score":{"objective":"yj-total","name":"@s"}}]

execute if score @s yj-total matches 17.. run return run scoreboard players set @s yj-stage 74
execute if entity @s[tag=yj-blackjack-ace] if score @s yj-total matches 8..11 run return run scoreboard players set @s yj-stage 74
execute if entity @s[tag=yj-blackjack-ace,tag=yj-s17] if score @s yj-total matches 7 run return run scoreboard players set @s yj-stage 74