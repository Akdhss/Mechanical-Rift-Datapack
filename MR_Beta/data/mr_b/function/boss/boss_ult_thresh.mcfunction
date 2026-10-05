execute as @s[tag=!boss_invulnerable] store result score @s mr_boss_max_hp run attribute @s max_health get
execute as @s[tag=!boss_invulnerable] store result score @s mr_boss_hp run data get entity @s Health
execute as @s[tag=!boss_invulnerable] run scoreboard players operation @s mr_boss_thresh = @s mr_boss_hp
execute as @s[tag=!boss_invulnerable] run scoreboard players operation @s mr_boss_thresh /= .shop mr_boss_const