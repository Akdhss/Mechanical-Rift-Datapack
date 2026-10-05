#execute unless entity @s[tag=party_alive] run return fail
tag @s add party_dead
tag @s remove party_alive
scoreboard players reset @s player_death
execute as @a[team=rift_party] at @s run playsound mr_b:ally_death master @s ~ ~ ~ 1 1
execute as @a[tag=party_alive] if items entity @s armor.head *[enchantments~[{enchantments:"mr_b:armor/head/adrenaline/adrenaline"}]] run effect give @s absorption 10 2 true
execute as @a[tag=party_alive] if items entity @s armor.head *[enchantments~[{enchantments:"mr_b:armor/head/adrenaline/adrenaline"}]] run effect give @s speed 10 1 true


execute as @s[tag=!determination_used] if items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/determination/determination"}]] run return fail

execute store result score .global global_random run random value 1..3

execute at @s if score .global global_random matches 1 run playsound mr_b:player/generic/death/death1 player @a
execute at @s if score .global global_random matches 2 run playsound mr_b:player/generic/death/death2 player @a
execute at @s if score .global global_random matches 3 run playsound mr_b:player/generic/death/death3 player @a
