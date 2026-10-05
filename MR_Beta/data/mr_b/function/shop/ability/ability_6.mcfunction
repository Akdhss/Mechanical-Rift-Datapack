title @s actionbar {text:"-- You have bought Guiding Wind --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 75


give @s potion[potion_contents={custom_color:9078660},custom_name=[{"text":"Guiding Wind","italic":false}],max_stack_size=64,lore=[[{"text":"Use to harness the wind's guidance."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
