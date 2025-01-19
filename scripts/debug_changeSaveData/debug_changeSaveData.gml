function debug_changeSaveData() {

	var i, _fileName, _file, _file_data, _dm_file_data, _save_created, _save_name;
	var _null = "0";
	for (i = 0; i < SAVE_FILE_MAX; i++)
	{
    
	    /*
	    f.dm_takenKeys[? _null]     = 0;
	    f.dm_openedLocks[? _null]   = 0;
	    f.dm_specials[? _null]      = 0;
	    f.dm_takenPBags[? _null]    = 0;
	    f.dm_linkDolls[? _null]     = 0;
	    f.dm_exploredRooms[? _null] = 0;
    
	    f.dm_quests[? "0"] = 0; // Rauru
	    f.dm_quests[? "1"] = 0; // Ruto
	    f.dm_quests[? "2"] = 0; // Saria
	    f.dm_quests[? "3"] = 0; // Mido
	    f.dm_quests[? "4"] = 0; // Nabooru
	    f.dm_quests[? "5"] = 0; // Darunia
	    f.dm_quests[? "6"] = 0; // New Kasuto
	    f.dm_quests[? "7"] = 0; // Old Kasuto
    
	    f.takenKeys         = json_encode(f.dm_takenKeys);
	    f.openedLocks       = json_encode(f.dm_openedLocks);
	    f.specials          = json_encode(f.dm_specials);
	    f.takenPBags        = json_encode(f.dm_takenPBags);
	    f.linkDolls         = json_encode(f.dm_linkDolls);
	    f.exploredRooms     = json_encode(f.dm_exploredRooms);
	    f.quests            = json_encode(f.dm_quests);
	    // show_debug_message("f.specials: " + string(f.specials));
	    // if (saveIsCreated(i + 1))
	    // loadFile(i + 1);
	    */
    
    
    
	    // f.skills = 0;
	    // f.crystals = 0;
    
    
	    _fileName   = f.ar_FILE_NAMES[i];
	    _file       = file_text_open_read(working_directory + _fileName);
	    _file_data  = file_text_read_string(_file);
	                  file_text_close(_file);
	    // _file_data = base64_decode(_file_data);
	    _dm_file_data = json_decode(_file_data);
	    _save_created = _dm_file_data[? f.SDNAME_saveCreated];
	    _save_name    = _dm_file_data[? f.SDNAME_save_name];
    
	    file_save(i+1, !_save_created);
    
	    ds_map_destroy(_dm_file_data);
	    _dm_file_data = undefined;
	}




}
