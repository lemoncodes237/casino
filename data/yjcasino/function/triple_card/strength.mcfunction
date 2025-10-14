$scoreboard players operation $yj-$(player)1-rank yj-casino-temp = @s yj-card1
$scoreboard players operation $yj-$(player)1-suit yj-casino-temp = @s yj-card1
$scoreboard players operation $yj-$(player)1-rank yj-casino-temp %= $thirteen yj-casino-var
$scoreboard players operation $yj-$(player)1-suit yj-casino-temp /= $thirteen yj-casino-var
$execute if score $yj-$(player)1-rank yj-casino-temp matches 0 run scoreboard players set $yj-$(player)1-rank yj-casino-temp 13

$scoreboard players operation $yj-$(player)2-rank yj-casino-temp = @s yj-card2
$scoreboard players operation $yj-$(player)2-suit yj-casino-temp = @s yj-card2
$scoreboard players operation $yj-$(player)2-rank yj-casino-temp %= $thirteen yj-casino-var
$scoreboard players operation $yj-$(player)2-suit yj-casino-temp /= $thirteen yj-casino-var
$execute if score $yj-$(player)2-rank yj-casino-temp matches 0 run scoreboard players set $yj-$(player)2-rank yj-casino-temp 13

$scoreboard players operation $yj-$(player)3-rank yj-casino-temp = @s yj-card3
$scoreboard players operation $yj-$(player)3-suit yj-casino-temp = @s yj-card3
$scoreboard players operation $yj-$(player)3-rank yj-casino-temp %= $thirteen yj-casino-var
$scoreboard players operation $yj-$(player)3-suit yj-casino-temp /= $thirteen yj-casino-var
$execute if score $yj-$(player)3-rank yj-casino-temp matches 0 run scoreboard players set $yj-$(player)3-rank yj-casino-temp 13

# Time to sort
$execute if score $yj-$(player)2-rank yj-casino-temp < $yj-$(player)3-rank yj-casino-temp run scoreboard players operation $yj-$(player)2-rank yj-casino-temp >< $yj-$(player)3-rank yj-casino-temp
$execute if score $yj-$(player)1-rank yj-casino-temp < $yj-$(player)2-rank yj-casino-temp run scoreboard players operation $yj-$(player)1-rank yj-casino-temp >< $yj-$(player)2-rank yj-casino-temp
$execute if score $yj-$(player)2-rank yj-casino-temp < $yj-$(player)3-rank yj-casino-temp run scoreboard players operation $yj-$(player)2-rank yj-casino-temp >< $yj-$(player)3-rank yj-casino-temp
# Now 1 holds the highest, 2 holds the middle, 3 holds the lowest

# Check for straight
scoreboard players set $yj-straight yj-casino-temp 0
# First check for A 2 3 straight
$execute if score $yj-$(player)1-rank yj-casino-temp matches 13 if score $yj-$(player)2-rank yj-casino-temp matches 3 if score $yj-$(player)3-rank yj-casino-temp matches 2 run scoreboard players set $yj-straight yj-casino-temp 1
# Now check the other straights
$scoreboard players remove $yj-$(player)1-rank yj-casino-temp 2
$scoreboard players remove $yj-$(player)2-rank yj-casino-temp 1
# If all three are equal, have straight!
$execute if score $yj-$(player)1-rank yj-casino-temp = $yj-$(player)2-rank yj-casino-temp if score $yj-$(player)2-rank yj-casino-temp = $yj-$(player)3-rank yj-casino-temp run scoreboard players set $yj-straight yj-casino-temp 1
# Add it back
$scoreboard players add $yj-$(player)1-rank yj-casino-temp 2
$scoreboard players add $yj-$(player)2-rank yj-casino-temp 1

# Check for flush
scoreboard players set $yj-flush yj-casino-temp 0
$execute if score $yj-$(player)1-suit yj-casino-temp = $yj-$(player)2-suit yj-casino-temp if score $yj-$(player)2-suit yj-casino-temp = $yj-$(player)3-suit yj-casino-temp run scoreboard players set $yj-flush yj-casino-temp 1

# Now we go from weakest to highest to figure out the 
# 0 is high card
# 1 is pair
# 2 is flush
# 3 is straight
# 4 is trips
# 5 is straight flush
$scoreboard players set $yj-$(player)-strength yj-casino-temp 0
$scoreboard players set $yj-$(player)-pair yj-casino-temp 0

# Check for pair
$execute if score $yj-$(player)1-rank yj-casino-temp = $yj-$(player)2-rank yj-casino-temp run scoreboard players operation $yj-$(player)-pair yj-casino-temp = $yj-$(player)1-rank yj-casino-temp
$execute if score $yj-$(player)1-rank yj-casino-temp = $yj-$(player)3-rank yj-casino-temp run scoreboard players operation $yj-$(player)-pair yj-casino-temp = $yj-$(player)1-rank yj-casino-temp
$execute if score $yj-$(player)2-rank yj-casino-temp = $yj-$(player)3-rank yj-casino-temp run scoreboard players operation $yj-$(player)-pair yj-casino-temp = $yj-$(player)2-rank yj-casino-temp
$execute if score $yj-$(player)-pair yj-casino-temp matches 1.. run scoreboard players set $yj-$(player)-strength yj-casino-temp 1

# Check for flush
$execute if score $yj-flush yj-casino-temp matches 1 run scoreboard players set $yj-$(player)-strength yj-casino-temp 2
# Check for straight
$execute if score $yj-straight yj-casino-temp matches 1 run scoreboard players set $yj-$(player)-strength yj-casino-temp 3

# Check for trips
$execute if score $yj-$(player)1-rank yj-casino-temp = $yj-$(player)2-rank yj-casino-temp if score $yj-$(player)2-rank yj-casino-temp = $yj-$(player)3-rank yj-casino-temp run scoreboard players operation $yj-$(player)-pair yj-casino-temp = $yj-$(player)1-rank yj-casino-temp
$execute if score $yj-$(player)1-rank yj-casino-temp = $yj-$(player)2-rank yj-casino-temp if score $yj-$(player)2-rank yj-casino-temp = $yj-$(player)3-rank yj-casino-temp run scoreboard players set $yj-$(player)-strength yj-casino-temp 4

# Check for straight flush
$execute if score $yj-straight yj-casino-temp matches 1 if score $yj-flush yj-casino-temp matches 1 run scoreboard players set $yj-$(player)-strength yj-casino-temp 5

# Now we have the strength saved!