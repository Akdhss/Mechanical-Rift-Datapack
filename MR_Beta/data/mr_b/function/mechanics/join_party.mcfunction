execute unless entity @e[name=player_spawn,limit=1,type=marker] run return fail
execute if entity @e[name=player_spawn,limit=1,type=marker,tag=wave_starting] run return fail
execute if entity @e[name=player_spawn,limit=1,type=marker,tag=run_ongoing] run return fail
scoreboard players reset @p player_death
execute as @p if entity @s[team=rift_party] run return fail
execute as @p run team join rift_party
execute as @p run say has joined the party
scoreboard players enable @p mr_shop_book_index
scoreboard players reset @s mr_shop_book_index
scoreboard players set @p ready_state 0