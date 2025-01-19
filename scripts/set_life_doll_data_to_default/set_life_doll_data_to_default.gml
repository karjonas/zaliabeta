/// @description  set_life_doll_data_to_default()
function set_life_doll_data_to_default() {


	var _i, _item_id;
	for(_i=1; _i<=g.LifeDoll_MAX; _i++)
	{
	    _item_id = f.dm_1up_doll[?hex_str(_i)+STR_Item+STR_ID];
	    if(!is_undefined(_item_id))
	    {
	        f.dm_1up_doll[?_item_id+STR_Acquired] = 0;
	    }
	}







}
