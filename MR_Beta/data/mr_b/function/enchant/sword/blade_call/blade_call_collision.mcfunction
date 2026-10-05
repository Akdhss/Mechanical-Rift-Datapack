## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you
tag @s add blade_call_hit

# Detect Headshots/bodyshots/legshots
execute positioned ~ ~0.35 ~ unless entity @s[dx=0,tag=!raycast_blade_call] positioned ~ ~-0.3 ~ run function mr_b:enchant/sword/blade_call/blade_call_headshot

execute positioned ~ ~0.35 ~ if entity @s[dx=0,tag=!raycast_blade_call] positioned ~ ~-2 ~ if entity @s[dx=0] run function mr_b:enchant/sword/blade_call/blade_call_bodyshot

execute positioned ~ ~-1.95 ~ unless entity @s[dx=0,tag=!raycast_blade_call] run function mr_b:enchant/sword/blade_call/blade_call_legshot

execute as @s[name=double_tap_orb] as @a[tag=raycast_blade_call] run function mr_b:enchant/sword/blade_call/blade_call_refresh

kill @e[type=item_display,tag=!used]

particle crit ~ ~ ~ 0 0 0 0 5

scoreboard players set .distance global_range 350



#### Max out range to end the raycast

