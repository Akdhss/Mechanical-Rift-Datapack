execute on attacker if score @s mr_enchant_coal_cd matches 1.. run return fail
execute on attacker if entity @s[tag=mr_disarm] run return fail

execute at @s run function mr_b:enchant/bow/coalescence/coal_apply

execute on attacker run scoreboard players set @s mr_enchant_coal_cd 20
execute on attacker run scoreboard players reset @s[tag=hailstorm_buff] mr_enchant_coal_cd
execute on attacker run title @s actionbar [{text:"-- Coalescence on Cooldown --",color:"gray"}]
