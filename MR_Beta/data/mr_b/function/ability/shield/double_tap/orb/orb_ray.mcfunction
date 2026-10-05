execute unless block ~ ~ ~ air as @e[tag=double_tap_victim] at @s run function mr_b:ability/shield/double_tap/orb/orb_ray_reset
execute unless block ~ ~ ~ air run return fail

execute as @e[tag=double_tap_attack] positioned ~-0.50 ~-0.50 ~-0.5 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function mr_b:ability/shield/double_tap/orb/orb_hit with storage mr_b:range range


scoreboard players add .distance global_range 1

#execute as @e[tag=!double_tap_attack,name=!double_tap_orb] positioned ~-0.50 ~-0.50 ~-0.5 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function mr_b:ability/shield/double_tap/orb/orb_ray_reset

execute if score .distance global_range matches ..500 positioned ^ ^ ^.25 unless block ~ ~ ~ air as @e[tag=double_tap_victim] at @s run function mr_b:ability/shield/double_tap/orb/orb_ray_reset

execute if score .distance global_range matches ..500 positioned ^ ^ ^.25 if block ~ ~ ~ air run function mr_b:ability/shield/double_tap/orb/orb_ray





