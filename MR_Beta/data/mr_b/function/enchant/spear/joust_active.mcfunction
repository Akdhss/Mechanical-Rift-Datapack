scoreboard players add @s mr_enchant_joust 1

execute as @e[team=rift_enemy,distance=..2.5] run damage @s 2.5 mr_b:blade_call by @e[limit=1,tag=jousting,sort=nearest]

tag @s[scores={mr_enchant_joust=15..}] remove jousting
scoreboard players reset @s[scores={mr_enchant_joust=15..}] mr_enchant_joust