

tag @s remove party_dead
tag @s remove party_alive
tag @s remove lily_consumed
tag @s remove lily_used
tag @s remove second_wind
tag @s remove determination_used
tag @s remove determination_active

scoreboard players reset @s player_death
scoreboard players reset @s mr_enchant_lily_time
scoreboard players reset @s mr_ability_castle_count
scoreboard players reset @s mr_ability_castle_count
scoreboard players reset @s mr_ability_castle_cd
scoreboard players reset @s mr_ability_frost_touch_cd_refresh
scoreboard players reset @s mr_ability_frost_touch_count
scoreboard players reset @s mr_ability_sanc_cd_count
scoreboard players reset @s mr_ability_sanc_cd
scoreboard players reset @s mr_enemy_credit_drop

scoreboard players set @s ready_state 0

gamemode creative


title @s title {text:"-- RUN FAILURE --",bold:true,color:"dark_red"}

function mr_b:shop/sell_check

tellraw @s {text:"----------------------------------------",bold:true,color:"dark_red"}
tellraw @s {text:"",bold:true,color:"dark_red"}
tellraw @s ["",{text:"Kills: "},{score:{name:"@s",objective:"mr_player_count_kill"},color:"dark_red"}]
tellraw @s ["",{text:"Damage Dealt (Melee): "},{score:{name:"@s",objective:"mr_player_count_damage_dealt_melee"},color:"dark_red"}]
tellraw @s ["",{text:"Damage Taken: "},{score:{name:"@s",objective:"mr_player_count_damage_taken"},color:"dark_red"}]
tellraw @s ["",{text:"Deaths: "},{score:{name:"@s",objective:"mr_player_count_deaths"},color:"dark_red"}]
tellraw @s {text:"",bold:true,color:"dark_red"}
tellraw @s {text:"----------------------------------------",bold:true,color:"dark_red"}

scoreboard players reset @s mr_player_count_kill
scoreboard players reset @s mr_player_count_damage_dealt_melee
scoreboard players reset @s mr_player_count_damage_taken
scoreboard players reset @s mr_player_count_deaths
scoreboard players reset @s mr_shop_player_currency

clear @s written_book[rarity=epic]