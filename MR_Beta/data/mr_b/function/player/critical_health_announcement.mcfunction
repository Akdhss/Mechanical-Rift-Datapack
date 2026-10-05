tag @s remove party_healthy
playsound mr_b:low_health_alert master @s ~ ~ ~ 1.5
tellraw @a ["",{text:"[",color:"dark_green"},{selector:"@s"},{text:"]",color:"dark_green"},{text:" \"Health Low!\"",color:"red"}]