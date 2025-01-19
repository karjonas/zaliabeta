/// @description  FS_set_stats()
function FS_set_stats() {

	// File Select screen


	var _i, _file_name, _file, _dm_data, _str_data;

	for(_i=0; _i<SAVE_FILE_MAX; _i++) // Each save file
	{
	    _file_name = f.ar_FILE_NAMES[_i];
	    _file      = file_text_open_read(working_directory+_file_name);
	    _str_data  = file_text_read_string(_file);
	                 file_text_close(      _file);
	    //_str_data = base64_decode(_str_data);
	    _dm_data   = json_decode(_str_data);
    
	    stats[_i,0] = val(_dm_data[?f.SDNAME_saveCreated]);
	    stats[_i,1] = val(_dm_data[?f.SDNAME_questNum]);
	    stats[_i,2] = val(_dm_data[?f.SDNAME_deathCount]);
	    stats[_i,3] = val(_dm_data[?f.SDNAME_level_atk]);
	    stats[_i,4] = val(_dm_data[?f.SDNAME_level_mag]);
	    stats[_i,5] = val(_dm_data[?f.SDNAME_level_lif]);
	    stats[_i,6] = val(_dm_data[?f.SDNAME_crystals]);
    
	    ds_map_destroy(_dm_data); _dm_data=undefined;
	}







}
