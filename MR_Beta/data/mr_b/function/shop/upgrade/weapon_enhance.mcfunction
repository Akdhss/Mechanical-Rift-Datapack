item modify entity @s weapon.mainhand mr_b:repair

execute if items entity @s weapon.mainhand diamond_sword run tag @s add upgraded
execute if items entity @s weapon.mainhand diamond_axe run tag @s add upgraded
execute if items entity @s weapon.mainhand diamond_spear run tag @s add upgraded

data remove storage mr_b:enchant weapon
data modify storage mr_b:enchant weapon.enchant set from entity @s SelectedItem.components.minecraft:enchantments

function mr_b:shop/upgrade/weapon_macro with storage mr_b:enchant weapon

tellraw @s[tag=upgraded] [{text:"[",bold:true,color:"dark_green"},{selector:"@s"},{text:"]",bold:true,color:"dark_green"},{text:" Weapon Upgraded!",bold:false,color:"gold"}]
tellraw @s[tag=!upgraded] [{text:"[",bold:true,color:"dark_green"},{selector:"@s"},{text:"]",bold:true,color:"dark_green"},{text:" Weapon Repaired!",bold:false,color:"gold"}]


function mr_b:sfx/item_enhance

execute if items entity @s weapon.mainhand diamond_sword run item replace entity @s weapon.mainhand with netherite_sword
execute if items entity @s weapon.mainhand diamond_axe run item replace entity @s weapon.mainhand with netherite_axe
execute if items entity @s weapon.mainhand diamond_spear run item replace entity @s weapon.mainhand with netherite_spear


advancement revoke @s only mr_b:shop_weapon_upgrade
execute if entity @s[advancements={mr_b:shop_weapon_upgrade=false}] run tag @s remove weapon_upgrade_active
execute if entity @s[advancements={mr_b:shop_weapon_upgrade=false}] run tag @s remove upgraded


