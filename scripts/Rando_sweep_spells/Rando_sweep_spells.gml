/// @description  Rando_sweep_spells()
function Rando_sweep_spells() {


	var _i, _idx;
	var _spell_id, _loc_num, _loc_id, _rm_name;

	var          _COUNT = ds_list_size(dl_SPELLS);
	for(_i=0; _i<_COUNT; _i++)
	{
	    if (ds_list_size(dl_spells_placed)>=_COUNT)
	    {
	        break;//_i
	    }
    
    
	    _spell_id = dl_SPELLS[|_i];
	    if (ds_list_find_index(dl_spells_placed,_spell_id)==-1)
	    {
	        _loc_num = val(dm_save_data[?_spell_id+STR_Location+STR_Num]);
	        _rm_name = val(dm_LOCATIONS[?hex_str(_loc_num)+STR_Rm+STR_Name], "undefined");
	        _loc_id  = _rm_name+STR_Spell;
	        if (Rando_is_qual_location(_loc_id))
	        {
	            Rando_set_data_1a(_loc_num, _spell_id);
	        }
	    }
	}







}
