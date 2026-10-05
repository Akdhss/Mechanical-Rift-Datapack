title @s actionbar {text:"-- You have bought the Standard Kit --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 350
item replace entity @s armor.head with diamond_helmet[enchantments={protection:1,unbreaking:1}] 1
item replace entity @s armor.chest with diamond_chestplate[enchantments={protection:1,unbreaking:1}] 1
item replace entity @s armor.legs with diamond_leggings[enchantments={protection:1,unbreaking:1}] 1
item replace entity @s armor.feet with diamond_boots[enchantments={protection:1,unbreaking:1}] 1

give @s diamond_sword 1
give @s cooked_beef 16
give @s ender_pearl 4
give @s bow
item replace entity @s container.17 with arrow 64
give @s potion[max_stack_size=99,consumable={consume_seconds:.5,animation:"drink",sound:"item.totem.use"},potion_contents={potion:"minecraft:healing",custom_effects:[{id:"minecraft:absorption",amplifier:0,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:speed",amplifier:0,duration:200,show_particles:0b,show_icon:0b}]},custom_name={"bold":true,"color":"dark_aqua","text":"Emergency Kit I"}] 1

scoreboard players reset @s mr_shop_item_set
tag @s add item_set_bought

tag @s add class_freemix

advancement grant @s only mr_b:item_set_shop/item_set_1