execute as @e[tag=ricochet_arrow] at @s run function mr_b:enchant/crossbow/ricochet/check_one
execute if entity @e[tag=ricochet_arrow] run schedule function mr_b:enchant/crossbow/ricochet/check_all 1t append
execute if entity @e[tag=eye_arrow] run schedule function mr_b:enchant/crossbow/ricochet/check_thing 1t append