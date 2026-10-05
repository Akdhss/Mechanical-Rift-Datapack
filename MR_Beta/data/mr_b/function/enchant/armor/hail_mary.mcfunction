execute unless entity @s[scores={player_death=1..}] run return fail
summon armor_stand ~ ~ ~ {CustomName:"hail_mary"}

title @a[team=rift_party] title {text:"",bold:true,color:"dark_red"}
title @a subtitle {text:"!! HAIL MARY ARMED !!",bold:true,color:"red"}
tag @s add hail_mary_origin

execute as @e[name=hail_mary] run effect give @s glowing infinite 1 true


execute if items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/determination/determination"}]] at @s[tag=determination_used] run function mr_b:mechanics/active_death
execute if items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/determination/determination"}]] at @s[tag=determination_used] run scoreboard players reset @s player_death

execute unless items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/determination/determination"}]] run function mr_b:mechanics/active_death
execute unless items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/determination/determination"}]] run scoreboard players reset @s player_death


execute if items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/determination/determination"}]] at @s[tag=!determination_used] run function mr_b:enchant/armor/chestplate/determination/determination


