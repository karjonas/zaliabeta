/// @description  get_life_doll_count()
function get_life_doll_count() {

	var _i, _item_id;
	var _count = 0;

	for(_i=1; _i<=g.LifeDoll_MAX; _i++)
	{
	    _item_id = f.dm_1up_doll[?hex_str(_i)+STR_Item+STR_ID];
	    if(!is_undefined(_item_id))
	    {
	        _count += val(f.dm_1up_doll[?_item_id+STR_Acquired]);
	    }
	}


	return _count;







}
