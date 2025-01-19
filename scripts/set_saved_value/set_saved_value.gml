/// @description  set_saved_value(file num, data key, new value, *delete)
function set_saved_value() {


	var                              _arg=0;
	var _FILE_NUM  = clamp( argument[_arg++], 1,SAVE_FILE_MAX);
	var _DATAKEY   = string(argument[_arg++]);
	var _NEW_VALUE =        argument[_arg++];

	var                      _WILL_DELETE = false;
	if (argument_count>_arg) _WILL_DELETE = argument[_arg++];


	var _FILE_NAME = f.ar_FILE_NAMES[_FILE_NUM-1];

	if (file_exists(_FILE_NAME))
	{
	    var _FILE      = file_text_open_read(working_directory+_FILE_NAME);
	    var _FILE_DATA = file_text_read_string(_FILE);
	                     file_text_close(      _FILE);
	    //
    
	    var _dm_save_data = json_decode(_FILE_DATA);
    
	    if (_WILL_DELETE) ds_map_delete(_dm_save_data, _DATAKEY);
	    else _dm_save_data[?_DATAKEY] = _NEW_VALUE;
	    //
    
	    var _SAVE_DATA = json_encode(_dm_save_data);
	    ds_map_destroy(_dm_save_data); _dm_save_data=undefined;
    
	    _FILE = file_text_open_write(working_directory+_FILE_NAME);
	            file_text_write_string(_FILE,_SAVE_DATA);
	            file_text_close(       _FILE);
	    //
	}







}
