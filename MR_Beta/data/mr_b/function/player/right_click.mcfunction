execute if items entity @s weapon.* *[custom_data~{scope_available:true}] at @s run function mr_b:custom_weapon/headhunter/scope/scope_toggle
execute if items entity @s weapon.* *[use_cooldown={seconds:1,cooldown_group:menu_item}] at @s run function mr_b:general/lobby_menu/right_click_toggle
advancement revoke @s only mr_b:player_generic/right_click
