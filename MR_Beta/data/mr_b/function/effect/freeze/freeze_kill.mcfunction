execute as @s at @s as @e[tag=mr_freeze] if score @s mr_effect_freeze_link = @n[type=block_display,tag=frozen_state2] mr_effect_freeze_link run return fail
kill @s