# warn-off-file execute-group
# Ability purchases: btn_id is interpreted relative to the currently open ability category.
# Main ability page (ultimates + offensive)
execute if score @s shop_page_extra matches 1 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:1}] run trigger mr_shop_book_index set 20
execute if score @s shop_page_extra matches 1 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:2}] run trigger mr_shop_book_index set 55
execute if score @s shop_page_extra matches 1 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:3}] run trigger mr_shop_book_index set 53
execute if score @s shop_page_extra matches 1 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:4}] run trigger mr_shop_book_index set 83
execute if score @s shop_page_extra matches 1 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:5}] run trigger mr_shop_book_index set 82
execute if score @s shop_page_extra matches 1 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:6}] run trigger mr_shop_book_index set 26
execute if score @s shop_page_extra matches 1 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:7}] run trigger mr_shop_book_index set 28
execute if score @s shop_page_extra matches 1 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:8}] run trigger mr_shop_book_index set 54
execute if score @s shop_page_extra matches 1 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:9}] run trigger mr_shop_book_index set 72
execute if score @s shop_page_extra matches 1 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:10}] run trigger mr_shop_book_index set 73

# Defensive abilities
execute if score @s shop_page_extra matches 2 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:1}] run trigger mr_shop_book_index set 21
execute if score @s shop_page_extra matches 2 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:2}] run trigger mr_shop_book_index set 22
execute if score @s shop_page_extra matches 2 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:3}] run trigger mr_shop_book_index set 24
execute if score @s shop_page_extra matches 2 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:4}] run trigger mr_shop_book_index set 69
execute if score @s shop_page_extra matches 2 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:5}] run trigger mr_shop_book_index set 71

# Utility abilities
execute if score @s shop_page_extra matches 3 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:1}] run trigger mr_shop_book_index set 27
execute if score @s shop_page_extra matches 3 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:2}] run trigger mr_shop_book_index set 40
execute if score @s shop_page_extra matches 3 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:3}] run trigger mr_shop_book_index set 41
execute if score @s shop_page_extra matches 3 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:4}] run trigger mr_shop_book_index set 80
execute if score @s shop_page_extra matches 3 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:5}] run trigger mr_shop_book_index set 81

# Mobility abilities
execute if score @s shop_page_extra matches 4 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:1}] run trigger mr_shop_book_index set 23
execute if score @s shop_page_extra matches 4 if items entity @s player.cursor *[minecraft:custom_data~{btn_id:2}] run trigger mr_shop_book_index set 25
