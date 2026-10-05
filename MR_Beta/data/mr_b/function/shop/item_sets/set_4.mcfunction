title @s actionbar {text:"-- You have bought the Sanctum Kit --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 850
item replace entity @s armor.head with netherite_helmet[enchantments={unbreaking:2,protection:1},trim={material:"minecraft:gold",pattern:"minecraft:flow"}] 1
item replace entity @s armor.chest with netherite_chestplate[enchantments={unbreaking:2,protection:1,"mr_b:armor/chest/sturdy_body/sturdy_body":1},trim={material:"minecraft:gold",pattern:"minecraft:dune"}] 1
item replace entity @s armor.legs with netherite_leggings[enchantments={unbreaking:2,protection:1},trim={material:"minecraft:quartz",pattern:"minecraft:silence"}] 1
item replace entity @s armor.feet with netherite_boots[enchantments={unbreaking:2,protection:1},trim={material:"minecraft:iron",pattern:"minecraft:wild"}] 1

item replace entity @s weapon.offhand with shield[enchantments={unbreaking:3}] 1
give @s netherite_sword[custom_name="Execute",rarity=epic,enchantments={"mr_b:celerity":1,sharpness:3,"mr_b:alacrity":1}] 1
give @s netherite_sword[custom_name="Fortify",rarity=epic,enchantments={"mr_b:celerity":1,knockback:3,sweeping_edge:3,"mr_b:alacrity":1}] 1
give @s cooked_beef 36
give @s ender_pearl 4
give @s crossbow[enchantments={unbreaking:3}] 1
give @s potion[potion_contents={custom_color:15300635},custom_name=[{"text":"Comet Fall","italic":false}],max_stack_size=64,lore=[[{"text":"Use to call upon the blessing of the sun."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
give @s potion[potion_contents={custom_color:1670752},custom_name=[{"text":"Castle","italic":false}],max_stack_size=64,lore=[[{"text":"Use to quickly defend allies from far away."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}] 2
give @s potion[max_stack_size=99,consumable={consume_seconds:.5,animation:"drink",sound:"item.totem.use"},potion_contents={potion:"minecraft:strong_healing",custom_effects:[{id:"minecraft:absorption",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:speed",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},custom_name={"bold":true,"color":"dark_aqua","text":"Emergency Kit II"}] 1
item replace entity @s container.17 with arrow 64

tag @s add castle_user
tag @s add sanc_user

scoreboard players reset @s mr_shop_item_set
tag @s add item_set_bought

tag @s add class_tank


advancement grant @s only mr_b:item_set_shop/item_set_4
