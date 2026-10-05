execute if entity @s[name=quicksand,tag=armed_trap] run function mr_b:ability/trap/quicksand/quicksand_activated
execute if entity @s[name=frost,tag=armed_trap] run function mr_b:ability/trap/frost/frost_activated


tag @s add trap_activated

execute if entity @s[tag=delayed_trap] run tag @s add trap_winding
execute if entity @s[tag=delayed_trap] run tag @s remove armed_trap
execute if entity @s[tag=delayed_trap] run tag @s remove delayed_trap