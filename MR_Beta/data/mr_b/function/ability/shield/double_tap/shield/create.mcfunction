tag @s add double_tap_active
tag @s add double_tap_shield_active
scoreboard players set @s mr_ability_double_tap_time 350
function mr_b:effect/cleanse/cleanse_effect
execute as @s store result bossbar double_tap_time max run scoreboard players get @s mr_ability_double_tap_time
execute as @s store result bossbar double_tap_time_active max run scoreboard players get @s mr_ability_double_tap_time

#playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1
#playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 1
#playsound minecraft:block.conduit.activate master @a ~ ~ ~ 1 1