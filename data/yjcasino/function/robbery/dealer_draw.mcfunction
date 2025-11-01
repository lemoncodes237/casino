execute store result storage yjcasino:robbery offset double 0.1 run scoreboard players get @s yj-cards
execute store result storage yjcasino:robbery yoffset double 0.01 run scoreboard players get @s yj-cards
execute positioned ^ ^1.01 ^1.8 facing ^ ^ ^3 run function yjcasino:robbery/deal_next_card_dealer with storage yjcasino:robbery

# tellraw @a [{"score":{"objective":"yj-total","name":"@s"}}]

execute if score @s yj-total matches 14.. run return run scoreboard players set @s yj-stage 90