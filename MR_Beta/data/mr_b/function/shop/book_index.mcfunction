function mr_b:shop/player_inventory_check

execute if score @s mr_shop_book_index matches -1 unless entity @e[name=player_spawn,tag=run_ongoing,distance=0..,type=marker] run function mr_b:shop/sell_check

#equipment
execute if score @s mr_shop_book_index matches 5 run scoreboard players set @s mr_shop_item 5
execute if score @s mr_shop_book_index matches 7 run scoreboard players set @s mr_shop_item 7
execute if score @s mr_shop_book_index matches 8 run scoreboard players set @s mr_shop_item 8
execute if score @s mr_shop_book_index matches 12 run scoreboard players set @s mr_shop_item 12
execute if score @s mr_shop_book_index matches 13 run scoreboard players set @s mr_shop_item 13
execute if score @s[tag=!class_rich] mr_shop_book_index matches 9 run scoreboard players set @s mr_shop_item 9
execute if score @s mr_shop_book_index matches 57 run scoreboard players set @s mr_shop_item 15

#enchants
execute if score @s mr_shop_book_index matches 29 run scoreboard players set @s mr_shop_enchant 1
execute if score @s mr_shop_book_index matches 30 run scoreboard players set @s mr_shop_enchant 2
execute if score @s mr_shop_book_index matches 31 run scoreboard players set @s mr_shop_enchant 3
execute if score @s mr_shop_book_index matches 32 run scoreboard players set @s mr_shop_enchant 4
execute if score @s mr_shop_book_index matches 33 run scoreboard players set @s mr_shop_enchant 5
execute if score @s mr_shop_book_index matches 34 run scoreboard players set @s mr_shop_enchant 6
execute if score @s mr_shop_book_index matches 35 run scoreboard players set @s mr_shop_enchant 7
execute if score @s mr_shop_book_index matches 36 run scoreboard players set @s mr_shop_enchant 8
execute if score @s mr_shop_book_index matches 37 run scoreboard players set @s mr_shop_enchant 9
execute if score @s mr_shop_book_index matches 38 run scoreboard players set @s mr_shop_enchant 10
execute if score @s mr_shop_book_index matches 39 run scoreboard players set @s mr_shop_enchant 11
execute if score @s mr_shop_book_index matches 42 run scoreboard players set @s mr_shop_enchant 12
execute if score @s mr_shop_book_index matches 43 run scoreboard players set @s mr_shop_enchant 13
execute if score @s mr_shop_book_index matches 44 run scoreboard players set @s mr_shop_enchant 14
execute if score @s mr_shop_book_index matches 47 run scoreboard players set @s mr_shop_enchant 15
execute if score @s mr_shop_book_index matches 48 run scoreboard players set @s mr_shop_enchant 16
execute if score @s mr_shop_book_index matches 49 run scoreboard players set @s mr_shop_enchant 17
execute if score @s mr_shop_book_index matches 50 run scoreboard players set @s mr_shop_enchant 18
execute if score @s mr_shop_book_index matches 51 run scoreboard players set @s mr_shop_enchant 19
execute if score @s mr_shop_book_index matches 58 run scoreboard players set @s mr_shop_enchant 20
execute if score @s mr_shop_book_index matches 59 run scoreboard players set @s mr_shop_enchant 21
execute if score @s mr_shop_book_index matches 60 run scoreboard players set @s mr_shop_enchant 22
execute if score @s mr_shop_book_index matches 61 run scoreboard players set @s mr_shop_enchant 23
execute if score @s mr_shop_book_index matches 62 run scoreboard players set @s mr_shop_enchant 24
execute if score @s mr_shop_book_index matches 63 run scoreboard players set @s mr_shop_enchant 25
execute if score @s mr_shop_book_index matches 64 run scoreboard players set @s mr_shop_enchant 26
execute if score @s mr_shop_book_index matches 65 run scoreboard players set @s mr_shop_enchant 27
execute if score @s mr_shop_book_index matches 66 run scoreboard players set @s mr_shop_enchant 28
execute if score @s mr_shop_book_index matches 67 run scoreboard players set @s mr_shop_enchant 29
execute if score @s mr_shop_book_index matches 68 run scoreboard players set @s mr_shop_enchant 30
execute if score @s mr_shop_book_index matches 70 run scoreboard players set @s mr_shop_enchant 31
execute if score @s mr_shop_book_index matches 74 run scoreboard players set @s mr_shop_enchant 32
execute if score @s mr_shop_book_index matches 75 run scoreboard players set @s mr_shop_enchant 33
execute if score @s mr_shop_book_index matches 76 run scoreboard players set @s mr_shop_enchant 34
execute if score @s mr_shop_book_index matches 77 run scoreboard players set @s mr_shop_enchant 35
execute if score @s mr_shop_book_index matches 78 run scoreboard players set @s mr_shop_enchant 36
execute if score @s mr_shop_book_index matches 79 run scoreboard players set @s mr_shop_enchant 37

execute if score @s mr_shop_book_index matches 84 run scoreboard players set @s mr_shop_enchant 38
execute if score @s mr_shop_book_index matches 85 run scoreboard players set @s mr_shop_enchant 39
execute if score @s mr_shop_book_index matches 86 run scoreboard players set @s mr_shop_enchant 40
execute if score @s mr_shop_book_index matches 87 run scoreboard players set @s mr_shop_enchant 41


#ability
execute if score @s mr_shop_book_index matches 20 run scoreboard players set @s mr_shop_ability 1
execute if score @s mr_shop_book_index matches 21 run scoreboard players set @s mr_shop_ability 2
execute if score @s mr_shop_book_index matches 22 run scoreboard players set @s mr_shop_ability 3
execute if score @s mr_shop_book_index matches 23 run scoreboard players set @s mr_shop_ability 4
execute if score @s mr_shop_book_index matches 24 run scoreboard players set @s mr_shop_ability 5
execute if score @s mr_shop_book_index matches 25 run scoreboard players set @s mr_shop_ability 6
execute if score @s mr_shop_book_index matches 26 run scoreboard players set @s mr_shop_ability 7
execute if score @s mr_shop_book_index matches 27 run scoreboard players set @s mr_shop_ability 8
execute if score @s mr_shop_book_index matches 28 run scoreboard players set @s mr_shop_ability 9
execute if score @s mr_shop_book_index matches 40 run scoreboard players set @s mr_shop_ability 10
execute if score @s mr_shop_book_index matches 41 run scoreboard players set @s mr_shop_ability 11
execute if score @s mr_shop_book_index matches 53 run scoreboard players set @s mr_shop_ability 12
execute if score @s mr_shop_book_index matches 54 run scoreboard players set @s mr_shop_ability 13
execute if score @s mr_shop_book_index matches 55 run scoreboard players set @s mr_shop_ability 14
execute if score @s mr_shop_book_index matches 69 run scoreboard players set @s mr_shop_ability 15
execute if score @s mr_shop_book_index matches 71 run scoreboard players set @s mr_shop_ability 16
execute if score @s mr_shop_book_index matches 72 run scoreboard players set @s mr_shop_ability 17
execute if score @s mr_shop_book_index matches 73 run scoreboard players set @s mr_shop_ability 18
execute if score @s mr_shop_book_index matches 80 run scoreboard players set @s mr_shop_ability 19
execute if score @s mr_shop_book_index matches 81 run scoreboard players set @s mr_shop_ability 20
execute if score @s mr_shop_book_index matches 82 run scoreboard players set @s mr_shop_ability 21
execute if score @s mr_shop_book_index matches 83 run scoreboard players set @s mr_shop_ability 22

#consumable
execute if score @s mr_shop_book_index matches 1 run scoreboard players set @s mr_shop_item 1
execute if score @s mr_shop_book_index matches 2 run scoreboard players set @s mr_shop_item 2
execute if score @s mr_shop_book_index matches 3 run scoreboard players set @s mr_shop_item 3
execute if score @s mr_shop_book_index matches 4 run scoreboard players set @s mr_shop_item 4
execute if score @s mr_shop_book_index matches 6 run scoreboard players set @s mr_shop_item 6
execute if score @s mr_shop_book_index matches 10 run scoreboard players set @s mr_shop_item 10
execute if score @s mr_shop_book_index matches 11 run scoreboard players set @s mr_shop_item 11
execute if score @s mr_shop_book_index matches 56 run scoreboard players set @s mr_shop_item 14

#item set
execute if score @s mr_shop_book_index matches 14 run scoreboard players set @s mr_shop_item_set 1
execute if score @s mr_shop_book_index matches 15 run scoreboard players set @s mr_shop_item_set 2
execute if score @s mr_shop_book_index matches 16 run scoreboard players set @s mr_shop_item_set 3
execute if score @s mr_shop_book_index matches 17 run scoreboard players set @s mr_shop_item_set 4
execute if score @s mr_shop_book_index matches 18 run scoreboard players set @s mr_shop_item_set 5
execute if score @s mr_shop_book_index matches 19 run scoreboard players set @s mr_shop_item_set 6
execute if score @s mr_shop_book_index matches 45 run scoreboard players set @s mr_shop_item_set 7
execute if score @s mr_shop_book_index matches 46 run scoreboard players set @s mr_shop_item_set 8
execute if score @s mr_shop_book_index matches 52 run scoreboard players set @s mr_shop_item_set 9
execute if score @s mr_shop_book_index matches 100 run scoreboard players set @s mr_shop_item_set 10



execute if score @s mr_shop_item matches 1.. run function mr_b:shop/buy_item
execute if score @s mr_shop_enchant matches 1.. run function mr_b:shop/buy_enchant
execute if score @s mr_shop_ability matches 1.. run function mr_b:shop/buy_ability
execute if score @s mr_shop_item_set matches 1.. run function mr_b:shop/buy_item_set

tag @s remove failed_purchase

scoreboard players reset @s mr_shop_book_index