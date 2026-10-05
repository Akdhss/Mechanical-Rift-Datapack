function mr_b:ability/shield/double_tap/shield/destroy

stopsound @s master mr_b:double_tap_break

tag @s remove double_tap_active
tag @s remove double_tap_shield_active
scoreboard players reset @s mr_ability_double_tap_time

playsound mr_b:double_tap_expire master @a ~ ~ ~ 2

#playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 1000 1
#playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1000 1
#particle minecraft:falling_obsidian_tear ~ ~1.5 ~ .25 0.5 .25 .5 150 force
#particle minecraft:falling_obsidian_tear ~ ~1.5 ~ .25 0.5 .25 2 150 force