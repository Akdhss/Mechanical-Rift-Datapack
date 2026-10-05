

execute at @s run function mr_b:boss/the_fallen/sfx/dodge


execute at @s as @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!arrow_incoming] run tag @s add arrow_incoming
execute store result score @s[tag=!fallen_backdash] mr_fallen_dodge_side run random value 1..2
execute store result score @s[tag=fallen_backdash] mr_fallen_dodge_side run random value 1..3

execute if entity @s[tag=dodge_right_last,tag=!fallen_backdash] run scoreboard players set @s mr_fallen_dodge_side 1
execute if entity @s[tag=dodge_left_last,tag=!fallen_backdash] run scoreboard players set @s mr_fallen_dodge_side 2

tag @s remove dodge_right_last
tag @s remove dodge_left_last

execute as @s[tag=!collapse_ready] run function mr_b:effect/cleanse/cleanse_effect
execute as @s at @s run rotate @s facing entity @p[team=rift_party] eyes

execute if score @s mr_fallen_dodge_side matches 1 run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_left_impulse":2},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
execute if score @s mr_fallen_dodge_side matches 2 run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_right_impulse":2},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]



execute if score @s mr_fallen_dodge_side matches 1 run tag @s add dodge_left_last
execute if score @s mr_fallen_dodge_side matches 2 run tag @s add dodge_right_last




execute if score @s mr_fallen_dodge_side matches 3 run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_backward_impulse":2},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]


#execute at @s positioned ~ ~ ~ anchored eyes run function mr_b:boss/the_fallen/fallen_dodge_laser

effect give @s[tag=collapse_ready] minecraft:instant_damage 2 2 true

scoreboard players add @s[tag=collapse_ready] mr_fallen_skill_cd 30
scoreboard players add @s[tag=!collapse_ready] mr_fallen_skill_cd 60

tag @s remove fallen_backdash
tag @s remove dodge_ready

execute as @s at @s run rotate @s facing entity @p[team=rift_party] eyes
scoreboard players reset @s mr_fallen_dodge_cd
