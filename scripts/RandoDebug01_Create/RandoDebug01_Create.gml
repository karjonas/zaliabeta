/// @description  RandoDebug01_Create()
function RandoDebug01_Create() {


	var _i,_j,_k, _idx, _val, _pos, _count;



	cooldown_DURATION1=$80;
	cooldown_timer=cooldown_DURATION1;
	simulation_num=0;
	//dm_simulations=ds_map_create();
	dm_settings=ds_map_create();
	dm_LOCATIONS_COPY=ds_map_create();
	dl_seeds=ds_list_create();
	dm_allkey=ds_map_create();
	//dl_ALLKEY_locations=ds_list_create();

	var _FILE_NAME="RandoSimulationData01";
	FILE_NAME = _FILE_NAME+".txt";

	var _STR1="Rando Seed Simulation $";
	var _STR1_LEN=string_length(_STR1);

	var _STR2="Seed_$";
	var _STR2_LEN=string_length(_STR2);

	if (file_exists(FILE_NAME))
	{
	    var _FILE =file_text_open_read(working_directory+FILE_NAME);
	    while(    !file_text_eof(   _FILE)) 
	    {
	        _val = file_text_readln(_FILE);
	        _pos = string_pos(_STR2,_val);
	        if (_pos)
	        {
	            _val=string_copy(_val,_pos+_STR2_LEN,8);
	            _val=str_hex(_val);
	            ds_list_add(dl_seeds,_val);
	        }
	    }
	    file_text_close(_FILE);
	}
	/*
	if (file_exists(FILE_NAME))
	{
	    var _FILE      = file_text_open_read(working_directory+FILE_NAME);
	    var _FILE_DATA = file_text_read_string(_FILE);
	                     file_text_close(      _FILE);
	    dm_simulations = json_decode(_FILE_DATA);
    
	    simulation_num = val(dm_simulations[?STR_Simulation+STR_Count]);
	}
	*/







}
