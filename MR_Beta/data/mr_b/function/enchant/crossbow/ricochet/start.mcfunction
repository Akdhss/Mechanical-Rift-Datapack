tag @s add ricochet_arrow
function mr_b:enchant/crossbow/ricochet/store_motion

execute store result score COUNT_A math run data get entity @s weapon.components."minecraft:enchantments"."mr_b:ricochet"
execute store result score COUNT_B math run data get entity @s item.components."minecraft:enchantments"."mr_b:ricochet"
scoreboard players operation COUNT_A math += COUNT_B math
scoreboard players set COUNT_A math 2
execute store result entity @s data.ricochets int 1 run scoreboard players get COUNT_A math
data modify entity @s SoundEvent set value "entity.slime.attack"

schedule function mr_b:enchant/crossbow/ricochet/check_all 1t append