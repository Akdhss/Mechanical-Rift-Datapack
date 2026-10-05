





execute if entity @s[tag=auto_apply_enchantment_head] run item replace entity @s weapon.mainhand from entity @s armor.head
execute if entity @s[tag=auto_apply_enchantment_chest] run item replace entity @s weapon.mainhand from entity @s armor.chest
execute if entity @s[tag=auto_apply_enchantment_legs] run item replace entity @s weapon.mainhand from entity @s armor.legs
execute if entity @s[tag=auto_apply_enchantment_feet] run item replace entity @s weapon.mainhand from entity @s armor.feet




function mr_b:shop/enchant/upgrade_enchant/enchant_upgrade



execute if entity @s[tag=auto_apply_enchantment_head] run item replace entity @s armor.head from entity @s weapon.mainhand
execute if entity @s[tag=auto_apply_enchantment_chest] run item replace entity @s armor.chest from entity @s weapon.mainhand
execute if entity @s[tag=auto_apply_enchantment_legs] run item replace entity @s armor.legs from entity @s weapon.mainhand
execute if entity @s[tag=auto_apply_enchantment_feet] run item replace entity @s armor.feet from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with air

tag @s remove auto_apply_enchantment_head
tag @s remove auto_apply_enchantment_chest
tag @s remove auto_apply_enchantment_legs
tag @s remove auto_apply_enchantment_feet
#item modify entity @s weapon.offhand uav1:zed_equippable
#item replace entity @s saddle from entity @s weapon.offhand
#item replace entity @s weapon.offhand from entity @s weapon.mainhand
#item replace entity @s weapon.mainhand from entity @s saddle
#item modify entity @s weapon.mainhand uav1:zed_equippable_remove


