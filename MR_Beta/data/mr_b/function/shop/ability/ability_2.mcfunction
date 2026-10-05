title @s actionbar {text:"-- You have bought Castle --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 150


give @s potion[potion_contents={custom_color:1670752},custom_name=[{"text":"Castle","italic":false}],max_stack_size=64,lore=[[{"text":"Use to quickly defend allies from far away."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
