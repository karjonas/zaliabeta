/// @description  get_key_count_used(dungeon num)
function get_key_count_used() {


	var _i, _arg, _key_id;

	                            _arg=0;
	var _DUNGEON_NUM = argument[_arg++];
	if (_DUNGEON_NUM<1 
	||  _DUNGEON_NUM>6 )
	{
	    return 0;
	}

	var _count = 0;

	var           _COUNT = val(g.dm_spawn[?STR_Dungeon+hex_str(_DUNGEON_NUM)+STR_Key+STR_Count]);
	for(_i=1; _i<=_COUNT; _i++)
	{   // _key_id example: "0203", "0601"
	                       _key_id = STR_KEY+hex_str(_DUNGEON_NUM)+hex_str(_i);
	    if (val(f.dm_keys[?_key_id+STR_Acquired]) 
	    &&  val(f.dm_keys[?_key_id+STR_Used]) )
	    {
	        _count++;
	    }
	}

	return _count;







}
