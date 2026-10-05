execute as @s store result storage mr_b:range range.x int 1 run random value -4..4
execute as @s store result storage mr_b:range range.y int 1 run random value 0..3
execute as @s store result storage mr_b:range range.z int 1 run random value -4..4
scoreboard players add .failsafe mr_ability_double_tap_failsafe 1
execute if score .failsafe mr_ability_double_tap_failsafe matches ..10 run function mr_b:ability/shield/double_tap/orb/orb_range with storage mr_b:range range
scoreboard players reset .distance global_range