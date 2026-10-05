title @s actionbar {text:"-- You have bought Emergency Kit I --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 75
scoreboard players reset @s mr_shop_item

give @s potion[max_stack_size=99,consumable={consume_seconds:.5,animation:"drink",sound:"item.totem.use"},potion_contents={potion:"minecraft:healing",custom_effects:[{id:"minecraft:absorption",amplifier:0,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:speed",amplifier:0,duration:200,show_particles:0b,show_icon:0b}]},custom_name={"bold":true,"color":"dark_aqua","text":"Emergency Kit I"}] 1