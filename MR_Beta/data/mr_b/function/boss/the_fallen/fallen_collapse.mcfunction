effect give @s resistance 8000 4 true
effect give @s slowness 8000 255 true

tellraw @a ["",{text:"[ The Fallen ]  ",bold:true,color:"blue",font:"minecraft:default"},{text:"...",bold:true,color:"blue",font:"minecraft:illageralt"},{text:"  (...)",bold:true,color:"blue",font:"minecraft:default"}]
data merge entity @s {NoAI:1b}

#stopsound @a master mr_b:enemy/boss/fallen/hurt
execute as @a run playsound mr_b:enemy/boss/fallen/laugh master @s ~ ~ ~ .5 .8
execute as @a run playsound mr_b:enemy/boss/fallen/revive master @s ~ ~ ~ .9 .75

tag @s remove collapse_ready
tag @s add collapsing
scoreboard players set @e[tag=boss] mr_fallen_collapse_cd 0
schedule function mr_b:boss/the_fallen/fallen_lines 2s