execute if entity @s[tag=silenced] run return fail
execute if score @s mr_ability_whirlwind_cd matches 1.. run return fail

item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/whirlwind_impulse":6},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
playsound mr_b:whirlwind master @s

clear @s potion[potion_contents={custom_color:14729117}] 1

#playsound minecraft:entity.phantom.flap player @s ~ ~ ~ 1.8 1.6
#playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1.6 1.9
#playsound minecraft:entity.ender_dragon.flap player @s ~ ~ ~ 1.7 1.5
#playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1.4 1.7

scoreboard players set @s mr_ability_whirlwind_cd 10





