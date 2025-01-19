/// @description  get_saved_value(file number, data key, value if undefined)
function get_saved_value() {

	// TODO: Phase out get_save_name() && save_id_created().
	// This is meant to replace them.


	var                             _arg=0;
	var _FILE_NUM = clamp( argument[_arg++], 1,SAVE_FILE_MAX);
	var _DATAKEY  = string(argument[_arg++]);
	var _DEFAULT  =        argument[_arg++];


	var _FILE_NAME = f.ar_FILE_NAMES[_FILE_NUM-1];
	if(!file_exists(_FILE_NAME)) return _DEFAULT;

	var _FILE      = file_text_open_read(working_directory+_FILE_NAME);
	var _FILE_DATA = file_text_read_string(_FILE);
	                 file_text_close(_FILE);
	//_SAVE_DATA = base64_decode(_SAVE_DATA);
	var _dm_FILE_DATA = json_decode(_FILE_DATA);



	// _DATAKEY example:  f.SDNAME_save_name
	var _RETURN = val(_dm_FILE_DATA[?_DATAKEY],_DEFAULT);


	ds_map_destroy(_dm_FILE_DATA); _dm_FILE_DATA=undefined;


	return _RETURN;







}
