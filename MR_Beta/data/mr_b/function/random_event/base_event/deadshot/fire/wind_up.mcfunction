execute on target if entity @s[team=rift_party] run tag @s add deadshot_target

data modify entity @s last_hurt_by_mob set from entity @p[tag=deadshot_target] UUID
effect give @s slowness 1 255 true
scoreboard players add @s mr_special_enemy_deadshot_snipe 1
scoreboard players add @s mr_special_enemy_deadshot_snipe_pulse 1

execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 1..2 if score @s[tag=!deadshot_killing_fail] mr_special_enemy_deadshot_snipe matches 400 as @s run function mr_b:random_event/base_event/deadshot/line_new_target
execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 3 if score @s[tag=!deadshot_killing_fail] mr_special_enemy_deadshot_snipe matches 300 as @s run function mr_b:random_event/base_event/deadshot/line_new_target
execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 4 if score @s[tag=!deadshot_killing_fail] mr_special_enemy_deadshot_snipe matches 200 as @s run function mr_b:random_event/base_event/deadshot/line_new_target

execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 1..2 if score @s[tag=deadshot_killing_fail] mr_special_enemy_deadshot_snipe matches 400 as @s run function mr_b:random_event/base_event/deadshot/line_warning
execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 3 if score @s[tag=deadshot_killing_fail] mr_special_enemy_deadshot_snipe matches 300 as @s run function mr_b:random_event/base_event/deadshot/line_warning
execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 4 if score @s[tag=deadshot_killing_fail] mr_special_enemy_deadshot_snipe matches 200 as @s run function mr_b:random_event/base_event/deadshot/line_warning


execute if score @s mr_special_enemy_deadshot_snipe_pulse matches 15.. at @s anchored eyes facing entity @p[tag=deadshot_target] eyes run function mr_b:random_event/base_event/deadshot/fire/laser

execute if score @s mr_special_enemy_deadshot_snipe_pulse matches 15.. run scoreboard players reset @s mr_special_enemy_deadshot_snipe_pulse
scoreboard players reset .distance global_range
tag @a remove deadshot_target