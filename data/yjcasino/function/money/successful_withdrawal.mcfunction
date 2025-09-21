function yjcasino:money/give_diamonds with storage yjcasino:temp
scoreboard players operation @s yj-money -= @s withdraw-money-yj
scoreboard players set @s withdraw-money-yj 0
tellraw @s ["Transaction Successful! Your balance: ",{"text":"$","color":"aqua"},{"color":"aqua","score":{"objective":"yj-money","name":"@s"}}]

execute store result storage yjcasino:balance var int 1 run scoreboard players get @s yj-money
function yjcasino:money/set_balance with storage yjcasino:balance