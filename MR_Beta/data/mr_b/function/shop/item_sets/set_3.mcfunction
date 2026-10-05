scoreboard players reset @s player_death
title @s actionbar {text:"-- You have bought the Divebomber Kit --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 850
item replace entity @s armor.head with netherite_helmet[enchantments={unbreaking:1},trim={material:"resin",pattern:"minecraft:rib"}] 1
item replace entity @s armor.chest with netherite_chestplate[enchantments={unbreaking:1,"mr_b:hail_mary":1,"mr_b:lily":1},trim={material:"minecraft:redstone",pattern:"minecraft:sentry"}] 1
item replace entity @s armor.legs with netherite_leggings[enchantments={unbreaking:1},trim={material:"minecraft:redstone",pattern:"minecraft:bolt"}] 1
item replace entity @s armor.feet with netherite_boots[enchantments={unbreaking:1,"mr_b:wind_bolt":1},trim={material:"minecraft:resin",pattern:"minecraft:rib"}] 1

scoreboard players reset @s mr_ability_desc_refresh

give @s minecraft:netherite_spear[minecraft:enchantments={lunge:3,"mr_b:weapon/spear/joust/joust":1,"mr_b:weapon/spear/feast/feast":1s}] 1
give @s cooked_beef 26
give @s ender_pearl 4
give @s potion[potion_contents={custom_color:16770196},custom_name=[{"text":"Descension","italic":false}],max_stack_size=64,lore=[[{"text":"Use to ascend and gain a taste of heaven."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}] 2

give @s potion[max_stack_size=99,consumable={consume_seconds:.5,animation:"drink",sound:"item.totem.use"},potion_contents={potion:"minecraft:strong_healing",custom_effects:[{id:"minecraft:absorption",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:speed",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},custom_name={"bold":true,"color":"dark_aqua","text":"Emergency Kit II"}] 1

tag @s add desc_user
scoreboard players reset @s mr_shop_item_set
tag @s add item_set_bought

tag @s add class_dps

advancement grant @s only mr_b:item_set_shop/item_set_3
