tag @s add player_relocate

execute as @s store result storage mr_b:range range.x int 1 run random value -5..5
execute as @s store result storage mr_b:range range.y int 1 run random value 0..3
execute as @s store result storage mr_b:range range.z int 1 run random value -5..5
execute at @e[name=player_spawn,sort=nearest,limit=1,type=marker] run function mr_b:mechanics/player/spawn/check with storage mr_b:range range

scoreboard players reset .distance global_range