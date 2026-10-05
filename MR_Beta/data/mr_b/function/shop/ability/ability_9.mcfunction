title @s actionbar {text:"-- You have bought Claymore --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 90


give @s potion[potion_contents={custom_color:3112960},custom_name=[{"text":"Claymore","italic":false}],max_stack_size=64,lore=[[{"text":"Use to set up an explosive that explodes forward."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}] 3
