title @s actionbar {text:"-- You have bought Bloom Shot --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 125

give @s paper[custom_name=[{"text":"Enchant - [ Bloom Shot ]","italic":false}],rarity=epic,food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:100000,animation:toot_horn,has_consume_particles:0b},minecraft:custom_data={enchant:"bloomshot" },enchantments={"mr_b:enchant_dummy":1}]