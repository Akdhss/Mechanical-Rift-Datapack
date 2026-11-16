# Fails the purchase when the shop is class-locked for this player and the entry is labelled "locked".
# "general" entries always pass. Change the condition on the first line to wire the lock to whatever you use.
execute if entity @s[tag=item_set_bought,tag=!class_freemix] if data storage mr_b:shop buy{lock:"locked"} run function mr_b:shop/entry/class_locked
