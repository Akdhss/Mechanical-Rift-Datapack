scoreboard players set @s mr_enchant_shield_shift_cd 100

tag @s add bulwark_shift

#execute as @e[team=rift_enemy,distance=..5] at @s run tp @s ~ ~ ~ facing entity @p[tag=bulwark_shift]
#execute as @e[team=rift_enemy,distance=..5] at @s run rotate @s ~180 ~
execute as @e[team=rift_enemy,distance=..5] at @s run say AWAY
execute as @e[team=rift_enemy,distance=..5] at @s run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_backward_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
tag @s remove bulwark_shift