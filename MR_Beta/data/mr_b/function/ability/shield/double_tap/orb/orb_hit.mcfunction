$execute at @e[tag=double_tap_victim] run summon slime ~$(x) ~$(y) ~$(z) {NoAI:1b,Size:0,Tags:["double_tap_slime"],CustomName:"double_tap_orb",CustomNameVisible:0b}

scoreboard players reset .failsafe mr_ability_double_tap_failsafe 

scoreboard players add @e[name=double_tap_orb] mr_ability_double_tap_limit 1

execute as @e[name=double_tap_orb] if score @s mr_ability_double_tap_limit matches 11.. run kill @s
effect give @e[name=double_tap_orb] resistance infinite 255 true
effect give @e[name=double_tap_orb] invisibility infinite 255 true
execute as @e[type=slime,tag=double_tap_slime] at @s positioned ~ ~-.75 ~ facing entity @e[tag=double_tap_victim] feet run function mr_b:ability/shield/double_tap/orb/orb_ray_2

tag @e remove double_tap_slime
scoreboard players set .distance global_range 500
