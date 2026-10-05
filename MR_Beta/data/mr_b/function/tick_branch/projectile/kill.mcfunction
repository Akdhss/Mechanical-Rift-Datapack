tag @s add checked

execute if entity @s[type=arrow] on origin if entity @s[tag=mr_disarm] if entity @s[gamemode=!creative] unless items entity @s weapon.* *[enchantments~[{enchantments:"infinity"}]] run give @s arrow 1 

execute if entity @s[type=ender_pearl] on origin if entity @s[tag=mr_stun] if entity @s[gamemode=!creative] run give @s ender_pearl 1


#execute on origin unless entity @s[type=witch,tag=mr_disarm] run return fail
#execute on origin unless entity @s[type=blaze,tag=mr_disarm] run return fail
execute on origin unless entity @s[tag=mr_disarm] run return fail



particle witch ~ ~ ~ .1 .1 .1 1 5


kill @s

