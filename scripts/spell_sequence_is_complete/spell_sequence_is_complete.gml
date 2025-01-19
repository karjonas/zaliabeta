/// @description  spell_sequence_is_complete(str spell bits)
function spell_sequence_is_complete(argument0) {


	var _COUNT1 = ds_list_size(g.dl_spell_history);
	if (_COUNT1-SpellHist_COUNT1 < SpellSeq_COUNT)
	{
	    return false;
	}


	var _IDX=_COUNT1-SpellSeq_COUNT;
	for(var _i=0; _i<SpellSeq_COUNT; _i++)
	{
	    if (str_hex(argument0,_i) != g.dl_spell_history[|_IDX+_i])
	    {
	        return false;
	    }
	}


	return true;







}
