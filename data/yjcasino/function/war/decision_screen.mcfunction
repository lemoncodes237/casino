scoreboard players add @s yj-stage 1

# Now decide if you want to double down or not!
scoreboard players operation $yj-temp yj-player-id = @s yj-player-id
execute as @a if score @s yj-id = $yj-temp yj-player-id run scoreboard players enable @s yj-war-decision
execute as @a if score @s yj-id = $yj-temp yj-player-id run dialog show @s yjcasino:war_decision