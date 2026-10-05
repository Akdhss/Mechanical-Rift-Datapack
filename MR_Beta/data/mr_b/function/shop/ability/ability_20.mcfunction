

title @s actionbar {text:"-- You have bought a Impulse --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 150



give @s potion[potion_contents={custom_color:16759418},custom_name=[{"text":"Impulse","italic":false}],max_stack_size=64,lore=[[{"text":"Use to throw a device that pulses after a couple seconds to stun nearby entities. Expires on the third pulse."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
