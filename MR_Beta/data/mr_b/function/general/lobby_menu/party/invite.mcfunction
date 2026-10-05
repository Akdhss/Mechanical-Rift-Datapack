execute unless entity @a[team=!rift_party] run title @p actionbar ["",{text:"-- No valid players to invite to the party --",color:"gray"}]
execute unless entity @a[team=!rift_party] run return fail

execute if score @s mr_player_invite_id matches -2147483648.. run title @p actionbar ["",{text:"-- Invite ongoing! --",color:"red"}]
execute if score @s mr_player_invite_id matches -2147483648.. run return fail

tellraw @s ["",{text:"   ---------------------------"},{text:"\n"},{text:"\n"}]
tellraw @s ["",{text:"   Select a player to invite."},{text:"\n"}]

scoreboard players reset @s mr_player_invite_expire
scoreboard players enable @s mr_player_invite_id
tag @s add invite_start

tag @a[team=!rift_party] add invited

execute as @a[tag=invited] store result score @s mr_player_invite_queue run data get entity @s UUID[0]

execute as @a[tag=invited] store result storage mr_b:invite id.queue int 1 run scoreboard players get @s mr_player_invite_queue

execute as @a[tag=invited] run function mr_b:general/lobby_menu/party/inviting with storage mr_b:invite id

tellraw @s ["",{text:"\n"},{text:"\n"},{text:"   ---------------------------"},]

tag @a remove invite_queue
tag @a remove invite_start
tag @a remove invited

