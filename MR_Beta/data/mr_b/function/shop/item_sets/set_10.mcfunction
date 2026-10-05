title @s actionbar {text:"-- You have bought the V.I.P Kit --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 850
item replace entity @s armor.head with golden_helmet[trim={pattern:raiser,material:netherite},enchantment_glint_override=true,enchantments={binding_curse:1,protection:2}]
item replace entity @s armor.chest with golden_chestplate[trim={pattern:raiser,material:netherite},enchantment_glint_override=true,enchantments={binding_curse:1,protection:2,"mr_b:armor/chest/gold_plating/gold_plating":1,"mr_b:radiance":1}]
item replace entity @s armor.legs with golden_leggings[trim={pattern:raiser,material:netherite},enchantment_glint_override=true,enchantments={binding_curse:1,protection:2}]
item replace entity @s armor.feet with golden_boots[trim={pattern:raiser,material:netherite},enchantment_glint_override=true,enchantments={binding_curse:1,protection:2}]

give @s netherite_sword[custom_name="Midas Sword",rarity=epic,enchantments={sharpness:3,sweeping_edge:3}] 1
give @s crossbow[custom_name="Money Shot",rarity=epic,enchantments={punch:1,power:1,unbreaking:1}] 1
give @s ender_pearl 4
give @s potion[max_stack_size=99,consumable={consume_seconds:.5,animation:"drink",sound:"item.totem.use"},potion_contents={potion:"minecraft:strong_healing",custom_effects:[{id:"minecraft:absorption",amplifier:1,duration:200,show_particles:0b,show_icon:0b},{id:"minecraft:speed",amplifier:1,duration:200,show_particles:0b,show_icon:0b}]},custom_name={"bold":true,"color":"dark_aqua","text":"Emergency Kit II"}] 4
item replace entity @s container.17 with arrow 64

scoreboard players reset @s mr_shop_item_set
tag @s add item_set_bought

tag @s add class_rich


advancement grant @s only mr_b:item_set_shop/item_set_10