execute store result score $yj-dealer-rotation yj-casino-temp run data get storage yjcasino:dealer details[0]
execute store result score $yj-dealer-game yj-casino-temp run data get storage yjcasino:dealer details[1]
execute store result score $yj-dealer-minbet yj-casino-temp run data get storage yjcasino:dealer details[2]
execute store result score $yj-dealer-maxbet yj-casino-temp run data get storage yjcasino:dealer details[3]
execute store result score $yj-dealer-responsibility yj-casino-temp run data get storage yjcasino:dealer details[4]

data modify storage yjcasino:dealer details set value [0]
execute as @a[tag=making-dealer,limit=1] at @s run function yjcasino:setup/modify_dealer