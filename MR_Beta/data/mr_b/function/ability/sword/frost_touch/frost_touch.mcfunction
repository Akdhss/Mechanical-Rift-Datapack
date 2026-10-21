execute if score @s mr_ability_frost_touch_cd matches 1.. run return fail
execute if entity @s[tag=silenced] run return fail
clear @s potion[potion_contents={custom_color:122836}] 1

scoreboard players set @s mr_ability_frost_touch_cd 10

tag @s add frost_touch

execute as @s unless score @s mr_ability_castle_cd matches 1.. run scoreboard players set @s mr_ability_frost_touch_cd_refresh 100
scoreboard players add @s mr_ability_frost_touch_count 1

#tellraw @a [{text:"[",bold:true,color:"dark_green"},{selector:"@a[tag=frost_touch,limit=1]"},{text:"]",bold:true,color:"dark_green"},{text:" Shiver!",bold:false,color:"blue"}]

summon marker ~ ~ ~ {CustomName:"frost_orb",Tags:["unset_frost_orb"]}

execute as @e[tag=unset_frost_orb] run tp @s @p[tag=frost_touch]

execute as @e[tag=unset_frost_orb] run tp @s ~ ~1.5 ~

tag @e remove frost_touch
tag @e remove unset_frost_orb

