scoreboard players remove @s mr_obj_count 1
tag @s remove obj_extract


function mr_b:objective/extract/clear
say obj complete [extract]

execute if score @e[limit=1,type=marker,name=player_spawn] mr_wave matches 3.. run scoreboard players add @a[team=rift_party] mr_shop_player_currency_obj 25
execute if score @e[limit=1,type=marker,name=player_spawn] mr_wave matches ..2 run scoreboard players add @a[team=rift_party] mr_shop_player_currency_obj 100

execute as @a[team=rift_party] at @s run playsound mr_b:objective/extract/extract_success master @s

scoreboard players set @s mr_obj_extract_resource 0
bossbar set minecraft:obj_extract value 0
bossbar set minecraft:obj_extract players @a[tag=test] 