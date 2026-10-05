scoreboard players add .global mr_throwable_grenade_link 1

scoreboard players operation @e[tag=throwable_link] mr_throwable_grenade_link = .global mr_throwable_grenade_link

tag @e remove throwable_link