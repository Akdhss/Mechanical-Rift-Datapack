attribute @s[tag=desc_activate] gravity base set 99
effect give @s[tag=desc_activate] resistance infinite 255 true
tag @s[tag=desc_activate] add desc_land
tag @s[tag=desc_activate] remove desc_activate
scoreboard players reset @s mr_ability_desc_time
tellraw @a [{text:"[",bold:true,color:"dark_green"},{selector:"@s"},{text:"]",bold:true,color:"dark_green"},{text:" Comet Inbound!",bold:true,color:"red"}]

