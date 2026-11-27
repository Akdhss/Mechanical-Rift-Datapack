# Puts the launcher in the last hotbar slot. Run as the player.
# Holding it (selected slot) spawns the lobby chest minecart in front of you.
item replace entity @s hotbar.8 with minecraft:nether_star[custom_data={lobby_launcher:1b},custom_name={text:"Lobby Menu",italic:false,color:"gold",bold:true},lore=[{text:"Hold this, then right-click the chest minecart.",italic:false,color:"gray"}],rarity=epic,use_cooldown={seconds:1,cooldown_group:"minecraft:nondroppable"}] 1
