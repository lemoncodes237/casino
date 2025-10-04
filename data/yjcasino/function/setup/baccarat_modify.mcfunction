tag @s remove yj-tie-9
execute if score $yj-tie yj-casino-temp matches 9 run tag @s add yj-tie-9
tag @s remove yj-baccarat-ez
tag @s remove yj-baccarat-no
tag @s remove yj-baccarat-5
execute if score $yj-commission yj-casino-temp matches 1 run tag @s add yj-baccarat-5
execute if score $yj-commission yj-casino-temp matches 2 run tag @s add yj-baccarat-no
execute if score $yj-commission yj-casino-temp matches 3 run tag @s add yj-baccarat-ez