title @s actionbar {text:"-- You have bought an Weapon Upgrade --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 100
scoreboard players reset @s mr_shop_item


give @s potion[potion_contents={custom_color:4669018},custom_name=[{"text":"Weapon Upgrade/Repair","italic":false}],consumable={consume_seconds:1000000000},max_stack_size=64,lore=[[{"text":"Upgrade Weapon to Netherite.","italic":false}],"",[{"text":"Crouch after use to upgrade.","italic":false}]],rarity=epic]

