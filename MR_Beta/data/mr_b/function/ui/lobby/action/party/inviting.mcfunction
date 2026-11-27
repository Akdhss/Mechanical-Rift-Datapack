$tellraw @p[tag=invite_start] [{text:"   [ "},{selector:"@s",click_event:{action:"run_command",command:"trigger mr_player_invite_id set $(queue)"}},{text:" ]"}]

#scoreboard players reset @a mr_player_invite_queue
