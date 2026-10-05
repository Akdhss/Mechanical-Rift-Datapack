
execute as @e[distance=..1,team=rift_enemy] at @s as @e[tag=claymore_los_check] run function mr_b:ability/trap/claymore/claymore_collision
execute as @e[distance=...75,team=rift_party] at @s as @e[tag=claymore_los_check] run function mr_b:ability/trap/claymore/claymore_collision

playsound minecraft:block.note_block.hat ambient @a[distance=..3.5] ~ ~ ~ 0.05 1.5

execute unless entity @s[tag=5] run particle dust{color:[1,0,0],scale:.3} ~ ~ ~ 0.05 0.05 0.05 0 1 force @a[distance=..5]
#particle mycelium ^ ^ ^ 0.05 0.05 0.05 0 1 force

scoreboard players add .distance global_range 1

#function mr_b:ability/trap/claymore/claymore_warning

execute if score .distance global_range matches ..25 positioned ^ ^ ^.25 rotated ~ ~ if block ~ ~ ~ #mr_b:raycast_pass run function mr_b:ability/trap/claymore/claymore_laser

