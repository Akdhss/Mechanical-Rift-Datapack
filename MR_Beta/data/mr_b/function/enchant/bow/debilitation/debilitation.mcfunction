execute on origin if score @s mr_enchant_debil_time matches 1.. run return fail
execute on origin if entity @s[tag=mr_disarm] run return fail

execute as @s[type=arrow,nbt={crit:true,weapon:{components:{"minecraft:enchantments":{"mr_b:debilitation":1}}}}] on origin run function mr_b:enchant/bow/debilitation/debilitation_tag
execute as @s[type=arrow,nbt={crit:true,weapon:{components:{"minecraft:enchantments":{"mr_b:debilitation":1}}}}] run kill @s


execute on origin run tag @s remove debil_fire