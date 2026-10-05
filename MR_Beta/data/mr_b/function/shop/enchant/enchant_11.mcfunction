title @s actionbar {text:"-- You have bought Wind Bolt --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 175

give @s paper[custom_name=[{"text":"Enchant - [ Wind Bolt ]","italic":false}],rarity=epic,food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:100000,animation:toot_horn,has_consume_particles:0b},minecraft:custom_data={enchant:"wind_bolt"},enchantments={"mr_b:enchant_dummy":1}]