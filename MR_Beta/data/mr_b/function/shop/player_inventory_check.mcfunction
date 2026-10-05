# warn-off-file execute-group
advancement revoke @s only mr_b:inventory_check

tag @s remove has_sword
tag @s remove has_spear
tag @s remove has_axe
tag @s remove has_bow
tag @s remove has_crossbow
tag @s remove has_head
tag @s remove has_body
tag @s remove has_legs
tag @s remove has_feet
tag @s remove has_shuield
tag @s remove has_armor
tag @s remove has_shield
tag @s remove has_ice_element
tag @s remove mr_invalid_armor


execute if items entity @s container.* *[enchantments~[{enchantments:"mr_b:coalescence"}]] run tag @s add has_ice_element
execute if items entity @s container.* *[enchantments~[{enchantments:"mr_b:icebreaker"}]] run tag @s add has_ice_element
execute if items entity @s container.* *[enchantments~[{enchantments:"mr_b:shatterpoint"}]] run tag @s add has_ice_element

execute unless score @s mr_player_inv_check_shield matches 1.. store success score @s mr_player_inv_check_shield run clear @s shield 0
execute unless score @s mr_player_inv_check_sword matches 1.. store success score @s mr_player_inv_check_sword run clear @s diamond_sword 0
execute unless score @s mr_player_inv_check_sword matches 1.. store success score @s mr_player_inv_check_sword run clear @s netherite_sword 0
execute unless score @s mr_player_inv_check_spear matches 1.. store success score @s mr_player_inv_check_spear run clear @s diamond_spear 0
execute unless score @s mr_player_inv_check_spear matches 1.. store success score @s mr_player_inv_check_spear run clear @s netherite_spear 0
execute unless score @s mr_player_inv_check_axe matches 1.. store success score @s mr_player_inv_check_axe run clear @s diamond_axe 0
execute unless score @s mr_player_inv_check_axe matches 1.. store success score @s mr_player_inv_check_axe run clear @s netherite_axe 0
execute unless score @s mr_player_inv_check_bow matches 1.. store success score @s mr_player_inv_check_bow run clear @s bow 0
execute unless score @s mr_player_inv_check_crossbow matches 1.. store success score @s mr_player_inv_check_crossbow run clear @s crossbow 0
execute unless score @s mr_player_inv_check_head matches 1.. store success score @s mr_player_inv_check_head run clear @s diamond_helmet 0
execute unless score @s mr_player_inv_check_head matches 1.. store success score @s mr_player_inv_check_head run clear @s netherite_helmet 0
execute unless score @s mr_player_inv_check_body matches 1.. store success score @s mr_player_inv_check_body run clear @s diamond_chestplate 0
execute unless score @s mr_player_inv_check_body matches 1.. store success score @s mr_player_inv_check_body run clear @s netherite_chestplate 0
execute unless score @s mr_player_inv_check_legs matches 1.. store success score @s mr_player_inv_check_legs run clear @s diamond_leggings 0
execute unless score @s mr_player_inv_check_legs matches 1.. store success score @s mr_player_inv_check_legs run clear @s netherite_leggings 0
execute unless score @s mr_player_inv_check_feet matches 1.. store success score @s mr_player_inv_check_feet run clear @s diamond_boots 0
execute unless score @s mr_player_inv_check_feet matches 1.. store success score @s mr_player_inv_check_feet run clear @s netherite_boots 0


execute if score @s mr_player_inv_check_sword matches 1.. run tag @s add has_sword
execute if score @s mr_player_inv_check_spear matches 1.. run tag @s add has_spear
execute if score @s mr_player_inv_check_axe matches 1.. run tag @s add has_axe
execute if score @s mr_player_inv_check_bow matches 1.. run tag @s add has_bow
execute if score @s mr_player_inv_check_crossbow matches 1.. run tag @s add has_crossbow
execute if score @s mr_player_inv_check_head matches 1.. run tag @s add has_head
execute if score @s mr_player_inv_check_body matches 1.. run tag @s add has_body
execute if score @s mr_player_inv_check_legs matches 1.. run tag @s add has_legs
execute if score @s mr_player_inv_check_feet matches 1.. run tag @s add has_feet
execute if score @s mr_player_inv_check_shield matches 1.. run tag @s add has_shield
execute unless entity @s[tag=!has_head] unless entity @s[tag=!has_body] unless entity @s[tag=!has_legs] unless entity @s[tag=!has_feet] run tag @s add has_armor

scoreboard players reset @s mr_player_inv_check_shield
scoreboard players reset @s mr_player_inv_check_sword
scoreboard players reset @s mr_player_inv_check_spear
scoreboard players reset @s mr_player_inv_check_axe
scoreboard players reset @s mr_player_inv_check_bow
scoreboard players reset @s mr_player_inv_check_crossbow
scoreboard players reset @s mr_player_inv_check_head
scoreboard players reset @s mr_player_inv_check_body
scoreboard players reset @s mr_player_inv_check_legs
scoreboard players reset @s mr_player_inv_check_feet
