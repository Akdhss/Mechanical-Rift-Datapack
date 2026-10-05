effect give @s minecraft:instant_damage 2 3 true

attribute @s max_health modifier add boss_max_health_overhealth .5 add_multiplied_total

execute as @s if score @s mr_fallen_collapse_cd matches 4.. as @a at @s run playsound mr_b:enemy/boss/fallen/phase_2 master @s ~ ~ ~ 1.2
execute as @s if score @s mr_fallen_collapse_cd matches 4.. at @s run summon lightning_bolt
execute as @s if score @s mr_fallen_collapse_cd matches 4.. at @s run particle poof ~ ~1 ~ .4 .7 .4 0 20
execute as @s if score @s mr_fallen_collapse_cd matches 4.. run tag @s remove collapsing
execute as @s if score @s mr_fallen_collapse_cd matches 4.. run effect clear @e[type=wither_skeleton,tag=wave_mob,tag=boss] slowness
execute as @s if score @s mr_fallen_collapse_cd matches 4.. run effect clear @e[type=wither_skeleton,tag=wave_mob,tag=boss] resistance
execute as @s if score @s mr_fallen_collapse_cd matches 4.. run effect give @e[type=wither_skeleton,tag=wave_mob,tag=boss] speed infinite 1 false
execute as @s if score @s mr_fallen_collapse_cd matches 4.. run data merge entity @s {NoAI:0b}
execute as @s if score @s mr_fallen_collapse_cd matches 4.. run effect give @s minecraft:instant_damage 2 5 true
execute as @s if score @s mr_fallen_collapse_cd matches 4.. run item replace entity @s armor.chest with netherite_chestplate
execute as @s if score @s mr_fallen_collapse_cd matches 4.. run item replace entity @s armor.head with netherite_helmet
execute as @s if score @s mr_fallen_collapse_cd matches 4.. run return fail



scoreboard players add @e[tag=boss] mr_fallen_collapse_cd 1


execute as @s if score @s mr_fallen_collapse_cd matches 2 run tellraw @a ["",{text:"[ The Fallen ]  ",bold:true,color:"blue",font:"minecraft:default"},{text:"I grant you a dawn...",bold:true,color:"blue",font:"minecraft:illageralt"},{text:"  (I grant you a dawn...)",bold:true,color:"blue",font:"minecraft:default"}]
execute as @s if score @s mr_fallen_collapse_cd matches 3 run tellraw @a ["",{text:"[ The Fallen ]  ",bold:true,color:"blue",font:"minecraft:default"},{text:"Where all stars...",bold:true,color:"blue",font:"minecraft:illageralt"},{text:"  (Where all stars)",bold:true,color:"blue",font:"minecraft:default"}]
execute as @s if score @s mr_fallen_collapse_cd matches 4 run tellraw @a ["",{text:"[ The Fallen ]  ",bold:true,color:"blue",font:"minecraft:default"},{text:"Burn to ash...",bold:true,color:"blue",font:"minecraft:illageralt"},{text:"  (Burn to ash...)",bold:true,color:"blue",font:"minecraft:default"}]





schedule function mr_b:boss/the_fallen/fallen_lines_redirect 3s

