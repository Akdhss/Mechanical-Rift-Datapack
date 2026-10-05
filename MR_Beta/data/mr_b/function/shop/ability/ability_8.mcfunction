title @s actionbar {text:"-- You have bought Quicksand --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 40


give @s potion[potion_contents={custom_color:11768320},custom_name=[{"text":"Quicksand","italic":false}],max_stack_size=64,lore=[[{"text":"Use to set up an unstable whirlpool of sand nearby."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
