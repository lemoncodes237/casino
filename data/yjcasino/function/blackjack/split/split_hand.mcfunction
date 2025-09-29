# Deal with splits
# Will put one on left, two on right

# 3 2 1 4

# If just split, deal with that first
execute if score @s yj-blackjack-split1-stage matches 0 run return run function yjcasino:blackjack/split/begin

execute if score @s yj-blackjack-split4-stage matches 1..60 positioned ^1.0 ^ ^ run return run function yjcasino:blackjack/split/act {split:4}
execute if score @s yj-blackjack-split4-stage matches 70 positioned ^ ^-0.01 ^0.8 run return run function yjcasino:blackjack/split/loss {split:4}
execute if score @s yj-blackjack-split4-stage matches 98 positioned ^1.0 ^ ^ facing ^1 ^ ^ positioned ^ ^ ^0.4 run return run function yjcasino:blackjack/split/deal_card {split:4,offset:0.2,yoffset:0.02}

execute if score @s yj-blackjack-split1-stage matches 1..60 positioned ^0.5 ^ ^ run return run function yjcasino:blackjack/split/act {split:1}
execute if score @s yj-blackjack-split1-stage matches 70 positioned ^ ^-0.01 ^0.8 run return run function yjcasino:blackjack/split/loss {split:1}
execute if score @s yj-blackjack-split1-stage matches 98 positioned ^0.5 ^ ^ facing ^1 ^ ^ positioned ^ ^ ^0.4 run return run function yjcasino:blackjack/split/deal_card {split:1,offset:0.2,yoffset:0.02}

execute if score @s yj-blackjack-split2-stage matches 1..60 positioned ^ ^ ^ run return run function yjcasino:blackjack/split/act {split:2}
execute if score @s yj-blackjack-split2-stage matches 70 positioned ^ ^-0.01 ^0.8 run return run function yjcasino:blackjack/split/loss {split:2}
execute if score @s yj-blackjack-split2-stage matches 98 positioned ^ ^ ^ facing ^1 ^ ^ positioned ^ ^ ^0.4 run return run function yjcasino:blackjack/split/deal_card {split:2,offset:0.2,yoffset:0.02}

execute if score @s yj-blackjack-split3-stage matches 1..60 positioned ^-0.5 ^ ^ run return run function yjcasino:blackjack/split/act {split:3}
execute if score @s yj-blackjack-split3-stage matches 70 positioned ^ ^-0.01 ^0.8 run return run function yjcasino:blackjack/split/loss {split:3}
execute if score @s yj-blackjack-split3-stage matches 98 positioned ^-0.5 ^ ^ facing ^1 ^ ^ positioned ^ ^ ^0.4 run return run function yjcasino:blackjack/split/deal_card {split:3,offset:0.2,yoffset:0.02}

scoreboard players set @s yj-stage 81