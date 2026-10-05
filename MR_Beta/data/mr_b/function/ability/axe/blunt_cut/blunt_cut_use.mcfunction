advancement revoke @s only mr_b:ability/ab_blunt_cut
execute if score @s mr_ability_blunt_cd matches 1.. run return fail

scoreboard players set @s mr_ability_blunt_cd 5
tag @s add blunt_cut_firing

tag @a[tag=blunt_cut_firing] add silenced
execute if score @s mr_effect_silence_time matches ..60 run scoreboard players set @a[tag=blunt_cut_firing] mr_effect_silence_time 60

tag @a[tag=blunt_cut_firing] add mr_bind
execute if score @s mr_effect_bind_time matches ..60 run scoreboard players set @a[tag=blunt_cut_firing] mr_effect_bind_time 60



execute as @a[tag=blunt_cut_firing] store result bossbar silence_effect max run scoreboard players get @s mr_effect_silence_time
execute as @a[tag=blunt_cut_firing] store result bossbar bind_effect max run scoreboard players get @s mr_effect_bind_time

execute at @s positioned ~ ~ ~ anchored eyes run function mr_b:ability/axe/blunt_cut/blunt_cut_ray/laser

scoreboard players reset .distance global_range
tag @s remove blunt_cut_firing

clear @s[tag=!blunt_cut_hit] netherite_axe[custom_data={blunt_cut:1b}] 1
tag @s[tag=!blunt_cut_hit] remove ultimate_active
tag @s remove blunt_cut_hit