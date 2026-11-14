scoreboard players set @a[team=rift_party] ready_state 1
function mr_b:mechanics/start_game

schedule clear mr_b:mechanics/redirect/redirect_game_start

function mr_b:mechanics/redirect/redirect_game_start