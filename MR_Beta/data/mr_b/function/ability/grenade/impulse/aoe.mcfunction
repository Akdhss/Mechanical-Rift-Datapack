execute as @s[name=impulse_aoe] if score @s mr_throwable_molotov_dr matches 1..60 run particle dust_color_transition{from_color:[0.22,0.82,0.0],to_color:[0.13,0.76,0.0],scale:1} ~ ~ ~ .2 .2 .2 0 10
execute as @s[name=impulse_aoe] if score @s mr_throwable_molotov_dr matches 61..120 run particle dust_color_transition{from_color:[0.96,0.75,0.16],to_color:[0.76,0.6,0.0],scale:1} ~ ~ ~ .2 .2 .2 0 10
execute as @s[name=impulse_aoe] if score @s mr_throwable_molotov_dr matches 121..181 run particle dust_color_transition{from_color:[0.98,0.28,0.16],to_color:[0.74,0.0,0.0],scale:1} ~ ~ ~ .2 .2 .2 0 10

execute if score @s mr_throwable_molotov_tick matches 60.. at @s run function mr_b:ability/grenade/impulse/aoe_effect
execute if score @s mr_throwable_molotov_tick matches 35 at @s run playsound mr_b:skill/impulse/stun master @a ~ ~ ~ 50

execute if score @s mr_throwable_molotov_tick matches 60.. run scoreboard players reset @s mr_throwable_molotov_tick
scoreboard players add @s mr_throwable_molotov_dr 1
scoreboard players add @s mr_throwable_molotov_tick 1

execute if score @s mr_throwable_molotov_dr matches 181.. run kill @s


