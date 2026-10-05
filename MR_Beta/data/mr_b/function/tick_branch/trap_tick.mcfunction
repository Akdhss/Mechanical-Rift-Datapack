# warn-off-file target-selector-no-type
# warn-off-file execute-group


execute if entity @s[name=landmine] at @s run function mr_b:ability/trap/landmine/landmine_body
execute if entity @s[name=quicksand] at @s run function mr_b:ability/trap/quicksand/quicksand_body
execute if entity @s[name=claymore] at @s run function mr_b:ability/trap/claymore/claymore_body
execute if entity @s[name=frost] at @s run function mr_b:ability/trap/frost/frost_body

execute if entity @s[tag=unarmed_trap] run scoreboard players add @s mr_trap_arm_time 1
execute if entity @s[tag=trap_winding] run scoreboard players add @s mr_trap_wind_up 1

execute if entity @s[tag=unarmed_trap,name=landmine] if score @s mr_trap_arm_time matches 100.. run function mr_b:ability/trap/trap_arming
execute if entity @s[tag=unarmed_trap,name=quicksand] if score @s mr_trap_arm_time matches 60.. run function mr_b:ability/trap/trap_arming
execute if entity @s[tag=unarmed_trap,name=claymore] if score @s mr_trap_arm_time matches 80.. run function mr_b:ability/trap/trap_arming
execute if entity @s[tag=unarmed_trap,name=frost] if score @s mr_trap_arm_time matches 60.. run function mr_b:ability/trap/trap_arming

execute if entity @s[tag=armed_trap,name=landmine] at @s if entity @e[team=rift_enemy,distance=...5] run function mr_b:ability/trap/trap_activated
execute if entity @s[tag=armed_trap,name=quicksand] at @s if entity @e[team=rift_enemy,distance=..1.5] run function mr_b:ability/trap/trap_activated
execute if entity @s[tag=armed_trap,name=claymore] at @s anchored eyes run function mr_b:ability/trap/claymore/claymore_raycast
execute if entity @s[tag=armed_trap,name=frost] at @s if entity @e[team=rift_enemy,distance=..1.5] run function mr_b:ability/trap/trap_activated
execute if entity @s[tag=armed_trap,name=frost] at @s if entity @e[team=rift_party,distance=..1.5] run function mr_b:ability/trap/trap_activated

execute if entity @s[tag=trap_activated,name=landmine] at @s run function mr_b:ability/trap/landmine/landmine_effect
execute if entity @s[tag=trap_activated,name=quicksand] at @s if score @s mr_trap_wind_up matches 20.. run function mr_b:ability/trap/quicksand/quicksand_effect
execute if entity @s[tag=trap_activated,name=frost] at @s if score @s mr_trap_wind_up matches 20.. run function mr_b:ability/trap/frost/frost_effect