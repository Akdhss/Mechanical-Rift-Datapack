execute unless items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:overtime"}]] run scoreboard players reset @s mr_enchant_overtime_kill
execute unless items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:overtime"}]] run return fail
execute if entity @s[tag=!overtime_active] run playsound mr_b:overtime_notif master @s ~ ~ ~ 0.25
execute if entity @s[tag=!overtime_active] run function mr_b:enchant/armor/chestplate/overtime/overtime_line

effect give @s strength 2 4 true
effect give @s regeneration 2 2 true

scoreboard players reset @s mr_enchant_overtime_effect
scoreboard players reset @s mr_enchant_overtime_kill
tag @s add overtime_active