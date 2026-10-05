tag @s add feasting
execute as @e[team=rift_enemy,nbt={HurtTime:9s}] at @s on attacker if entity @s[tag=feasting] if items entity @s weapon.mainhand diamond_spear run effect give @s saturation 1 0 true
execute as @e[team=rift_enemy,nbt={HurtTime:9s}] at @s on attacker if entity @s[tag=feasting] if items entity @s weapon.mainhand netherite_spear run effect give @s saturation 1 0 true
execute as @e[team=rift_enemy,nbt={HurtTime:9s}] at @s on attacker if entity @s[tag=feasting] if items entity @s weapon.mainhand diamond_axe run effect give @s saturation 1 3 true
execute as @e[team=rift_enemy,nbt={HurtTime:9s}] at @s on attacker if entity @s[tag=feasting] if items entity @s weapon.mainhand netherite_axe run effect give @s saturation 1 3 true




tag @s remove feasting
