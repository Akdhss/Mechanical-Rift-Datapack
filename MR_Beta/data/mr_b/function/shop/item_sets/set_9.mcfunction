title @s actionbar {text:"-- You have bought the Salaryman Kit --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 850
item replace entity @s armor.head with netherite_helmet[enchantments={unbreaking:1,"mr_b:collector":1},trim={material:"iron",pattern:"minecraft:coast"}] 1
item replace entity @s armor.chest with netherite_chestplate[enchantments={unbreaking:1,"mr_b:overtime":1},trim={material:"gold",pattern:"minecraft:spire"}] 1
item replace entity @s armor.legs with netherite_leggings[enchantments={unbreaking:1},trim={material:"gold",pattern:"minecraft:tide"}] 1
item replace entity @s armor.feet with netherite_boots[enchantments={unbreaking:1},trim={material:"quartz",pattern:"minecraft:rib"}] 1

give @s netherite_axe[enchantments={"mr_b:ratio":1,sharpness:4}]
give @s cooked_beef 36
give @s ender_pearl 4
give @s potion[potion_contents={custom_color:14729117},custom_name=[{"text":"Cleaving Whirlwind","italic":false}],max_stack_size=64,lore=[[{"text":"Use to rush forward, cleaving everything."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}] 2

give @s potion[max_stack_size=99,consumable={consume_seconds:.5,animation:"drink",sound:"item.totem.use"},potion_contents={potion:"minecraft:strong_healing",custom_effects:[{id:"minecraft:absorption",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:speed",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},custom_name={"bold":true,"color":"dark_aqua","text":"Emergency Kit II"}] 1

scoreboard players reset @s mr_shop_item_set
tag @s add item_set_bought
tag @s add whirlwind_user
tag @s add blunt_cut_user
tag @s add has_ultimate

tag @s add class_dps

advancement grant @s only mr_b:item_set_shop/item_set_9