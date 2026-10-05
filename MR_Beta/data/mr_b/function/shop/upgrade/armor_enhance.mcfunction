execute if items entity @s armor.head diamond_helmet run tag @s add upgraded
execute if items entity @s armor.chest diamond_chestplate run tag @s add upgraded
execute if items entity @s armor.legs diamond_leggings run tag @s add upgraded
execute if items entity @s armor.feet diamond_boots run tag @s add upgraded


item modify entity @s armor.head mr_b:repair
item modify entity @s armor.chest mr_b:repair
item modify entity @s armor.legs mr_b:repair
item modify entity @s armor.feet mr_b:repair

data remove storage mr_b:enchant armor

data modify storage mr_b:enchant armor.head set from entity @s equipment.head.components.minecraft:enchantments
data modify storage mr_b:enchant armor.chest set from entity @s equipment.chest.components.minecraft:enchantments
data modify storage mr_b:enchant armor.legs set from entity @s equipment.legs.components.minecraft:enchantments
data modify storage mr_b:enchant armor.feet set from entity @s equipment.feet.components.minecraft:enchantments

data modify storage mr_b:enchant armor.trim_head set from entity @s equipment.head.components.minecraft:trim
data modify storage mr_b:enchant armor.trim_chest set from entity @s equipment.chest.components.minecraft:trim
data modify storage mr_b:enchant armor.trim_legs set from entity @s equipment.legs.components.minecraft:trim
data modify storage mr_b:enchant armor.trim_feet set from entity @s equipment.feet.components.minecraft:trim

execute if data storage mr_b:enchant armor.head run function mr_b:shop/upgrade/armor/head/enchant with storage mr_b:enchant armor
execute if data storage mr_b:enchant armor.trim_head run function mr_b:shop/upgrade/armor/head/trim with storage mr_b:enchant armor
execute if data storage mr_b:enchant armor.head if data storage mr_b:enchant armor.trim_head run function mr_b:shop/upgrade/armor/head/trim_enchant with storage mr_b:enchant armor

execute if data storage mr_b:enchant armor.chest run function mr_b:shop/upgrade/armor/chest/enchant with storage mr_b:enchant armor
execute if data storage mr_b:enchant armor.trim_chest run function mr_b:shop/upgrade/armor/chest/trim with storage mr_b:enchant armor
execute if data storage mr_b:enchant armor.chest if data storage mr_b:enchant armor.trim_chest run function mr_b:shop/upgrade/armor/chest/trim_enchant with storage mr_b:enchant armor

execute if data storage mr_b:enchant armor.legs run function mr_b:shop/upgrade/armor/legs/enchant with storage mr_b:enchant armor
execute if data storage mr_b:enchant armor.trim_legs run function mr_b:shop/upgrade/armor/legs/trim with storage mr_b:enchant armor
execute if data storage mr_b:enchant armor.legs if data storage mr_b:enchant armor.trim_legs run function mr_b:shop/upgrade/armor/legs/trim_enchant with storage mr_b:enchant armor

execute if data storage mr_b:enchant armor.feet run function mr_b:shop/upgrade/armor/feet/enchant with storage mr_b:enchant armor
execute if data storage mr_b:enchant armor.trim_feet run function mr_b:shop/upgrade/armor/feet/trim with storage mr_b:enchant armor
execute if data storage mr_b:enchant armor.feet if data storage mr_b:enchant armor.trim_feet run function mr_b:shop/upgrade/armor/feet/trim_enchant with storage mr_b:enchant armor



execute if items entity @s armor.head diamond_helmet run item replace entity @s armor.head with netherite_helmet
execute if items entity @s armor.chest diamond_chestplate run item replace entity @s armor.chest with netherite_chestplate
execute if items entity @s armor.legs diamond_leggings run item replace entity @s armor.legs with netherite_leggings
execute if items entity @s armor.feet diamond_boots run item replace entity @s armor.feet with netherite_boots

tag @s remove armor_upgrade_active
tag @s remove upgraded

playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.7 1.2
playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 0.5 0.8
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.4 1.5
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 0.8 1.8
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.6 2
playsound minecraft:item.trident.thunder master @s ~ ~ ~ 0.5 1.2
playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 0.8
playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.9 0.7