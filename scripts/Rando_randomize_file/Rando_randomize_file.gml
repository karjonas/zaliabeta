/// @description  Rando_randomize_file(save file num, quest num, seed, encoded rando settings)
function Rando_randomize_file() {


	var                            _arg=0;
	      FILE_NUM      = argument[_arg++];
	var _QUEST_NUM      = argument[_arg++];
	     Rando_SEED     = argument[_arg++];
	var _RANDO_SETTINGS = argument[_arg++]; // encoded rando settings


	var _FILE_NAME = f.ar_FILE_NAMES[FILE_NUM-1];
	var _SAVE_NAME = f.ar_save_names[FILE_NUM-1];


	if(!file_exists(_FILE_NAME))
	{
	    sdm("!!! "+"Rando Failed.  File: "+_FILE_NAME+"  does NOT exist."+" !!!");
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}






	var _i,_j,_k, _a, _idx,_num, _count,_count1, _size, _case;
	var _val,_val0,_val1,_val2;
	var _min,_max;
	var _datakey,_datakey1,_datakey2, _spawn_datakey;
	var _rm_name,_rm_name1, _item_datakey, _loc_num, _town_name, _spell_name, _description;
	var _chance_a,_chance_b;
	var _color;
	var _objver1,_objver2;

	dm_save_data = ds_map_create();

	DEBUG = true;
	if (DEBUG){
	debug_str = undefined;
	debug_data_count = 0;
	dm_debug_data = ds_map_create();
	}


	//Rando_SEED = get_saved_value(FILE_NUM, get_file_seed_dk(FILE_NUM,_QUEST_NUM), RUN_RANDOMIZATION_SEED);

	dm_save_data[?STR_Rando+STR_Settings] = _RANDO_SETTINGS;


	//==========================================================================
	Rando_generate(_QUEST_NUM, Rando_SEED, _RANDO_SETTINGS);
	//==========================================================================






	// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	// SAVE THE DATA --------------------------------------------------
	var _file      = file_text_open_read(working_directory+_FILE_NAME);
	var _file_data = file_text_read_string(_file);
	                 file_text_close(      _file);
	var _dm_save_data = json_decode(_file_data);


	               _datakey=STR_Quest+hex_str(_QUEST_NUM);
	_dm_save_data[?_datakey+STR_Rando+STR_Active] = true;
	_dm_save_data[?         STR_Rando+STR_Active] = true;


	var _RANDO_DATA = json_encode(dm_save_data);
	_dm_save_data[?_datakey+STR_Rando+STR_Data] = _RANDO_DATA;










	/*if (DEBUG){ dm_debug_data[?STR_Data+'01'+STR_Count] = debug_data_count;
	var _DEBUG_DATA=json_encode(dm_debug_data);
	_dm_save_data[?_datakey+STR_Rando+STR_Debug+STR_Data] = _DEBUG_DATA;
	}*/




	_file_data = json_encode(_dm_save_data);
	_file = file_text_open_write(working_directory+_FILE_NAME);
	        file_text_write_string(_file, _file_data);
	        file_text_close(       _file);
	//



	// ===============================================================================
	var _RANDO_DATA_FILE_NAME = f.dl_FILE_NAME_PREFIX[|FILE_NUM-1]+STR_Rando+STR_Data+".txt";
	_file = file_text_open_write(working_directory+_RANDO_DATA_FILE_NAME);
	for(_i=0; _i<debug_data_count; _i++)
	{
	        _val = dm_debug_data[?STR_Data+"01"+hex_str(_i+1)];
	    if(!is_undefined(_val) 
	    &&  _val!="" 
	    &&  _val!=" " )
	    {
	        file_text_write_string(_file,_val);
	        file_text_writeln(     _file);
	    }
	}
	file_text_close(_file);
	// ===============================================================================














	if (DEV){sdm("");
	var _str  = "Save File  ";
	    _str += "'"+_FILE_NAME +"'" + ", Save Name  ";
	    _str += "'"+_SAVE_NAME+"'" + ",  rando data saved!";
	sdm(_str); sdm("");
	}
	// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++






	ds_map_destroy(_dm_save_data);_dm_save_data=undefined;
	ds_map_destroy( dm_save_data); dm_save_data=undefined;
	if(DEBUG){ds_map_destroy(dm_debug_data);dm_debug_data=undefined;}







}
