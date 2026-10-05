title @s[tag=enchant_upgrade_active] actionbar {text:"-- Enchant Upgrade Still Pending --",color:"red"}
execute at @s[tag=enchant_upgrade_active] run function mr_b:sfx/item_fail

execute unless items entity @s weapon.mainhand *[enchantments={"mr_b:enchant_dummy":1}] run return fail

advancement revoke @s only mr_b:enchant/enchant_check


execute if entity @s[tag=enchant_upgrade_active] run return fail


#execute as @a at @s anchored eyes if items entity @s weapon.* *[minecraft:custom_data~{1:1b}] run particle minecraft:electric_spark ^ ^ ^4 0 0 0 0 1


execute if items entity @s weapon.mainhand paper[enchantments={"mr_b:enchant_dummy":1}] run tag @s add enchant_upgrade_active



data modify storage mr_b:enchant enchant set from entity @s SelectedItem.components."minecraft:custom_data".enchant

function mr_b:shop/enchant/upgrade_enchant/enchant_macro with storage mr_b:enchant


playsound minecraft:item.trident.return master @a ~ ~ ~ .9 0.6
playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ .8 0.7
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ .9 0.6
playsound minecraft:block.note_block.bit master @a ~ ~ ~ .8 2.0
playsound minecraft:block.amethyst_cluster.hit master @a ~ ~ ~ .7 1.8
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ .6 1.5
playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ .5 0.5
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ .4 1.8