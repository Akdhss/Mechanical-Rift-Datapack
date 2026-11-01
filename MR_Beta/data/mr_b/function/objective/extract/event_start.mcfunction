execute if entity @s[tag=obj_extract] run function mr_b:objective/obj_check
execute if entity @s[tag=obj_extract] run return fail

scoreboard players add @s mr_obj_count 1
tag @s add obj_extract

scoreboard players set @s mr_obj_extract_resource 0
scoreboard players set @a mr_shop_player_currency_obj 0


execute store result storage mr_b:math_store temp float 1 run scoreboard players get @e[limit=1,type=marker,name=player_spawn,distance=0..] mr_wave_enemy
data modify storage mr_b:math_store result set compute default float mr_b:0.01
execute store result bossbar obj_extract max run data get storage mr_b:math_store result 1


bossbar set minecraft:obj_extract value 0
execute as @a[team=rift_party] at @s run playsound mr_b:objective/extract/extract_announcement master @s
bossbar set minecraft:obj_extract players @a[team=rift_party] 