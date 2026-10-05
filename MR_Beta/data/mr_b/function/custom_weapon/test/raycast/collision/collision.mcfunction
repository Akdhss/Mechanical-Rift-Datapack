## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you


execute if entity @s[tag=hh_hit] run return fail
tag @s add hh_hit
# Detect Headshots/bodyshots/legshots
execute positioned ~ ~0.35 ~ unless entity @s[dx=0,tag=!raycast_hh] positioned ~ ~-0.3 ~ run function mr_b:custom_weapon/headhunter/raycast/collision/headshot

execute positioned ~ ~0.35 ~ if entity @s[dx=0,tag=!raycast_hh] positioned ~ ~-2 ~ if entity @s[dx=0] run function mr_b:custom_weapon/headhunter/raycast/collision/bodyshot

execute positioned ~ ~-1.95 ~ unless entity @s[dx=0,tag=!raycast_hh] run function mr_b:custom_weapon/headhunter/raycast/collision/legshot



#execute as @s[name=double_tap_orb] as @a[tag=raycast_blade_call] run function mr_b:enchant/sword/blade_call/blade_call_refresh

particle crit ~ ~ ~ 0 0 0 0 5



#### Max out range to end the raycast

