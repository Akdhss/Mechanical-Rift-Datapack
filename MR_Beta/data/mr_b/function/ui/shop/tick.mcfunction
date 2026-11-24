# 3. Keep the active page populated on the Chest Minecart
execute if score @s shop_page matches 1 run function mr_b:ui/shop/render_page_1
execute if score @s shop_page matches 2 run function mr_b:ui/shop/render_page_2

execute if score @s shop_page matches 3 if score @s shop_page_extra matches 1 run function mr_b:ui/shop/render_page_3
execute if score @s shop_page matches 3 if score @s shop_page_extra matches 2 run function mr_b:ui/shop/nav/sub_page/enchantment/defensive_1
execute if score @s shop_page matches 3 if score @s shop_page_extra matches 3 run function mr_b:ui/shop/nav/sub_page/enchantment/utility_1
execute if score @s shop_page matches 3 if score @s shop_page_extra matches 4 run function mr_b:ui/shop/nav/sub_page/enchantment/mobility_1

execute if score @s shop_page matches 4 if score @s shop_page_extra matches 1 run function mr_b:ui/shop/render_page_4
execute if score @s shop_page matches 4 if score @s shop_page_extra matches 2 run function mr_b:ui/shop/nav/sub_page/ability/defensive_1
execute if score @s shop_page matches 4 if score @s shop_page_extra matches 3 run function mr_b:ui/shop/nav/sub_page/ability/utility_1
execute if score @s shop_page matches 4 if score @s shop_page_extra matches 4 run function mr_b:ui/shop/nav/sub_page/ability/mobility_1

execute if score @s shop_page matches 5 run function mr_b:ui/shop/render_page_5
execute if score @s shop_page matches 6 run function mr_b:ui/shop/render_page_6

