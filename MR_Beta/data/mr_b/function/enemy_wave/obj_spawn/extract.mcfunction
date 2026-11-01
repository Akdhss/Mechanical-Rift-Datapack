execute store result score @s mr_obj_extract_spawn_random run random value 1..10000

execute store result storage mr_b:math_store temp float 1 run scoreboard players get @e[limit=1,type=marker,name=player_spawn,distance=0..] mr_wave_enemy
data modify storage mr_b:math_store result set compute default float mr_b:0.05
execute store result score @s mr_obj_extract_spawn_random_value run data get storage mr_b:math_store result 1








execute if score @s mr_obj_extract_spawn_random <= @s mr_obj_extract_spawn_random_value run tag @s add special_attribute
execute if score @s mr_obj_extract_spawn_random <= @s mr_obj_extract_spawn_random_value run tag @s add extract_holder
execute if score @s mr_obj_extract_spawn_random <= @s mr_obj_extract_spawn_random_value run item replace entity @s armor.body with stone_button[enchantments={"mr_b:enemy/death_check":1},equippable={slot:body}]