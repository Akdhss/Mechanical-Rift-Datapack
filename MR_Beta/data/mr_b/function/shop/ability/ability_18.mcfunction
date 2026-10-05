

title @s actionbar {text:"-- You have bought a Molotov --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 200



give @s potion[potion_contents={custom_color:14642176},custom_name=[{"text":"Molotov","italic":false}],max_stack_size=64,lore=[[{"text":"Use to throw a molotov that explodes on hit, leaving an area around it in flames."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
