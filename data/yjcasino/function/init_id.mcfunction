# copy the score of the fake player to the player
scoreboard players operation @s yj-id = $yj-total yj-id

execute store result storage yjcasino:balance id int 1 run scoreboard players get @s yj-id
data modify storage yjcasino:balance var set value 0

data modify storage yjcasino:balance balance append value 0
function yjcasino:money/set_balance with storage yjcasino:balance

# count up the score so the next player will get a different yj-id
scoreboard players add $yj-total yj-id 1

# From: https://www.reddit.com/r/MinecraftCommands/wiki/questions/linkentity/
