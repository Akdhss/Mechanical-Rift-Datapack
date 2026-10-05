advancement revoke @s only mr_b:ability/ability_check
execute if entity @s[tag=silenced] run return fail
execute if entity @s[tag=mr_stun] run return fail

#grenade
execute if items entity @s weapon.* *[potion_contents={custom_color:31785}] run function mr_b:ability/grenade/impact/summon
execute if items entity @s weapon.* *[potion_contents={custom_color:14642176}] run function mr_b:ability/grenade/molotov/summon
execute if items entity @s weapon.* *[potion_contents={custom_color:40066}] run function mr_b:ability/grenade/snare/summon
execute if items entity @s weapon.* *[potion_contents={custom_color:16759418}] run function mr_b:ability/grenade/impulse/summon


#trap
execute if items entity @s weapon.* *[potion_contents={custom_color:3112960}] run function mr_b:ability/trap/claymore/claymore_summon
execute if items entity @s weapon.* *[potion_contents={custom_color:174813}] run function mr_b:ability/trap/frost/frost_summon
execute if items entity @s weapon.* *[potion_contents={custom_color:7929856}] run function mr_b:ability/trap/landmine/landmine_summon
execute if items entity @s weapon.* *[potion_contents={custom_color:11768320}] run function mr_b:ability/trap/quicksand/quicksand_summon

#standard
execute if items entity @s weapon.* *[potion_contents={custom_color:1670752}] run function mr_b:ability/shield/castle/castle
execute if items entity @s weapon.* *[potion_contents={custom_color:16770196}] run function mr_b:ability/spear/descension/desc_activate
execute if items entity @s weapon.* *[potion_contents={custom_color:15333398}] run function mr_b:ability/shield/divinity/divinity
execute if items entity @s weapon.* *[potion_contents={custom_color:7667924}] run function mr_b:ability/shield/double_tap/double_tap_activate
execute if items entity @s weapon.* *[potion_contents={custom_color:122836}] run function mr_b:ability/sword/frost_touch/frost_touch
execute if items entity @s weapon.* *[potion_contents={custom_color:9078660}] run function mr_b:ability/sword/guiding_wind/guiding_wind_activate
execute if items entity @s weapon.* *[potion_contents={custom_color:15300635}] run function mr_b:ability/sword/sanctuary/sanc_activate
execute if items entity @s weapon.* *[potion_contents={custom_color:14729117}] run function mr_b:ability/axe/cleaving_whirlwind/whirlwind_activate
execute if items entity @s weapon.* *[potion_contents={custom_color:8782047}] run function mr_b:ability/shield/contingency/contingency

#ultimate
execute if items entity @s weapon.* *[potion_contents={custom_color:15786192}] run function mr_b:enchant/sword/blade_call/blade_call_activate
execute if items entity @s weapon.* *[potion_contents={custom_color:16752722}] run function mr_b:ability/axe/blunt_cut/blunt_cut_activate


#domain
execute if items entity @s weapon.* *[potion_contents={custom_color:1441913}] run function mr_b:ability/domain/hailstorm/hailstorm_activation
execute if items entity @s weapon.* *[potion_contents={custom_color:10592673}] run function mr_b:ability/domain/steel_garden/activation
execute if items entity @s weapon.* *[potion_contents={custom_color:50636}] run function mr_b:ability/domain/null_command/activation









