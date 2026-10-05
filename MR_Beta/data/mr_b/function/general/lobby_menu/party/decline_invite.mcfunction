

tag @s add invite_start
scoreboard players reset @a mr_player_invite_id
scoreboard players reset @s mr_shop_book_index
scoreboard players reset @s mr_player_invite_expire

title @s[tag=invitation_sent] actionbar ["",{text:"-- You have declined the invite --",color:red}]
title @s[tag=invite_start] actionbar ["",{text:"-- Invitation Expired --",color:gray}]

tag @s remove invitation_sent
tag @s remove invite_start