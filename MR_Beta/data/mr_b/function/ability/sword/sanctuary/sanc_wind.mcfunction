
scoreboard players add .blessing mr_ability_sanc_count 1
tag @e[tag=!sanc_blessing_target,limit=1,team=rift_enemy,sort=random] add sanc_blessing_target


execute at @a[team=rift_party] run function mr_b:sfx/target_lock

effect give @e[tag=sanc_blessing_target] glowing 3 255 true

execute if score .blessing mr_ability_sanc_count matches 4 run return fail
execute unless entity @e[team=rift_enemy,tag=!sanc_blessing_target] run scoreboard players set .blessing mr_ability_sanc_count 3
execute if score .blessing mr_ability_sanc_count matches 3 run tellraw @a [{text:"[",bold:true,color:"dark_green"},{selector:"@a[tag=sanc_activate,limit=1]"},{text:"]",bold:true,color:"dark_green"},{text:" Bear the star's blessing!",bold:true,color:"dark_red"}]
execute if score .blessing mr_ability_sanc_count matches 3 run tag @a[tag=sanc_activate] add sanc_finish
execute if score .blessing mr_ability_sanc_count matches 3 run tag @a[tag=sanc_activate] remove sanc_activate
execute unless entity @e[team=rift_enemy,tag=!sanc_blessing_target] run scoreboard players set .blessing mr_ability_sanc_count 4
execute if score .blessing mr_ability_sanc_count matches ..3 run schedule function mr_b:ability/sword/sanctuary/sanc_wind 1.25s
