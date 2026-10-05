tag @e[distance=..4] add mr_bind
execute if score @s mr_effect_bind_time matches ..100 run scoreboard players set @e[distance=..4] mr_effect_bind_time 100
execute as @a[tag=mr_bind] store result bossbar bind_effect max run scoreboard players get @s mr_effect_bind_time

playsound minecraft:block.sand.break master @a ~ ~ ~ 0.6 0.7
playsound minecraft:block.honey_block.slide master @a ~ ~ ~ 0.7 0.6
playsound minecraft:block.mud.place master @a ~ ~ ~ 0.6 0.5
playsound minecraft:block.sand.break master @a ~ ~ ~ 0.7 0.7
playsound minecraft:block.soul_sand.step master @a ~ ~ ~ 0.6 0.5
playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 0.4 0.6






kill @s