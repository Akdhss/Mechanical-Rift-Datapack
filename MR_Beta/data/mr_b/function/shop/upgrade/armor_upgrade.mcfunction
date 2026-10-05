tag @s remove mr_no_armor
tag @s remove mr_invalid_armor
advancement revoke @s only mr_b:shop_armor_upgrade

execute if score @s mr_armor_upgrade_cooldown matches 1.. run return fail

execute unless items entity @s armor.head diamond_helmet unless items entity @s armor.head netherite_helmet unless items entity @s armor.chest diamond_chestplate unless items entity @s armor.chest netherite_chestplate unless items entity @s armor.legs diamond_leggings unless items entity @s armor.legs netherite_leggings unless items entity @s armor.feet diamond_boots unless items entity @s armor.feet netherite_boots run tag @s add mr_no_armor


execute if items entity @s armor.head netherite_helmet run tag @s add mr_invalid_armor
execute if items entity @s armor.chest netherite_chestplate run tag @s add mr_invalid_armor
execute if items entity @s armor.legs netherite_leggings run tag @s add mr_invalid_armor
execute if items entity @s armor.feet netherite_boots run tag @s add mr_invalid_armor

title @s actionbar {text:"-- Armor Upgraded! --",color:"green"}
execute if entity @s[tag=mr_no_armor] run title @s actionbar {text:"-- No Armor to Upgrade --",color:"dark_gray"}
execute if entity @s[tag=mr_invalid_armor] run title @s actionbar {text:"-- Armor Repaired! --",color:"gold"}
execute if entity @s[tag=mr_no_armor] at @s run function mr_b:sfx/item_fail
execute if entity @s[tag=mr_no_armor] run return fail

scoreboard players set @s mr_armor_upgrade_cooldown 100


clear @s potion[potion_contents={custom_color:4669019}] 1

tag @s add armor_upgrade_active


playsound minecraft:item.trident.return master @s ~ ~ ~ .9 0.6
playsound minecraft:block.respawn_anchor.set_spawn master @s ~ ~ ~ .8 0.7
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ .9 0.6
playsound minecraft:block.note_block.bit master @s ~ ~ ~ .8 2.0
playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ .7 1.8
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .6 1.5
playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ .5 0.5
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ .4 1.8

