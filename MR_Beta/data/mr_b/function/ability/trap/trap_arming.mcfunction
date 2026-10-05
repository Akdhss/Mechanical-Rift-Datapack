execute if entity @s[name=landmine] at @s run function mr_b:ability/trap/landmine/landmine_arming
execute if entity @s[name=quicksand] at @s run function mr_b:ability/trap/quicksand/quicksand_arming
execute if entity @s[name=claymore] at @s run function mr_b:ability/trap/claymore/claymore_arming

execute if entity @s[name=frost] at @s run function mr_b:ability/trap/frost/frost_arming

scoreboard players reset @s mr_trap_arm_time
tag @s remove unarmed_trap
tag @s add armed_trap
