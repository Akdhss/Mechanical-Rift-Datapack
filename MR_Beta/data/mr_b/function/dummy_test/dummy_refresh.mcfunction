tag @s add dps_timer_start

scoreboard players add @s mr_dummy_hit_count 1

scoreboard players operation @s mr_dummy_hp_calc = @s mr_dummy_hp_current
scoreboard players operation @s mr_dummy_hp_calc -= .const mr_dummy_hp_current

scoreboard players set .const mr_dummy_hp_current -1
scoreboard players operation @s mr_dummy_hp_calc *= .const mr_dummy_hp_current

execute if score @s mr_dummy_hp_calc > @s mr_dummy_hp_snapshot run scoreboard players operation @s mr_dummy_hp_snapshot = @s mr_dummy_hp_calc

scoreboard players operation @s mr_dummy_hp_count += @s mr_dummy_hp_calc

scoreboard players set .const mr_dummy_hp_current 10
scoreboard players operation @s mr_dummy_hp_average = @s mr_dummy_hp_count
scoreboard players operation @s mr_dummy_hp_average /= .const mr_dummy_hp_current

execute as @e[tag=dummy] run data modify entity @s Health set value 10000f

scoreboard players set .const mr_dummy_hp_current 1024

