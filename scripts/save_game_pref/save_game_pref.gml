/// @description  save_game_pref()
function save_game_pref() {


	var _i, _idx, _val, _count;


	var _FILE_NAME = STR_Game+STR_Preferences+"01"+".txt";


	// ---------------------------------------------------------------
	if(!file_exists(_FILE_NAME)) sdm("save_game_pref():  "+_FILE_NAME+" created!");


	// ---------------------------------------------------------------
	var _dm_save_data = ds_map_create();
	_dm_save_data[?STR_Fullscreen]                          = window_get_fullscreen();
	_dm_save_data[?STR_Window+STR_Scale]                    = g.WindowScale_scale;
	_dm_save_data[?f.SDNAME_volume_sound]                   = Audio.snd_vol;
	_dm_save_data[?f.SDNAME_volume_music]                   = Audio.mus_vol;
	_dm_save_data[?STR_Music+STR_Set]                       = Audio.audio_set;
	_dm_save_data[?STR_Audio+STR_Random+STR_Custom]         = json_encode(Audio.dm_random_custom);
	_dm_save_data[?STR_PC+STR_Sprite+STR_Set]               = val(g.pc.dm_skins[?STR_Current+STR_Idx]);
	_dm_save_data[?STR_Background+STR_Flashing]             = p.BackgroundFlash_setting;
	_dm_save_data[?STR_Screen+STR_Shake]                    = g.ScreenShake_user_pref;
	_dm_save_data[?STR_Dialogue+STR_Speed]                  = g.mod_DLG_SPEED;
	_dm_save_data[?STR_Indicate+STR_Spell+STR_Active]       = g.mod_IndicateSpellActive;
	_dm_save_data[?STR_Torch+STR_Lighting]                  = g.torch_lighting_method;
	_dm_save_data[?STR_HUD+STR_Type]                        = g.HUD_state;
	_dm_save_data[?STR_Frenzy+STR_Stab]                     = g.mod_StabFrenzy;
	_dm_save_data[?STR_Cucco+STR_Spell+"02"+STR_Preference] = g.CuccoSpell2_Option;
	_dm_save_data[?STR_Rando+STR_Palette]                   = g.RandoPalette_state;
	_dm_save_data[?STR_Rando+STR_Enemy]                     = g.Rando_enemy;
	_dm_save_data[?STR_Rando+STR_Overworld+STR_TSRC]        = global.can_rando_ow_tsrc;
	_dm_save_data[?STR_Rando+STR_Scene]                     = global.SceneRando_enabled;
	_dm_save_data[?STR_Map+STR_Show+STR_Key]                = g.RandoKeys_MAP_items_show_keys;
	_dm_save_data[?STR_Overworld+STR_Mark+STR_Acquired]     = g.can_mark_acquired_item_locations;
	_dm_save_data[?STR_Overworld+STR_Mark+STR_Hidden+STR_Exit] = g.hidden_item_exits_help;
	_dm_save_data[?STR_Halloween+"01"]                      = global.Halloween1_enabled;

	_dm_save_data[?STR_Input+STR_Preferences]               = json_encode(Input.dm_UserInputConfig);


	_dm_save_data[?"_DevTools"     +STR_State] = g.DevTools_state;
	_dm_save_data[?"_DoubleJump"   +STR_State] = g.DoubleJump_state;
	_dm_save_data[?"_DevDash"      +STR_State] = g.DevDash_state;
	_dm_save_data[?"_Debug_Overlay"+STR_State] = g.can_show_debug_overlay;
	_dm_save_data[?"_All_BGR_Black"+STR_State] = g.all_bg_black_only;
	_dm_save_data[?STR_Frame+STR_Count+"_App"            +"_can_draw"] = global.App_frame_count_can_draw;
	_dm_save_data[?STR_Frame+STR_Count+"_App"+"_Unpaused"+"_can_draw"] = global.App_frame_count_unpaused_can_draw;
	_dm_save_data[?STR_Frame+STR_Count+"_Room"           +"_can_draw"] = global.Room_frame_count_can_draw;
	//_dm_save_data[?"_Dev_Tools"]                            = json_encode(Input.dm_UserInputConfig);





	// ---------------------------------------------------------------
	var _ENCODED = json_encode(_dm_save_data);
	ds_map_destroy(_dm_save_data); _dm_save_data=undefined;



	// ---------------------------------------------------------------
	var _FILE_ID = file_text_open_write(working_directory+_FILE_NAME);
	file_text_write_string(_FILE_ID, _ENCODED);
	file_text_close(_FILE_ID);

	sdm("save_game_pref():  "+_FILE_NAME+" saved!");







}
