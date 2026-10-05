# warn-off-file target-selector-no-type
# warn-off-file execute-group

execute if entity @s[tag=!dps_timer_start] run particle dust{color:[1,0,0],scale:1} ~ ~2.5 ~ 0 0 0 1 1
execute if entity @s[tag=dps_timer_start] run particle dust{color:[0,1,0],scale:1} ~ ~2.5 ~ 0 0 0 1 1


scoreboard players add @s[tag=!dps_timer_start] mr_dummy_expire 1
execute store result score @s mr_dummy_hp_current run data get entity @s Health
execute if score @s mr_dummy_expire matches ..30 if score @s mr_dummy_hp_current < .const mr_dummy_hp_current on attacker run function mr_b:sfx/item_fail
execute if score @s mr_dummy_expire matches ..30 if score @s mr_dummy_hp_current < .const mr_dummy_hp_current run function mr_b:effect/cleanse/cleanse_effect
execute if score @s mr_dummy_expire matches ..30 if score @s mr_dummy_hp_current < .const mr_dummy_hp_current run data merge entity @s {NoAI:1b,Silent:1b}
execute if score @s mr_dummy_expire matches ..30 if score @s mr_dummy_hp_current < .const mr_dummy_hp_current run data modify entity @s Health set value 10000f
execute if score @s mr_dummy_expire matches ..10 run effect give @s glowing 1 1 true
execute if score @s mr_dummy_expire matches ..30 run return fail



execute if score @s mr_dummy_hp_current < .const mr_dummy_hp_current run function mr_b:dummy_test/dummy_refresh
execute if entity @s[tag=dps_timer_start] run scoreboard players add @s mr_dummy_timer 1
execute if score @s[tag=dps_timer_start] mr_dummy_timer matches 200.. run function mr_b:dummy_test/dummy_test_done

execute if score @s mr_dummy_expire matches 400.. run say dummy expired
execute if score @s mr_dummy_expire matches 400.. run kill @s