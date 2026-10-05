tag @s add silenced
execute if entity @n[type=pillager,tag=captain,tag=boss_invulnerable] run damage @s 4 mob_projectile by @n[type=pillager,tag=captain]
execute if entity @n[type=pillager,tag=captain,tag=!boss_invulnerable] run damage @s 14 mob_projectile by @n[type=pillager,tag=captain]
execute if score @s mr_effect_silence_time matches ..100 run scoreboard players set @s mr_effect_silence_time 100

bossbar add silence_effect [{"text":"Silence Duration","bold":true,"color":"white"}]
bossbar set minecraft:silence_effect color white
bossbar set minecraft:silence_effect players @a[tag=silenced]

bossbar set minecraft:silence_effect max 100

