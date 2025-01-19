/// @description  p_update_pal_seq()
function p_update_pal_seq() {

	// For stuff like glowing effects


	if(0&&g.dungeon_num){ // Testing bg color sequences. 2021/10/04: This is working.
	    if ( g.counter1&$40 
	    && !(g.counter1&$0F) ){
	                                 pal_seq_idx2  = (g.counter1>>4)&$3;
	        if (g.counter1&$80)      pal_seq_idx2 ^= $3;
	        var _PAL = dg_pal_seq[#1,pal_seq_idx2];
	        var _POS = PAL_POS_BGR1;
	        change_pal(strReplaceAt(p.pal_rm_new, _POS, string_length(_PAL), _PAL));
	    }
	}







}
