

title @s actionbar {text:"-- You have bought a Impact Grenade --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 125



give @s potion[potion_contents={custom_color:31785},custom_name=[{"text":"Impact Grenade","italic":false}],max_stack_size=64,lore=[[{"text":"Use to throw a grenade that explodes on hit."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}] 2
