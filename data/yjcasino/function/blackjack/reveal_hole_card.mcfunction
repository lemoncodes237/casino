# Reveal the hole card
scoreboard players operation $yj-arg1 yj-casino-var = @s yj-hole-card
execute positioned ^-0.1 ^1.06 ^1.9 facing ^ ^ ^3 run function yjcasino:card/deal_specific_card
scoreboard players add @s yj-stage 1

scoreboard players add @s yj-hole-card 1
execute if score @s yj-hole-card matches 11..13 run scoreboard players set @s yj-hole-card 10
scoreboard players operation @s yj-total += @s yj-hole-card
execute if score @s yj-hole-card matches 1 run tag @s add yj-blackjack-ace

execute if score @s yj-total matches 17.. run return run scoreboard players set @s yj-stage 74
execute if entity @s[tag=yj-blackjack-ace] if score @s yj-total matches 8.. run return run scoreboard players set @s yj-stage 74
execute if entity @s[tag=yj-blackjack-ace,tag=yj-s17] if score @s yj-total matches 7 run return run scoreboard players set @s yj-stage 74

scoreboard players add @s yj-cards 1

tellraw @a [{"score":{"objective":"yj-total","name":"@s"}}]