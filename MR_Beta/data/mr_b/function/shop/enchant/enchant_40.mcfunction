title @s actionbar {text:"-- You have bought Last Stand --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 200

give @s paper[custom_name=[{"text":"Enchant - [ Last Stand ]","italic":false}],rarity=epic,food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:100000,animation:toot_horn,has_consume_particles:0b},minecraft:custom_data={enchant:"last_stand"},enchantments={"mr_b:enchant_dummy":1}]