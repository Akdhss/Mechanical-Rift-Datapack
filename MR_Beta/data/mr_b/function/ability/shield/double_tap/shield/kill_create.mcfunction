execute if score @s[tag=!double_tap_user] mr_ability_double_tap_kill_cd matches 1.. run return fail

tag @s add double_tap_active
tag @s add double_tap_shield_active
scoreboard players set @s mr_ability_double_tap_time 350
scoreboard players set @s[tag=!double_tap_user] mr_ability_double_tap_kill_cd 100
effect give @s instant_health 1 0 true
function mr_b:effect/cleanse/cleanse_effect
execute as @s store result bossbar double_tap_time max run scoreboard players get @s mr_ability_double_tap_time
execute as @s store result bossbar double_tap_time_active max run scoreboard players get @s mr_ability_double_tap_time

playsound mr_b:double_tap_refresh master @s

scoreboard players reset @s mr_ability_double_tap_kill