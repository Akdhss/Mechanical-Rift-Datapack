execute if entity @s[tag=death_orb_linked] run return fail
tag @n add death_orb_linking
tag @n add death_orb_linked
summon marker ~ ~ ~ {CustomName:"death_orb_loc",Tags:["death_orb_linking"]}
scoreboard players add .global mr_ability_double_tap_link 1
scoreboard players operation @n[name=!death_orb_loc,limit=1] mr_ability_double_tap_link = .global mr_ability_double_tap_link
scoreboard players operation @n[name=death_orb_loc,limit=1] mr_ability_double_tap_link = .global mr_ability_double_tap_link
tag @e remove death_orb_linking

