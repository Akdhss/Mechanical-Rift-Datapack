
title @s actionbar {text:"-- You have bought Double Tap --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 175



give @s potion[potion_contents={custom_color:7667924},custom_name=[{"text":"Double Tap","italic":false}],lore=[[{"text":"Use to form a shield that protects against an instance of damage."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]

scoreboard players reset @s mr_ability_double_tap_kill