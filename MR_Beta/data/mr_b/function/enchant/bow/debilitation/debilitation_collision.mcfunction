damage @s 5 magic by @a[limit=1,tag=debil_fire]

tag @e[distance=..4,team=rift_enemy] add mr_bind
execute if score @s mr_effect_bind_time matches ..200 run scoreboard players set @e[distance=..4,team=rift_enemy] mr_effect_bind_time 200
execute as @a[tag=mr_bind] store result bossbar bind_effect max run scoreboard players get @s mr_effect_bind_time
#playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 0.9 0.6
#playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 0.7 0.7
#playsound minecraft:block.glass.break master @a ~ ~ ~ 0.5 0.5