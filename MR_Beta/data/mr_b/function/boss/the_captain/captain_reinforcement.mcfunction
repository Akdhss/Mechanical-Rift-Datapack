summon area_effect_cloud ~ ~ ~ {Passengers:[{id:pillager,Tags:["wave_mob","pathing_mob","landing"],equipment:{mainhand:{id:crossbow}}},{id:pillager,Tags:["wave_mob","pathing_mob","landing"],equipment:{mainhand:{id:crossbow}}},{id:pillager,Tags:["wave_mob","pathing_mob","landing"],equipment:{mainhand:{id:crossbow}}},{id:vindicator,Tags:["wave_mob","pathing_mob","landing"],equipment:{mainhand:{id:iron_axe}}},{id:vindicator,Tags:["wave_mob","pathing_mob","landing"],equipment:{mainhand:{id:iron_axe}}}]}
kill @e[type=area_effect_cloud]
spreadplayers ~ ~ 3 10 under 250 false @e[tag=landing]
effect give @e[type=vindicator,tag=wave_mob,tag=landing] resistance infinite 1 true
execute as @e[type=pillager,tag=wave_mob,tag=landing] run enchant @s quick_charge 2
execute as @e[type=pillager,tag=wave_mob,tag=landing] run enchant @s piercing 2
effect give @e[type=pillager,tag=wave_mob,tag=landing] speed infinite 2 true
tag @e[type=pillager,tag=wave_mob,tag=!boss] add camo_ranged
execute as @e[tag=wave_mob,tag=landing] at @s run tp @s ~ ~10 ~
effect give @e[tag=wave_mob,tag=landing] slow_falling 5 2 true

playsound minecraft:entity.pillager.celebrate master @a ~ ~ ~ 1.5 1
playsound minecraft:entity.ravager.roar master @a ~ ~ ~ 1.5 0.9
playsound minecraft:entity.vindicator.ambient master @a ~ ~ ~ 1.8 0.8
playsound minecraft:block.bell.use master @a ~ ~ ~ 1.7 1.2
playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1.6 0.8

execute as @e[tag=boss,type=pillager,name=Captain] run tellraw @a ["",{text:"[ The Captain ]  ",bold:true,color:"dark_red",font:"minecraft:default"},{text:"Rally to ME!",bold:true,color:"dark_red",font:"minecraft:illageralt"},{text:"  (Rally to ME!)",bold:true,color:"dark_red",font:"minecraft:default"}]
tag @s remove reinforcement_ready