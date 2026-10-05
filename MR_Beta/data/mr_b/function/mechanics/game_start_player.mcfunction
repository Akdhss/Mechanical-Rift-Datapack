effect give @s blindness 2 255 true

effect give @s saturation 2 255 true
effect give @s instant_health 1000 255 true

function mr_b:effect/cleanse/cleanse_effect

tag @s add party_alive
tag @s add party_healthy


function mr_b:general/lobby_menu/menu_off

clear @s
gamemode adventure
function mr_b:shop/sell_check
effect clear @s absorption
clear @s written_book[rarity="epic"]
scoreboard players set @s ready_state 0
scoreboard players reset @s mr_player_count_kill
scoreboard players reset @s mr_player_count_damage_dealt_melee
scoreboard players reset @s mr_player_count_damage_taken
scoreboard players reset @s mr_player_count_deaths