execute at @s run function mr_b:mechanics/join_party
say accepted
tag @s remove invitation_sent
scoreboard players reset @a mr_player_invite_id
scoreboard players reset @s mr_shop_book_index
scoreboard players reset @s mr_player_invite_expire

