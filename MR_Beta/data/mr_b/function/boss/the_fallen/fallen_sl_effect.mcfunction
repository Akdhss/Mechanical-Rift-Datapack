execute as @e[tag=boss,tag=collapse_ready] as @a[team=rift_party,distance=..3] run damage @s 6 magic by @e[tag=boss,limit=1]
execute as @e[tag=boss,tag=!collapse_ready] as @a[team=rift_party,distance=..3] run damage @s 2 magic by @e[tag=boss,limit=1]
execute as @e[team=rift_party,distance=..3] run effect give @s slowness 5 0 true
effect give @e[type=minecraft:wither_skeleton,tag=boss] minecraft:instant_damage 1 1 true

execute as @e[tag=boss,tag=!collapse_ready] as @a[team=rift_party,distance=..3] if score @e[name=player_spawn,limit=1] mr_difficulty matches 3.. run tag @s add mr_bleed
execute as @e[tag=boss,tag=!collapse_ready] as @a[team=rift_party,distance=..3] if score @e[name=player_spawn,limit=1] mr_difficulty matches 3.. run scoreboard players set @s mr_effect_bleed_time 50
execute as @e[tag=boss,tag=!collapse_ready] as @a[team=rift_party,distance=..3] if score @e[name=player_spawn,limit=1] mr_difficulty matches 3.. run scoreboard players add @s mr_effect_bleed_stack 3
execute as @e[tag=boss,tag=!collapse_ready] as @e[team=rift_party,distance=..3] if score @e[name=player_spawn,limit=1] mr_difficulty matches 3.. run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_upward_impulse":1},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]

execute at @s run function mr_b:boss/the_fallen/sfx/slash

#execute as @e[tag=boss,tag=!collapse_ready] as @e[team=rift_party,distance=..3] as @e[tag=boss,tag=!collapse_ready] run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_upward_impulse":1},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]

particle sweep_attack ~ ~1.5 ~ 1 .3 1 0 100 force
tag @s remove fallen_wind_sl
effect clear @s slowness
scoreboard players reset @s mr_fallen_skill_wind

execute as @e[tag=boss,tag=!collapse_ready] at @s unless entity @e[team=rift_party,distance=..3] if score @e[name=player_spawn,limit=1] mr_difficulty matches 3.. run function mr_b:boss/the_fallen/fallen_skill
