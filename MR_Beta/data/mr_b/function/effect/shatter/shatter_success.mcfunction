function mr_b:sfx/effect/shatter/shatter
scoreboard players reset @s mr_effect_cold_time

execute store result score @s mr_effect_shatter_hp_max run attribute @s minecraft:max_health get
scoreboard players operation @s mr_effect_shatter_hp_dmg = @s mr_effect_shatter_hp_max
scoreboard players operation @s[tag=!boss] mr_effect_shatter_hp_dmg /= .mob mr_effect_shatter_hp_dmg
scoreboard players operation @s[tag=boss] mr_effect_shatter_hp_dmg /= .boss mr_effect_shatter_hp_dmg
execute store result storage mr_b:effect shatter.damage float 1 run scoreboard players get @s mr_effect_shatter_hp_dmg

scoreboard players reset @s mr_effect_shatter_hp_dmg
scoreboard players reset @s mr_effect_shatter_hp_max

function mr_b:effect/disarm/disarm_expire
function mr_b:effect/silence/silence_expire

function mr_b:effect/shatter/shatter_macro with storage mr_b:effect shatter