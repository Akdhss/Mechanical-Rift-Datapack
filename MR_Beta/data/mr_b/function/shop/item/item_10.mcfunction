title @s actionbar {text:"-- You have bought an Armor Upgrade --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 100
scoreboard players reset @s mr_shop_item


give @s potion[potion_contents={custom_color:4669019},custom_name=[{"text":"Armor Upgrade/Repair","italic":false}],max_stack_size=64,lore=[[{"text":"Upgrade Weapon to Netherite.","italic":false}],"",[{"text":"Crouch after use to upgrade.","italic":false}]],consumable={consume_seconds:1000000000},rarity=epic]

