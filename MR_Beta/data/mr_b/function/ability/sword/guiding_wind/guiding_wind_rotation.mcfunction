tp @s ~ ~ ~ facing entity @p[tag=guiding_wind,limit=1] eyes

execute store result storage mr_b:launch jump.x double 1 run data get entity @s Rotation[0] 1

execute as @p[tag=guiding_wind,limit=1] at @s run function mr_b:ability/sword/guiding_wind/guiding_wind_macro with storage mr_b:launch jump



kill @s



tag @a remove guiding_wind