/// @description  GOB_update_data_defeated(GOB instance id)
function GOB_update_data_defeated(argument0) {


	with(argument0)
	{
	    var          _DK  = get_defeated_dk(); // STR_File+STR_Quest+hex_str(f.quest_num)+STR_Defeated+"_";
    
	    var          _dk  = _DK+object_get_name(object_index)+STR_Version+hex_str(ver);
    
	    f.dm_quests[?_dk] = val(f.dm_quests[?_dk]) + 1;
    
	                 _dk += g.rm_name;
	    f.dm_quests[?_dk] = val(f.dm_quests[?_dk]) + 1;
    
    
    
	    if (is_undefined(dk_spawn)) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
	                 _dk += STR_Spawn_Idx + string_copy(dk_spawn, string_length(dk_spawn)-2, 2);
	    f.dm_quests[?_dk] = val(f.dm_quests[?_dk]) + 1;
    
    
	                 _dk  = _DK+dk_spawn;
	    f.dm_quests[?_dk] = val(f.dm_quests[?_dk]) + 1;
	}







}
