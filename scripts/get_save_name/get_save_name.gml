function get_save_name() {
	/*
	/// get_save_name(save file number)


	var _SAVE_FILE_NUM = argument0;


	var        _save_name  =      SAVE_NAME_NULL;
	if(!inRange(_SAVE_FILE_NUM, 1,SAVE_FILE_MAX))
	{   return _save_name;  }




	var _FILE_NAME     = f.ar_FILE_NAMES[_SAVE_FILE_NUM-1];
	var _file          = file_text_open_read(working_directory+_FILE_NAME);
	var _save_data_str = file_text_read_string(_file);
	                     file_text_close(      _file);
	// _save_data_str = base64_decode(_save_data_str);
	var _dm_save_data  = json_decode(_save_data_str);



	_save_name = val(_dm_save_data[?f.SDNAME_save_name], SAVE_NAME_NULL);

	ds_map_destroy(_dm_save_data); _dm_save_data = undefined;


	return _save_name;
	*/



	//


	/*
	var _SAVE_FILE_NUM = argument0;

	var _file_name, _file, _dm_save_data, _save_data_str;
	var _save_name = SAVE_NAME_NULL;

	if (inRange(_SAVE_FILE_NUM, 1, SAVE_FILE_MAX))
	{
	    _file_name     = f.FILE_NAMES[_SAVE_FILE_NUM-1];
	    _file          = file_text_open_read(working_directory + _file_name);
	    _save_data_str = file_text_read_string(_file);
	                     file_text_close(_file);
	    // _save_data_str = base64_decode(_save_data_str);
	    _dm_save_data  = json_decode(_save_data_str);
    
	    _save_name     = _dm_save_data[? f.SDNAME_save_name];
    
	    ds_map_destroy(_dm_save_data); _dm_save_data = undefined;
	}


	return _save_name;



	*/







}
