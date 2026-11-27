# Global lobby UI tick. Called once from tick.mcfunction.
# Nothing to do unless a lobby chest exists.
execute unless entity @e[type=minecraft:chest_minecart,tag=lobby_cart,limit=1] run return 0

# remove chests whose owner stopped holding the launcher / left the party / went offline
execute as @e[type=minecraft:chest_minecart,tag=lobby_cart] at @s run function mr_b:ui/lobby/cart_check

# buttons that were dropped (Q or click outside the GUI)
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{lobby_item:1b}}}}]
