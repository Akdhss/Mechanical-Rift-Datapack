execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"mr_b:ratio"}]] run scoreboard players add @s mr_shop_player_currency 15
execute if entity @s[tag=whirlwind_user] run scoreboard players add @s mr_ability_whirlwind_kill 2
advancement revoke @s only mr_b:enchant_mechanic/axe/ratio_kill