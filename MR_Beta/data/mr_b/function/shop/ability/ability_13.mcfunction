title @s actionbar {text:"-- You have bought Cleaving Whirlwind --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 100


give @s potion[potion_contents={custom_color:14729117},custom_name=[{"text":"Cleaving Whirlwind","italic":false}],max_stack_size=64,lore=[[{"text":"Use to rush forward, cleaving everything."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
