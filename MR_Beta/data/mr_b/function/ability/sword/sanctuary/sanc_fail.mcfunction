tag @s add sanc_cancel
title @a[tag=sanc_cancel] actionbar [{text:"-- Comet Fall on Cooldown! --",color:"gray"}]
tag @s remove sanc_cancel

playsound entity.villager.no master @p ~ ~ ~ .5 1
playsound block.note_block.bass master @p ~ ~ ~ .5 0.6
playsound block.anvil.land master @p ~ ~ ~ 0.3 1.4
playsound block.dispenser.fail master @p ~ ~ ~ .4 1
playsound entity.item.break master @p ~ ~ ~ 0.6 1.5