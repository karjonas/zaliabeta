/// @description  Rando_attainable_key_count(dungeon num)
function Rando_attainable_key_count() {


	var                                  _i=0;
	var _DUNGEON_NUM_ = hex_str(argument[_i++]);


	var _count=0;
	var _num=1;
	repeat(val(g.dm_spawn[?STR_Dungeon+_DUNGEON_NUM_+STR_Key+STR_Count]))
	{
	    if (Rando_is_attainable(STR_KEY+_DUNGEON_NUM_+hex_str(_num++)))
	    {
	        _count++;
	    }
	}


	return _count;







}
