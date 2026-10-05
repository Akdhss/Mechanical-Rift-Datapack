

title @s actionbar {text:"-- You have bought a Snare --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 125



give @s potion[potion_contents={custom_color:40066},custom_name=[{"text":"Snare","italic":false}],max_stack_size=64,lore=[[{"text":"Use to throw a snare grenade the forcefully binds enemies within a sizable range."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
