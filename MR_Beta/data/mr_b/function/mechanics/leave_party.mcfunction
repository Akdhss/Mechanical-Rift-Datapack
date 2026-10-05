execute unless entity @e[name=player_spawn,limit=1,type=marker] run return fail
execute if entity @e[name=player_spawn,limit=1,type=marker,tag=wave_starting] run return fail
execute if entity @e[name=player_spawn,limit=1,type=marker,tag=run_ongoing] run return fail
execute as @p unless entity @s[team=rift_party] run return fail


scoreboard players reset @p mr_player_lobby_menu_toggle
tag @p remove party_dead
tag @p remove party_alive
scoreboard players reset @p mr_shop_player_currency
scoreboard players reset @p mr_shop_player_currency_check
execute as @p unless score @s player_death matches 1.. run say has left the party
scoreboard players reset @p player_death
scoreboard players reset @p ready_state
execute as @p run team leave @s

