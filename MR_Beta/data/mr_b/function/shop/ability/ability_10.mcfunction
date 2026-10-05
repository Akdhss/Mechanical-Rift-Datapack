title @s actionbar {text:"-- You have bought Frost --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 55


give @s potion[potion_contents={custom_color:174813},custom_name=[{"text":"Frost","italic":false}],max_stack_size=64,lore=[[{"text":"Use to set up an unstable ice fragment that chills enemies."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
