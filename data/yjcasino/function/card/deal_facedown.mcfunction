summon item_display ~ ~ ~ {Tags:["yj-card","yj-card-temp","yj-hole-card"],item:{id:"diamond",components:{item_model:"cards:back"}},item_display:"fixed",transformation:{left_rotation:[-1,0,0,1],right_rotation:[0,0,0,1],scale:[0.4,0.4,0.4],translation:[0,0,0]}}

execute as @e[type=item_display,distance=..1,tag=yj-card-temp,sort=nearest,limit=1] run rotate @s facing ^ ^ ^1
execute as @e[type=item_display,distance=..1,tag=yj-card-temp,sort=nearest,limit=1] run tag @s remove yj-card-temp

playsound block.stone.place master @a ~ ~ ~

scoreboard players add @s yj-stage 1