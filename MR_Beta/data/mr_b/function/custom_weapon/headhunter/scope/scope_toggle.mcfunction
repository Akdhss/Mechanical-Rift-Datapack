execute unless score @s mr_player_right_click_impulse matches 1.. anchored eyes run scoreboard players add @s mr_player_scope_toggle 1

execute if score @s mr_player_scope_toggle matches 2.. run scoreboard players reset @s mr_player_scope_toggle



execute unless score @s mr_player_right_click_impulse matches 1.. if score @s mr_player_scope_toggle matches 1.. run function mr_b:custom_weapon/headhunter/scope/scope_in
execute unless score @s mr_player_right_click_impulse matches 1.. unless score @s mr_player_scope_toggle matches 1.. run function mr_b:custom_weapon/headhunter/scope/scope_out

advancement revoke @s only mr_b:player_generic/right_click
advancement revoke @s only mr_b:player_generic/right_click_impulse
scoreboard players set @s mr_player_right_click_impulse 2