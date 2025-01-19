/// @description  file_load_pref(file num)
function file_load_pref() {

	/*
	var _i, _val;

	var _FILE_NUM = argument0;

	if(!inRange(_FILE_NUM, 1,SAVE_FILE_MAX)) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

	var _FILE_NAME = f.ar_FILE_NAMES_PREFERENCES[_FILE_NUM-1];
	if(!file_exists(_FILE_NAME))             exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!





	var _FILE       = file_text_open_read(working_directory+_FILE_NAME);
	var _FILE_DATA  = file_text_read_string(_FILE);
	                  file_text_close(_FILE);
	//
	var _dm_FILE_DATA = json_decode(_FILE_DATA);



	if (!is_undefined(  _dm_FILE_DATA[?f.SDNAME_volume_sound])){
	    Audio.snd_vol = _dm_FILE_DATA[?f.SDNAME_volume_sound];
	    audio_group_set_gain(audiogroup_snd, Audio.snd_vol / 10, 0);
	}

	if (!is_undefined(  _dm_FILE_DATA[?f.SDNAME_volume_music])){
	    Audio.mus_vol = _dm_FILE_DATA[?f.SDNAME_volume_music];
	    audio_group_set_gain(audiogroup_mus, Audio.mus_vol / 10, 0);
	}


	_val = _dm_FILE_DATA[?STR_Background+STR_Flashing];
	if(!is_undefined(_val)) g.mod_BackgroundFlashing_state = _val;

	_val = _dm_FILE_DATA[?STR_Indicate+STR_Spell+STR_Active];
	if(!is_undefined(_val)) g.mod_IndicateSpellActive = _val;

	_val = _dm_FILE_DATA[?STR_Torch+STR_Lighting];
	if(!is_undefined(_val)) g.torch_lighting_method = _val;

	_val = _dm_FILE_DATA[?STR_HUD+STR_Type];
	if(!is_undefined(_val)) g.HUD_type = _val;

	_val = _dm_FILE_DATA[?STR_Frenzy+STR_Stab];
	if(!is_undefined(_val)) g.mod_CHARGE_STAB = g.mod_CHARGE_STAB_DEF * (_val>0);

	_val = _dm_FILE_DATA[?STR_Cucco+STR_Spell+"02"+STR_Preference];
	if(!is_undefined(_val)) g.CuccoSpell2_Option = _val>0;

	_val = _dm_FILE_DATA[?STR_Dark+STR_Lonk];
	if(!is_undefined(_val)) g.pc.DarkLonk_active = ((_val>0) * g.pc.DarkLonk_unlocked) * (!!g.mod_DarkLonk);

	_val = _dm_FILE_DATA[?STR_Rando+STR_Palette];
	if(!is_undefined(_val)) g.RandoPalette_state = _val;



	if (DEV && 1){
	    sdm("");
	    var _str  = "Save file  '" + _FILE_NAME + "'  preferences loaded!";
	    sdm(_str);
	    _str  = "volume sound: "+string(val(_dm_FILE_DATA[?f.SDNAME_volume_sound], "undefined"));
	    _str += ", ";
	    _str += "volume music: "+string(val(_dm_FILE_DATA[?f.SDNAME_volume_music], "undefined"));
	    _str += ", ";
	    _str += "bgr flashing: "+string(val(_dm_FILE_DATA[?STR_Background+STR_Flashing], "undefined"));
	    _str += ", ";
	    _str += "indicate spell active: "+string(val(_dm_FILE_DATA[?STR_Indicate+STR_Spell+STR_Active], "undefined"));
	    _str += ", ";
	    _str += "frenzy stab: "+string(val(_dm_FILE_DATA[?STR_Frenzy+STR_Stab], "undefined"));
	    _str += ", ";
	    _str += "cucco spell: "+string(val(_dm_FILE_DATA[?STR_Cucco+STR_Spell+"02"+STR_Preference], "undefined"));
	    _str += ", ";
	    sdm(_str);
	    sdm("");
	}



	ds_map_destroy(_dm_FILE_DATA); _dm_FILE_DATA=undefined;
	*/







}
