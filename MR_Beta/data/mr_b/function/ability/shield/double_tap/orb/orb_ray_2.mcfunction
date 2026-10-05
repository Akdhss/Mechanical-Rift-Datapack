
execute as @e[tag=double_tap_victim] positioned ~-0.50 ~-0.50 ~-0.5 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run scoreboard players add .distance global_range 500


particle dust{color:[0.99,0.64,1.0],scale:1} ~ ~1 ~ 0 0 0 0 1

scoreboard players add .distance global_range 1



execute if score .distance global_range matches ..500 positioned ^ ^ ^.1 run function mr_b:ability/shield/double_tap/orb/orb_ray_2





