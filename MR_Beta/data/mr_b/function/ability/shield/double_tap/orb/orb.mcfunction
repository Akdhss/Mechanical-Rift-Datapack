tag @s add double_tap_victim


scoreboard players reset .failsafe mr_ability_double_tap_failsafe 
execute on attacker run tag @s add double_tap_attack

execute as @s store result storage mr_b:range range.x int 1 run random value -4..4
execute as @s store result storage mr_b:range range.y int 1 run random value 0..3
execute as @s store result storage mr_b:range range.z int 1 run random value -4..4
function mr_b:ability/shield/double_tap/orb/orb_range with storage mr_b:range range
tag @a remove double_tap_attack
tag @s remove double_tap_victim
scoreboard players reset .distance global_range

