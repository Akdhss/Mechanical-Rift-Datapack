tag @s add mr_bind
execute if score @s mr_effect_bind_time matches ..40 run scoreboard players set @s mr_effect_bind_time 40
execute as @s store result bossbar bind_effect max run scoreboard players get @s mr_effect_bind_time