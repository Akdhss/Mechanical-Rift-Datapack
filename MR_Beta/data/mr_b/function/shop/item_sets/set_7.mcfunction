title @s actionbar {text:"-- You have bought the Winter's Queen Kit --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 850
item replace entity @s armor.head with netherite_helmet[trim={material:"lapis",pattern:"minecraft:dune"}] 1
item replace entity @s armor.chest with netherite_chestplate[trim={material:"diamond",pattern:"minecraft:flow"}] 1
item replace entity @s armor.legs with netherite_leggings[enchantments={"mr_b:season":1},trim={material:"lapis",pattern:"minecraft:silence"}] 1
item replace entity @s armor.feet with netherite_boots[trim={material:"diamond",pattern:"minecraft:silence"}] 1

give @s bow[custom_name="Frostfire",rarity=epic,enchantments={infinity:1,power:4,unbreaking:3,"mr_b:coalescence":1}] 1
give @s bow[custom_name="Hoarfrost",rarity=epic,enchantments={infinity:1,power:4,unbreaking:3,"mr_b:shatterpoint":1}] 1
give @s cooked_beef 36
give @s ender_pearl 4

tag @s remove hailstorm_used
tag @s add frost_touch_user
tag @s add hailstorm_user
tag @s add has_ultimate
tag @s add ultimate_ready
give @s potion[potion_contents={custom_color:122836},custom_name=[{"text":"Frost Touch","italic":false}],max_stack_size=64,lore=[[{"text":"Use to send out a mist of icy wind."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}] 4
give @s potion[potion_contents={custom_color:1441913},custom_name=[{"text":"Domain Expansion - [ Hailstorm ]","italic":false}],use_cooldown={seconds:1,cooldown_group:nondroppable},max_stack_size=64,lore=[[{"text":"Use to expand the winter's domain unto the world."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},minecraft:custom_data={ability:true}]

give @s potion[max_stack_size=99,consumable={consume_seconds:.5,animation:"drink",sound:"item.totem.use"},potion_contents={potion:"minecraft:strong_healing",custom_effects:[{id:"minecraft:absorption",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:speed",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},custom_name={"bold":true,"color":"dark_aqua","text":"Emergency Kit II"}] 1

item replace entity @s container.17 with arrow

scoreboard players reset @s mr_shop_item_set
tag @s add item_set_bought

advancement grant @s only mr_b:item_set_shop/item_set_7

tag @s add class_support