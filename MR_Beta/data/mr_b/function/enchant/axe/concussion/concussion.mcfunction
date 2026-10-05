execute if entity @s[tag=mr_stun] run return fail
tag @s add mr_stun
execute if score @s mr_effect_stun_time matches ..40 run scoreboard players set @s mr_effect_stun_time 40
execute as @s store result bossbar stun_effect max run scoreboard players get @s mr_effect_stun_time
execute as @s store result bossbar silence_effect max run scoreboard players get @s mr_effect_stun_time
execute as @s store result bossbar disarm_effect max run scoreboard players get @s mr_effect_stun_time