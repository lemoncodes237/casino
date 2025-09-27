# Move stage
scoreboard players add @s yj-stage 1

# If no insurance, return
execute if entity @s[tag=!yj-blackjack-insured] run return 0

scoreboard players operation $yj-arg1 yj-casino-var = @s yj-id
scoreboard players operation $yj-arg2 yj-casino-var = @s yj-bet

# Give half of it depending on responsibility
scoreboard players operation $yj-arg2 yj-casino-var *= @s yj-dealer-responsibility
scoreboard players operation $yj-arg2 yj-casino-var /= $two yj-casino-var
function yjcasino:change_money

tag @s remove yj-blackjack-insured

execute at @s positioned ^ ^0.15 ^1 run kill @e[type=text_display,tag=yj-insurance-display,distance=..1,limit=1,sort=nearest]

scoreboard players operation $yj-temp yj-id = @s yj-player-id
execute as @a if score @s yj-id = $yj-temp yj-id at @s run playsound entity.player.hurt master @s ~ ~ ~