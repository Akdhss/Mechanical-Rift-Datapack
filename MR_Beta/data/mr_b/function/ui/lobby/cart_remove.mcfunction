# Runs as the lobby chest, at the chest. Removing the chest also closes the GUI for whoever has it open.
# Empty it first so the buttons don't drop, then clean up the chest minecart item that /kill drops.
data modify entity @s Items set value []
kill @s
kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:chest_minecart"}}]
