scoreboard players operation $yj-temp yj-id = @s yj-player-id
execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.player.hurt master @s ~ ~ ~

data modify storage yjcasino:temp final_bet set value 0
function yjcasino:bet/show_bet with storage yjcasino:temp