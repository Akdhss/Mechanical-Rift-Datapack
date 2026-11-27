# Runs as the player, at the spot in front of the player's eyes.
summon minecraft:chest_minecart ~ ~-0.35 ~ {Tags:["lobby_cart","lobby_new"],CustomName:{text:"Lobby Menu",color:"gold",bold:true},Invulnerable:1b,NoGravity:1b,Silent:1b,Motion:[0.0,0.0,0.0]}
scoreboard players operation @e[type=minecraft:chest_minecart,tag=lobby_new,limit=1] lobby_id = #me lobby_id
scoreboard players set @e[type=minecraft:chest_minecart,tag=lobby_new,limit=1] lobby_page 1
tag @e[type=minecraft:chest_minecart,tag=lobby_new] remove lobby_new
function mr_b:ui/lobby/render
