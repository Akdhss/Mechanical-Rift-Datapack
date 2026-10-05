effect give @s slowness 2 4 true
damage @s 7 magic
tag @s add silenced
execute if score @s mr_effect_silence_time matches ..75 run scoreboard players set @s mr_effect_silence_time 75

bossbar add silence_effect [{"text":"Silence Duration","bold":true,"color":"white"}]
bossbar set minecraft:silence_effect color white
bossbar set minecraft:silence_effect players @a[tag=silenced]

bossbar set minecraft:silence_effect max 75