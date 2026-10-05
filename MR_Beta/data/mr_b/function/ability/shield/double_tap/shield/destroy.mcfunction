
playsound mr_b:double_tap_break master @s

tag @s remove double_tap_shield_active

effect clear @s minecraft:resistance
attribute @s knockback_resistance base reset
attribute @s explosion_knockback_resistance base reset

#playsound minecraft:block.glass.break master @s ~ ~ ~ 1 1
#playsound minecraft:block.conduit.attack.target master @s ~ ~ ~ 1 1
#playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 1 1
#playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 1 1.75
#playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 1 0.75