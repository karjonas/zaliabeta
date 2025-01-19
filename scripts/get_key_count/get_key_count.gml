/// @description  get_key_count(dungeon num)
function get_key_count() {


	var _i, _arg, _key_id;

	                            _arg=0;
	var _DUNGEON_NUM = argument[_arg++];

	//if (g.room_type!="A") return 0;


	var _count = 0;

	var           _COUNT = val(g.dm_spawn[?STR_Dungeon+hex_str(_DUNGEON_NUM)+STR_Key+STR_Count]);
	for(_i=1; _i<=_COUNT; _i++)
	{   // key_datakey example: "0203", "0601"
	    _key_id = STR_KEY+hex_str(_DUNGEON_NUM)+hex_str(_i);
	    //sdm(_key_id+", dungeon num "+string(val(f.dm_keys[?_key_id+STR_Dungeon+STR_Num]))+", acquired "+string(val(f.dm_keys[?_key_id+STR_Acquired]))+", used "+string(val(f.dm_keys[?_key_id+STR_Used])));
	    if (val(f.dm_keys[?_key_id+STR_Acquired]) 
	    && !val(f.dm_keys[?_key_id+STR_Used]) )
	    {
	        _count++;
	    }
	}

	return _count;







}
