title @s actionbar {text:"-- You have bought Celerity --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 100

give @s paper[custom_name=[{"text":"Enchant - [ Celerity ]","italic":false}],rarity=epic,food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:100000,animation:toot_horn,has_consume_particles:0b},custom_data={enchant:"celerity"},enchantments={"mr_b:enchant_dummy":1}]