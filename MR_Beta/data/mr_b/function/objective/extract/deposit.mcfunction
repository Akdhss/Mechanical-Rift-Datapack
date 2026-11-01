clear @a[sort=nearest,limit=1] *[custom_data~{extract_item:true}] 1
scoreboard players add @s mr_obj_extract_resource 1
execute store result bossbar minecraft:obj_extract value run scoreboard players get @s mr_obj_extract_resource
execute if score @s mr_obj_extract_resource matches 15.. run function mr_b:objective/extract/event_end

execute as @a[team=rift_party,sort=nearest,limit=1] at @s run playsound mr_b:objective/extract/extract_deposit master @s