execute if entity @s[tag=silenced] run return fail

clear @s potion[potion_contents={custom_color:7667924}] 1

playsound mr_b:double_tap_cast master @s

function mr_b:ability/shield/double_tap/shield/create