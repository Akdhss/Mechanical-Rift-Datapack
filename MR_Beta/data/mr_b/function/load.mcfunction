# This only activates on world start or when the datapack is loaded'
tellraw @a [""]
tellraw @a ["",{text:" ",color:"white"},{text:"Mechanical Rift: BETA Datapack",color:"white",underlined:true},{text:" by ",color:"white"},{text:"Akdhss ",bold:true,color:"blue"},{text:"& ",color:"white"},{text:"Dawnsire ",bold:true,color:"gold"},{text:"has been loaded!",color:"white"}]
tellraw @a [""]

scoreboard objectives add ui dummy
# link to minecart to player
scoreboard objectives add ui.id dummy

setblock 0 -64 0 yellow_shulker_box




scoreboard objectives add global_range dummy
scoreboard objectives add global_random dummy
scoreboard objectives add global_variable dummy

scoreboard objectives add mr_generic_x1 dummy
scoreboard objectives add mr_generic_y1 dummy
scoreboard objectives add mr_generic_z1 dummy

scoreboard objectives add mr_generic_x2 dummy
scoreboard objectives add mr_generic_y2 dummy
scoreboard objectives add mr_generic_z2 dummy

scoreboard objectives add math dummy

team add rift_party
team add rift_enemy
team modify rift_party color green
team modify rift_enemy color dark_red
team modify rift_party friendlyFire false
team modify rift_enemy friendlyFire false
team modify rift_party seeFriendlyInvisibles true
team modify rift_party collisionRule pushOtherTeams
team modify rift_enemy collisionRule pushOtherTeams

scoreboard objectives add blade_call_y1 dummy
scoreboard objectives add blade_call_y2 dummy
scoreboard objectives add blade_call_time dummy

scoreboard objectives add mr_player_hp health
scoreboard objectives add mr_player_bow_charge dummy
scoreboard objectives add mr_player_bow_launch minecraft.used:bow
scoreboard objectives add mr_player_shield_use dummy
scoreboard objectives add mr_player_shield_hold dummy
scoreboard objectives add mr_player_lobby_menu_toggle dummy
scoreboard objectives add mr_player_lobby_menu_check dummy
scoreboard objectives add mr_player_party_menu_toggle dummy
scoreboard objectives add mr_player_setting_menu_toggle dummy
scoreboard objectives add mr_player_misc_menu_toggle dummy
scoreboard objectives add mr_player_tp_menu_toggle dummy
scoreboard objectives add mr_player_map_menu_toggle dummy

scoreboard objectives add mr_player_misc_setting_1 dummy
scoreboard objectives add mr_player_misc_setting_2 dummy
scoreboard objectives add mr_player_misc_setting_3 dummy
scoreboard objectives add mr_player_misc_setting_4 dummy
scoreboard objectives add mr_player_misc_setting_enabled dummy

scoreboard objectives add mr_player_invite_queue dummy
scoreboard objectives add mr_player_invite_id trigger
scoreboard objectives add mr_player_invite_expire trigger

scoreboard objectives add mr_player_inv_check_shield dummy
scoreboard objectives add mr_player_inv_check_sword dummy
scoreboard objectives add mr_player_inv_check_spear dummy
scoreboard objectives add mr_player_inv_check_axe dummy
scoreboard objectives add mr_player_inv_check_bow dummy
scoreboard objectives add mr_player_inv_check_crossbow dummy
scoreboard objectives add mr_player_inv_check_head dummy
scoreboard objectives add mr_player_inv_check_body dummy
scoreboard objectives add mr_player_inv_check_legs dummy
scoreboard objectives add mr_player_inv_check_feet dummy
scoreboard objectives add mr_player_enchant_time dummy

scoreboard objectives add mr_team_max dummy
scoreboard objectives add mr_team_current dummy

scoreboard objectives add ready_state dummy
scoreboard objectives add mr_difficulty dummy
scoreboard objectives add player_death deathCount

scoreboard objectives add mr_enemy_aggro_time dummy
scoreboard objectives add mr_enemy_credit_drop teamkill.dark_red
scoreboard objectives add mr_wave dummy
scoreboard objectives add mr_wave_dlc dummy
scoreboard objectives add mr_wave_delay dummy
scoreboard objectives add mr_wave_enemy dummy
scoreboard objectives add mr_wave_count dummy
scoreboard objectives add mr_enemy_count dummy
scoreboard objectives add mr_enemy_dlc_var dummy
scoreboard objectives add mr_enemy_spawn dummy
scoreboard objectives add mr_enemy_late_ping dummy
scoreboard objectives add mr_wave_enemy_random dummy
scoreboard objectives add mr_wave_loc_random dummy
scoreboard objectives add mr_enemy_special_limit dummy
scoreboard objectives add mr_enemy_scale_party dummy
scoreboard objectives add mr_enemy_endless_time dummy
scoreboard objectives add mr_enemy_death_check dummy


scoreboard objectives add mr_special_enemy_deadshot_snipe dummy
scoreboard objectives add mr_special_enemy_deadshot_snipe_pulse dummy
scoreboard objectives add mr_special_enemy_mirror_link dummy
scoreboard objectives add mr_special_enemy_sentinel_charge dummy
scoreboard objectives add mr_special_enemy_sentinel_wind dummy
scoreboard objectives add mr_special_enemy_spearman_charge dummy
scoreboard objectives add mr_special_enemy_spearman_charge_random dummy

scoreboard objectives add mr_player_count_kill minecraft.custom:minecraft.mob_kills
scoreboard objectives add mr_player_count_damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add mr_player_count_damage_dealt_melee minecraft.custom:minecraft.damage_dealt
scoreboard objectives add mr_player_count_deaths deathCount
scoreboard objectives add mr_player_count dummy
scoreboard objectives add mr_player_right_click_impulse dummy
scoreboard objectives add mr_player_scope_toggle dummy

scoreboard objectives add mr_dlc_traitor_chance dummy


scoreboard objectives add mr_event_random dummy
scoreboard objectives add mr_event_dlc_random dummy
scoreboard objectives add mr_event_chance dummy
scoreboard objectives add mr_event_time dummy
scoreboard objectives add mr_event_meteor_dur dummy
scoreboard objectives add mr_event_meteor_freq dummy
scoreboard objectives add mr_event_hemo_time dummy

scoreboard objectives add mr_obj_random dummy
scoreboard objectives add mr_obj_endless dummy
scoreboard objectives add mr_obj_count dummy
scoreboard objectives add mr_obj_storm_duration dummy
scoreboard objectives add mr_obj_storm_effect dummy
scoreboard objectives add mr_obj_storm_random dummy
scoreboard objectives add mr_obj_extract_spawn dummy
scoreboard objectives add mr_obj_extract_spawn_random dummy
scoreboard objectives add mr_obj_extract_spawn_random_value dummy
scoreboard objectives add mr_obj_extract_resource dummy

scoreboard objectives add mr_boss_random dummy
scoreboard objectives add mr_boss_max_hp dummy
scoreboard objectives add mr_boss_hp dummy
scoreboard objectives add mr_boss_thresh dummy
scoreboard objectives add mr_boss_const dummy
scoreboard players set .shop mr_boss_const 2

scoreboard objectives add mr_captain_cry_cd dummy
scoreboard objectives add mr_captain_hp dummy

scoreboard objectives add mr_fallen_skill_cd dummy
scoreboard objectives add mr_fallen_skill_random dummy
scoreboard objectives add mr_fallen_skill_wind dummy
scoreboard objectives add mr_fallen_hp dummy
scoreboard objectives add mr_fallen_tp_range dummy
scoreboard objectives add mr_fallen_dodge_cd dummy
scoreboard objectives add mr_fallen_dodge_side dummy
scoreboard objectives add mr_fallen_collapse_cd dummy
scoreboard objectives add mr_fallen_flying_slash_link dummy

scoreboard objectives add mr_shop_player_currency dummy
scoreboard objectives add mr_shop_player_currency_base dummy
scoreboard objectives add mr_shop_player_currency_kill dummy
scoreboard objectives add mr_shop_player_currency_bonus dummy
scoreboard objectives add mr_shop_player_currency_diff dummy
scoreboard objectives add mr_shop_player_currency_obj dummy
scoreboard objectives modify mr_shop_player_currency displayname "Player Nitronic"
scoreboard objectives add mr_shop_player_currency_check dummy
scoreboard objectives add mr_shop_currency_check dummy
scoreboard objectives add mr_shop_currency_constant dummy
scoreboard players set .shop mr_shop_currency_constant -1

scoreboard objectives add mr_shop_item dummy
scoreboard objectives add mr_shop_ability dummy
scoreboard objectives add mr_shop_enchant dummy
scoreboard objectives add mr_shop_item_set dummy
scoreboard objectives add mr_shop_item_price dummy
scoreboard objectives add mr_shop_book_index trigger
scoreboard players enable .shop mr_shop_book_index
execute as .shop run trigger mr_shop_book_index set 0

scoreboard objectives add mr_armor_upgrade_cooldown dummy

scoreboard objectives add mr_enchant_mary_time dummy
scoreboard objectives add mr_enchant_joust dummy
scoreboard objectives add mr_enchant_alacrity_count dummy
scoreboard objectives add mr_enchant_alacrity_cd dummy
scoreboard objectives add mr_enchant_wind_bolt_count dummy
scoreboard objectives add mr_enchant_wind_bolt_cd dummy
scoreboard objectives add mr_enchant_wind_bolt_wind dummy
scoreboard objectives add mr_enchant_blade_call_count dummy
scoreboard objectives add mr_enchant_blade_call_kill minecraft.custom:minecraft.mob_kills
scoreboard objectives add mr_enchant_blade_call_kill_ult minecraft.custom:minecraft.mob_kills
scoreboard objectives add mr_enchant_lily_time dummy
scoreboard objectives add mr_enchant_lily_hp dummy
scoreboard objectives add mr_enchant_debil_time dummy
scoreboard objectives add mr_enchant_aether_time dummy
scoreboard objectives add mr_enchant_coal_cd dummy
scoreboard objectives add mr_enchant_ratio_time dummy
scoreboard objectives add mr_enchant_overtime_kill minecraft.custom:minecraft.mob_kills
scoreboard objectives add mr_enchant_overtime_effect dummy
scoreboard objectives add mr_enchant_radiance_cd dummy
scoreboard objectives add mr_enchant_sonic_time dummy
scoreboard objectives add mr_enchant_determination_time dummy

scoreboard objectives add mr_enchant_shield_shift_cd dummy


scoreboard objectives add mr_domain_wind_up dummy


scoreboard objectives add mr_ability_desc_time dummy
scoreboard objectives add mr_ability_desc_refresh minecraft.custom:minecraft.mob_kills
scoreboard objectives add mr_ability_sanc_cd_count dummy
scoreboard objectives add mr_ability_sanc_cd dummy
scoreboard objectives add mr_ability_sanc_cd_ability dummy
scoreboard objectives add mr_ability_sanc_count dummy
scoreboard objectives add mr_ability_sanc_obelisk dummy
scoreboard objectives add mr_ability_guide_cd dummy
scoreboard objectives add mr_ability_guide_dir dummy
scoreboard objectives add mr_ability_guide_cd_recharge dummy
scoreboard objectives add mr_ability_guide_charge dummy
scoreboard objectives add mr_ability_guide_kill minecraft.custom:minecraft.mob_kills
scoreboard objectives add mr_ability_castle_time dummy
scoreboard objectives add mr_ability_castle_cd dummy
scoreboard objectives add mr_ability_castle_count dummy
scoreboard objectives add mr_ability_frost_touch_range dummy
scoreboard objectives add mr_ability_frost_touch_cd dummy
scoreboard objectives add mr_ability_frost_touch_cd_refresh dummy
scoreboard objectives add mr_ability_frost_touch_count dummy
scoreboard objectives add mr_ability_hailstorm_duration dummy
scoreboard objectives add mr_ability_hailstorm_apply dummy
scoreboard objectives add mr_ability_hailstorm_cd dummy
scoreboard objectives add mr_ability_whirlwind_cd dummy
scoreboard objectives add mr_ability_whirlwind_kill minecraft.custom:minecraft.mob_kills
scoreboard objectives add mr_ability_blunt_cd dummy
scoreboard objectives add mr_ability_blunt_kill minecraft.custom:minecraft.mob_kills
scoreboard objectives add mr_ability_double_tap_time dummy
scoreboard objectives add mr_ability_double_tap_duration dummy
scoreboard objectives add mr_ability_double_tap_kill minecraft.custom:minecraft.mob_kills
scoreboard objectives add mr_ability_double_tap_kill_cd dummy
scoreboard objectives add mr_ability_double_tap_link dummy
scoreboard objectives add mr_ability_double_tap_limit dummy
scoreboard objectives add mr_ability_double_tap_failsafe dummy
scoreboard objectives add mr_ability_contingency_cd dummy
scoreboard objectives add mr_ability_contingency_duration dummy
scoreboard objectives add mr_ability_steel_garden_cd dummy
scoreboard objectives add mr_ability_null_command_cd dummy
scoreboard objectives add mr_ability_null_command_dr dummy
scoreboard objectives add mr_ability_null_command_pulse dummy

scoreboard objectives add mr_throwable_grenade_link dummy
scoreboard objectives add mr_throwable_impact_cd dummy
scoreboard objectives add mr_throwable_molotov_dr dummy
scoreboard objectives add mr_throwable_molotov_tick dummy


scoreboard objectives add mr_custom_weapon_headhunter_ammo dummy
scoreboard objectives add mr_custom_weapon_headhunter_reload_time dummy


scoreboard objectives add mr_trap_arm_time dummy
scoreboard objectives add mr_trap_wind_up dummy
scoreboard objectives add mr_trap_placement_cooldown dummy
scoreboard objectives add mr_trap_claymore_link dummy


scoreboard objectives add mr_effect_bind_time dummy
scoreboard objectives add mr_effect_cold_time dummy
scoreboard objectives add mr_effect_cold_stack dummy
scoreboard objectives add mr_effect_cold_cd dummy
scoreboard objectives add mr_effect_freeze_link dummy
scoreboard objectives add mr_effect_freeze_kill dummy
scoreboard objectives add mr_effect_shatter_hp_max dummy
scoreboard objectives add mr_effect_shatter_hp_dmg dummy
scoreboard players set .mob mr_effect_shatter_hp_dmg 3
scoreboard players set .boss mr_effect_shatter_hp_dmg 5
scoreboard objectives add mr_effect_silence_time dummy
scoreboard objectives add mr_effect_ratio_time dummy
scoreboard objectives add mr_effect_bleed_time dummy
scoreboard objectives add mr_effect_bleed_freq dummy
scoreboard objectives add mr_effect_bleed_stack dummy
scoreboard players set .bleed mr_effect_shatter_hp_dmg 3
scoreboard objectives add mr_effect_stun_time dummy
scoreboard objectives add mr_effect_disarm_time dummy
scoreboard objectives add mr_effect_afterburn_time dummy
scoreboard objectives add mr_effect_afterburn_stack dummy
scoreboard objectives add mr_effect_afterburn_cd dummy
scoreboard objectives add mr_effect_afterburn_max_health dummy

scoreboard objectives setdisplay list mr_player_hp

scoreboard objectives add mr_enemy_vex_expire dummy

scoreboard objectives add mr_dummy_expire dummy
scoreboard objectives add mr_dummy_timer dummy
scoreboard objectives add mr_dummy_hp_average dummy
scoreboard objectives add mr_dummy_hp_snapshot dummy
scoreboard objectives add mr_dummy_hp_count dummy
scoreboard objectives add mr_dummy_hp_calc dummy
scoreboard objectives add mr_dummy_hp_current dummy
scoreboard objectives add mr_dummy_hit_count dummy

bossbar add silence_effect [{"text":"「 Silence Duration 」","bold":true,"color":"white"}]
bossbar set silence_effect color white

bossbar add cold_effect [{"text":"「 Cold Duration 」","bold":true,"color":"#1ee7ee"}]
bossbar set cold_effect color blue

bossbar add freeze_effect [{"text":"「 Freeze Duration 」","bold":true,"color":"#9df9fc"}]
bossbar set freeze_effect color white

bossbar add bind_effect [{"text":"「 Bind Duration 」","bold":true,"color":"#07a9be"}]
bossbar set bind_effect color blue

bossbar add ratio_effect [{"text":"「 Ratio Duration 」","bold":true,"color":"#e47b02"}]
bossbar set ratio_effect color yellow

bossbar add bleed_effect [{"text":"「 Bleed Duration 」","bold":true,"color":"#a80e0e"}]
bossbar set bleed_effect color red

bossbar add stun_effect [{"text":"「 Stun Duration 」","bold":true,"color":"#d89f01"}]
bossbar set stun_effect color yellow

bossbar add disarm_effect [{"text":"「 Disarm Duration 」","bold":true,"color":"#969696"}]
bossbar set disarm_effect color white

bossbar add afterburn_effect [{"text":"「 Afterburn Duration 」","bold":true,"color":"#d47100"}]
bossbar set afterburn_effect color red

bossbar add team_status [{"text":" Team Status ","bold":true,"color":"dark_green"}]
bossbar set team_status color green

bossbar add wave_progress [{"text":"Wave Progress","bold":true,"color":"dark_red"}]
bossbar set minecraft:wave_progress color red

bossbar add double_tap_time [{"text":"Double Tap","bold":true,"color":"#871ee9"}]
bossbar set minecraft:double_tap_time color purple

bossbar add double_tap_time_active [{"text":"Double Tap","bold":true,"color":"#f154f1"}]
bossbar set minecraft:double_tap_time_active color pink

bossbar add obj_storm [{"text":"Objective [ Storm ]","bold":true,"color":"#001ec7"}]
bossbar set minecraft:obj_storm color blue

bossbar add obj_extract [{"text":"Objective [ Extract ]","bold":true,"color":"#e7c119"}]
bossbar set minecraft:obj_extract color yellow