execute if score @s mr_throwable_impact_cd matches 1.. run return fail
execute if entity @s[tag=silenced] run return fail

clear @s potion[max_stack_size=64,potion_contents={custom_color:31785}] 1
execute anchored eyes run summon splash_potion ^ ^ ^.5 {Tags:["mr_projectile","mr_projectile_strong","throwable_link"]}
summon marker ^ ^ ^.5 {CustomName:"impact",Tags:["mr_projectile_body","throwable_link"]}
#summon armor_stand ^ ^ ^.5 {CustomName:"test_beacon",Tags:["mr_projectile_body","throwable_link"]}

#give @s potion[max_stack_size=64,potion_contents={custom_color:31785}] 1
scoreboard players set @s mr_throwable_impact_cd 5

function mr_b:ability/grenade/throwable_link