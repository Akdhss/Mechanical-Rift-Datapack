execute if entity @s[tag=invitation_sent] run return fail

tag @s add invitation_sent

scoreboard players enable @s mr_shop_book_index
tellraw @s [{text:"     You have been invited to join the party."},{text:"\n"},{text:" [ Accept ]   ",color:"green",click_event:{action:"run_command",command:"trigger mr_shop_book_index set -50"}},{text:" |    ",},{text:"[ Decline ]",color:"red",click_event:{action:"run_command",command:"trigger mr_shop_book_index set -51"}}]
