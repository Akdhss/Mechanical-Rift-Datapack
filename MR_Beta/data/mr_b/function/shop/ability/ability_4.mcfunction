title @s actionbar {text:"-- You have bought Descension --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 125


give @s potion[potion_contents={custom_color:16770196},custom_name=[{"text":"Descension","italic":false}],max_stack_size=64,lore=[[{"text":"Use to ascend and gain a taste of heaven."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
