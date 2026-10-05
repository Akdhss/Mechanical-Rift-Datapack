

title @s actionbar {text:"-- You have bought Contingency --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 125


give @s potion[potion_contents={custom_color:8782047},custom_name=[{"text":"Contingency","italic":false}],max_stack_size=64,lore=[[{"text":"Use to set down temporary dominion over a territory where enemy projectiles will not reach you."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
