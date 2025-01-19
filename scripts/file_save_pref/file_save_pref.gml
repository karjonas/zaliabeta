function file_save_pref() {
	/*
	/// file_save_pref(file num)


	var _FILE_NUM = argument0;

	if(!inRange(_FILE_NUM, 1,SAVE_FILE_MAX)) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

	var _FILE_NAME = f.ar_FILE_NAMES_PREFERENCES[_FILE_NUM-1];



	var _dm_file_data = ds_map_create();

	_dm_file_data[?f.SDNAME_volume_sound]               = Audio.snd_vol;
	_dm_file_data[?f.SDNAME_volume_music]               = Audio.mus_vol;
	_dm_file_data[?STR_Background+STR_Flashing]         = g.mod_BackgroundFlashing_state;
	_dm_file_data[?STR_Indicate+STR_Spell+STR_Active]   = g.mod_IndicateSpellActive;
	_dm_file_data[?STR_Torch+STR_Lighting]              = g.torch_lighting_method;
	_dm_file_data[?STR_HUD+STR_Type]                    = g.HUD_type;
	_dm_file_data[?STR_Frenzy+STR_Stab]                 = g.mod_CHARGE_STAB;
	_dm_file_data[?STR_Cucco+STR_Spell+"02"+STR_Preference] = g.CuccoSpell2_Option;
	_dm_file_data[?STR_Dark+STR_Lonk]                   = g.pc.DarkLonk_active;
	_dm_file_data[?STR_Rando+STR_Palette]               = g.RandoPalette_state;

	//_dm_file_data[?STR_Indicate+STR_Spell+STR_Active]   = 1;
	//_dm_file_data[?STR_Frenzy+STR_Stab]                 = 1;
	//_dm_file_data[?STR_Cucco+STR_Spell+"02"+STR_Preference] = 1;



	var _FILE_DATA = json_encode(_dm_file_data);

	var _FILE = file_text_open_write(working_directory+_FILE_NAME);
	            file_text_write_string(_FILE, _FILE_DATA);
	            file_text_close(_FILE);
	//



	ds_map_destroy(_dm_file_data); _dm_file_data=undefined;




	if (DEV && 1){sdm("");
	    var _str = "Save file  '" + _FILE_NAME + "'  preferences saved!";
	    sdm(_str); sdm("");
	}
	*/






}
