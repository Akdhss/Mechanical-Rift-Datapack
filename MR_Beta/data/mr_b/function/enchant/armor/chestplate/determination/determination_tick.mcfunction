effect clear @s absorption

execute as @e[name=determination] at @s as @e[tag=determination_active] if score @s mr_special_enemy_mirror_link = @n[name=determination] mr_special_enemy_mirror_link run tp @s @n[name=determination]

execute as @e[name=determination] at @s as @e[tag=determination_active] if score @s mr_special_enemy_mirror_link = @n[name=determination] mr_special_enemy_mirror_link run kill @n[name=determination]

scoreboard players add @s mr_enchant_determination_time 1

attribute @s max_health modifier remove determination_max_health
attribute @s max_health modifier remove determination_decay

attribute @s max_health modifier add determination_max_health 1 add_multiplied_base

execute if score @s mr_enchant_determination_time matches 50..99 run attribute @s max_health modifier add determination_decay -.05 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 100..124 run attribute @s max_health modifier add determination_decay -.10 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 125..149 run attribute @s max_health modifier add determination_decay -.15 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 150..174 run attribute @s max_health modifier add determination_decay -.20 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 175..199 run attribute @s max_health modifier add determination_decay -.25 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 200..224 run attribute @s max_health modifier add determination_decay -.30 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 225..249 run attribute @s max_health modifier add determination_decay -.35 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 250..274 run attribute @s max_health modifier add determination_decay -.40 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 275..299 run attribute @s max_health modifier add determination_decay -.45 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 300..324 run attribute @s max_health modifier add determination_decay -.50 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 325..349 run attribute @s max_health modifier add determination_decay -.55 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 350..374 run attribute @s max_health modifier add determination_decay -.60 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 375..399 run attribute @s max_health modifier add determination_decay -.65 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 400..424 run attribute @s max_health modifier add determination_decay -.70 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 425..449 run attribute @s max_health modifier add determination_decay -.75 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 450..474 run attribute @s max_health modifier add determination_decay -.80 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 475..499 run attribute @s max_health modifier add determination_decay -.85 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 500..524 run attribute @s max_health modifier add determination_decay -.90 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 525..549 run attribute @s max_health modifier add determination_decay -.95 add_multiplied_total
execute if score @s mr_enchant_determination_time matches 550..600 run attribute @s max_health modifier add determination_decay -1 add_multiplied_total

execute if score @s mr_enchant_determination_time matches 601.. run function mr_b:enchant/armor/chestplate/determination/determination_expire


attribute @s attack_damage modifier add determination_attack_damage .5 add_multiplied_base
attribute @s knockback_resistance modifier add determination_max_health 10 add_multiplied_base
attribute @s explosion_knockback_resistance modifier add determination_max_health 10 add_multiplied_base

effect give @s instant_health 1 5 true

effect give @s resistance infinite 255 true

