/// @description  save_user_input_pref()
function save_user_input_pref() {


	with(Input)
	{
	    var _FILE_NAME = STR_Input+STR_Preferences;
	    if(!file_exists(_FILE_NAME))
	    {
	        dm_UserInputConfig[?"on file create"] = _FILE_NAME+" created";
	    }
    
    
	    var _ENCODED = json_encode(dm_UserInputConfig);
    
	    var _FILE = file_text_open_write(working_directory+_FILE_NAME);
	    file_text_write_string(_FILE, _ENCODED);
	    file_text_close(_FILE);
    
	    sdm("User input config saved!");
	}







}
