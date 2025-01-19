/// @description  Challenge_SpellSequenceA_update_1a()
function Challenge_SpellSequenceA_update_1a() {


	var                   _COUNT = ds_list_size(g.dl_spell_history);
	if (SpellHist_count < _COUNT) // A spell has been cast
	{
	    SpellHist_count = _COUNT;
    
	    var _count  = ds_list_size(dl_spell_seq);
	    if (_count <= SpellHist_count-SpellHist_COUNT1)
	    {
	        var _idx = _COUNT-_count;
	        for(var _i=0; _i<_count; _i++)
	        {
	            if (dl_spell_seq[|_i] != g.dl_spell_history[|_idx+_i])
	            {
	                break;
	            }
            
	            if (_i+1==_count)
	            {
	                timer = p.SpellFlash_PC_timer+4;
	                sub_state = SUB_STATE_CMPL1;
	            }
	        }
	    }
	}







}
