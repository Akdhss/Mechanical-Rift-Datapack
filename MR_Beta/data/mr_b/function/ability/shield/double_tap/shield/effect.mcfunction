execute as @s[tag=double_tap_shield_active] run effect give @s minecraft:resistance 1 255 true
execute as @s[tag=double_tap_shield_active] run attribute @s knockback_resistance base set 20
execute as @s[tag=double_tap_shield_active] run attribute @s explosion_knockback_resistance base set 20

execute store result bossbar double_tap_time value run scoreboard players get @s mr_ability_double_tap_time
execute store result bossbar double_tap_time_active value run scoreboard players get @s mr_ability_double_tap_time

execute as @s[tag=double_tap_shield_active] run particle minecraft:witch ~ ~ ~ 0.25 0 0.25 0 5 force
scoreboard players remove @s mr_ability_double_tap_time 1
execute if score @s mr_ability_double_tap_time matches ..0 at @s run function mr_b:ability/shield/double_tap/shield/expire

