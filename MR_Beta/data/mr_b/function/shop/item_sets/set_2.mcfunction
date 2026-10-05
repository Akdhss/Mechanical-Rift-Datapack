title @s actionbar {text:"-- You have bought the Premium Kit --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 750
item replace entity @s armor.head with netherite_helmet[enchantments={protection:2,unbreaking:1}] 1
item replace entity @s armor.chest with netherite_chestplate[enchantments={protection:2,unbreaking:1}] 1
item replace entity @s armor.legs with netherite_leggings[enchantments={protection:2,unbreaking:1}] 1
item replace entity @s armor.feet with netherite_boots[enchantments={protection:2,unbreaking:1}] 1

give @s netherite_sword[enchantments={sharpness:5,sweeping_edge:3}] 1
give @s shield[enchantments={unbreaking:3}] 1
give @s cooked_beef 44
give @s ender_pearl 8
give @s bow[enchantments={infinity:1b,power:4}] 1
item replace entity @s container.17 with arrow
give @s potion[max_stack_size=99,consumable={consume_seconds:.5,animation:"drink",sound:"item.totem.use"},potion_contents={potion:"minecraft:strong_healing",custom_effects:[{id:"minecraft:absorption",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:speed",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},custom_name={"bold":true,"color":"dark_aqua","text":"Emergency Kit II"}] 1

scoreboard players reset @s mr_shop_item_set
tag @s add item_set_bought

tag @s add class_freemix

advancement grant @s only mr_b:item_set_shop/item_set_2