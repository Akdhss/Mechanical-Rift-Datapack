title @s actionbar {text:"-- You have bought the Galeheart Kit --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 850
item replace entity @s armor.head with netherite_helmet[enchantments={projectile_protection:1},trim={material:"emerald",pattern:"minecraft:flow"}] 1
item replace entity @s armor.chest with netherite_chestplate[enchantments={projectile_protection:1},trim={material:"emerald",pattern:"minecraft:bolt"}] 1
item replace entity @s armor.legs with netherite_leggings[enchantments={projectile_protection:1},trim={material:"emerald",pattern:"minecraft:flow"}] 1
item replace entity @s armor.feet with netherite_boots[enchantments={"mr_b:cloudstep":1},trim={material:"emerald",pattern:"minecraft:flow"}] 1

tag @s add guiding_wind_user

give @s crossbow[custom_name="Airshot",rarity=epic,enchantments={infinity:1,punch:2,unbreaking:3,"mr_b:bloom_shot":1,"mr_b:skypiercer":1}] 1
give @s cooked_beef 36
give @s ender_pearl 4
item replace entity @s container.17 with arrow

give @s potion[potion_contents={custom_color:15333398},custom_name=[{"text":"Divinity","italic":false}],max_stack_size=64,lore=[[{"text":"Use to bring back an ally from the other side."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}] 2
give @s potion[max_stack_size=99,consumable={consume_seconds:.5,animation:"drink",sound:"item.totem.use"},potion_contents={potion:"minecraft:strong_healing",custom_effects:[{id:"minecraft:absorption",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:speed",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},custom_name={"bold":true,"color":"dark_aqua","text":"Emergency Kit II"}] 1

scoreboard players reset @s mr_shop_item_set
tag @s add item_set_bought


tag @s add class_support

advancement grant @s only mr_b:item_set_shop/item_set_8