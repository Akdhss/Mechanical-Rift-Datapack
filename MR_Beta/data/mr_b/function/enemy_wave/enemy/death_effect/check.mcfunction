# warn-off-file target-selector-no-type
# warn-off-file execute-group

execute if score @s mr_enemy_death_check matches 1 run return fail

tag @s add death_effect_check

execute at @s[tag=extract_holder] unless entity @e[distance=..0.1,limit=1,tag=death_effect_check] run summon item ~ ~ ~ {Item:{id:ancient_debris,components:{custom_name:[{"text":"Solidified Fuel","italic":false}],lore:[[{"text":"Used to fuel the reactor","italic":false}]],rarity:epic,custom_data:{extract_item:true,mob_drop:true},entity_data:{id:item,Glowing:1b},max_stack_size:16,unbreakable:{},tooltip_display:{hidden_components:[unbreakable]}}}}

execute as @e[distance=0..,nbt={Item:{components:{"minecraft:custom_data":{extract_item:true}}}},type=minecraft:item] run data merge entity @s {Glowing:1b}


execute if entity @s[tag=silenced] run return fail









execute at @s[type=creeper] unless entity @e[distance=..0.1,limit=1,tag=death_effect_check] run function mr_b:enemy_wave/enemy/death_effect/creeper


execute at @s unless entity @e[distance=..0.1,limit=1,tag=death_effect_check] run scoreboard players set @s mr_enemy_death_check 1
tag @s remove death_effect_check

