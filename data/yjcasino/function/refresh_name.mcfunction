summon text_display ~ ~ ~ {Tags:["yj-name-reader"]}
data modify entity @e[type=text_display,tag=yj-name-reader,limit=1] text set value [{"selector":"@p"}]
data modify storage yjcasino:temp name set from entity @e[type=text_display,tag=yj-name-reader,limit=1] text.text
kill @e[type=text_display,tag=yj-name-reader,distance=..1]
execute store result storage yjcasino:temp id int 1 run scoreboard players get @s yj-id

function yjcasino:money/set_username with storage yjcasino:temp