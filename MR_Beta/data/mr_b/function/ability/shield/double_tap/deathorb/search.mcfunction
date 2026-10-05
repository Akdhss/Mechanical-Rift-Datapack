scoreboard players operation .search mr_ability_double_tap_link = @s mr_ability_double_tap_link
tag @s add death_orb_search
tag @s add death_orb_activate

execute as @e[tag=death_orb_linked] at @s if score @s mr_ability_double_tap_link = .search mr_ability_double_tap_link run function mr_b:ability/shield/double_tap/deathorb/search_success


execute as @e[tag=death_orb_activate] at @s run function mr_b:ability/shield/double_tap/deathorb/search_fail
tag @s remove death_orb_search