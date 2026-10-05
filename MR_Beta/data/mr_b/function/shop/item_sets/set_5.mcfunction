title @s actionbar {text:"-- You have bought the Windstrider Kit --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 850
item replace entity @s armor.head with netherite_helmet[trim={material:"iron",pattern:"minecraft:ward"}] 1
item replace entity @s armor.chest with netherite_chestplate[trim={material:"quartz",pattern:"minecraft:flow"}] 1
item replace entity @s armor.legs with netherite_leggings[trim={material:"redstone",pattern:"minecraft:wayfinder"}] 1
item replace entity @s armor.feet with netherite_boots[enchantments={"mr_b:wind_bolt":1},trim={material:"quartz",pattern:"minecraft:wild"}] 1

scoreboard players reset @s mr_enchant_blade_call_kill_ult
scoreboard players reset @s mr_ability_guide_kill

tag @s add blade_call_user
tag @s add guiding_wind_user
tag @s add has_ultimate

give @s bow[enchantments={power:5,infinity:1,unbreaking:3,"mr_b:skypiercer":1,"mr_b:weapon/bow/compounding/compounding":1}] 1
give @s potion[potion_contents={custom_color:9078660},custom_name=[{"text":"Guiding Wind","italic":false}],max_stack_size=64,lore=[[{"text":"Use to harness the wind's guidance."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
give @s cooked_beef 36
give @s ender_pearl 4

give @s potion[max_stack_size=99,consumable={consume_seconds:.5,animation:"drink",sound:"item.totem.use"},potion_contents={potion:"minecraft:strong_healing",custom_effects:[{id:"minecraft:absorption",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:speed",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},custom_name={"bold":true,"color":"dark_aqua","text":"Emergency Kit II"}] 1
item replace entity @s container.17 with arrow

scoreboard players reset @s mr_shop_item_set
tag @s add item_set_bought


tag @s add class_dps

advancement grant @s only mr_b:item_set_shop/item_set_5