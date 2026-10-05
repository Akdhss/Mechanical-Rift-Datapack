# warn-off-file target-selector-no-type
# warn-off-file execute-group
execute as @s[tag=center_molotov_aoe] run particle dust_color_transition{from_color:[1.0,0.22,0.08],to_color:[0.98,0.64,0.04],scale:1} ~ ~.2 ~ 1.5 .2 1.5 0 10
execute as @s[tag=center_molotov_aoe] run particle flame ~ ~.2 ~ 1.5 .2 1.5 0 2
execute as @s[tag=center_molotov_aoe] run particle minecraft:large_smoke ~ ~.2 ~ 1.5 .2 1.5 0 1

execute as @s[tag=side_molotov_aoe,scores={mr_throwable_molotov_dr=20..}] run particle dust_color_transition{from_color:[1.0,0.22,0.08],to_color:[0.98,0.64,0.04],scale:1} ~ ~.2 ~ 1.5 .2 1.5 0 10
execute as @s[tag=side_molotov_aoe,scores={mr_throwable_molotov_dr=20..}] run particle flame ~ ~.2 ~ 1.5 .2 1.5 0 2
execute as @s[tag=side_molotov_aoe,scores={mr_throwable_molotov_dr=20..}] run particle large_smoke ~ ~.2 ~ 1.5 .2 1.5 0 1


execute as @e[distance=..2.4] run effect give @s slowness 1 1 true
execute if score @s mr_throwable_molotov_tick matches 10.. as @e[distance=..2.5,team=rift_enemy] run damage @s 3 mr_b:burning
execute if score @s mr_throwable_molotov_tick matches 10.. as @e[distance=..2.5,team=rift_party] run damage @s 6 mr_b:burning


execute as @e[distance=..2.5,team=rift_party,tag=!mr_afterburn] store result score @s mr_effect_afterburn_max_health run attribute @s minecraft:max_health get
execute as @e[distance=..2.5,team=rift_enemy,tag=!mr_afterburn] store result score @s mr_effect_afterburn_max_health run attribute @s minecraft:max_health get

execute as @e[distance=..2.5,team=rift_enemy] run tag @s add mr_afterburn
execute as @e[distance=..2.5,team=rift_party] run tag @s add mr_afterburn


execute as @e[distance=..2.5,team=rift_enemy] run scoreboard players set @s mr_effect_afterburn_time 150
execute as @e[distance=..2.5,team=rift_party] run scoreboard players set @s mr_effect_afterburn_time 150

execute as @e[distance=..2.5,team=rift_enemy] store result bossbar afterburn_effect max run scoreboard players get @s mr_effect_afterburn_time
execute as @e[distance=..2.5,team=rift_party] store result bossbar afterburn_effect max run scoreboard players get @s mr_effect_afterburn_time

execute as @e[distance=..2.5,team=rift_party] run scoreboard players add @s mr_effect_afterburn_cd 1
execute as @e[distance=..2.5,team=rift_enemy] run scoreboard players add @s mr_effect_afterburn_cd 1

execute if score @s mr_throwable_molotov_tick matches 10.. run scoreboard players reset @s mr_throwable_molotov_tick
scoreboard players add @s mr_throwable_molotov_dr 1
scoreboard players add @s mr_throwable_molotov_tick 1

execute if score @s mr_throwable_molotov_dr matches 300 run kill @s


