/// @description  change_pal(new pal)
function change_pal(argument0) {


	with(p)
	{
	    var _count   = COL_PER_SCENE<<1;
	    var _PAL_NEW =string_copy(argument0,  1,_count);
    
	    if (_PAL_NEW==string_copy(pal_rm_curr,1,_count))
	    {
	        return argument0;
	    }
    
    
    
    
	    var _i;
	    var _CI = CI_BLK1_; // CI_BLK1_="0D"
	    var _pos;
	    var _h, _m, _s; // Highlight, Mid-tone, Shadow
    
	    pal_rm_new = _PAL_NEW;
	    var _LEN = string_length(pal_rm_new);
    
	    // Truncate last character if there's an odd number of characters
	    if (_LEN&$1)
	    {
	        _LEN--;
	        pal_rm_new = string_copy(pal_rm_new,1,_LEN);
	    }
    
    
	             _count = COL_PER_SCENE<<1; // <<1: because string (2 char per ci)
	    if (_LEN<_count)
	    {   pal_rm_new += string_repeat(CI_ERR0_, (_count-_LEN)>>1);  }
	        pal_rm_new  = string_copy(pal_rm_new,1,_count);
	    //
    
	    // Add permutations
	                 _count = PAL_PER_SCENE;
	    for(_i=0; _i<_count; _i++)
	    {
	        _pos = (_i*COL_PER_PAL)<<1; // <<1: because string (2 char per ci)
	        _pos++; // ++ because string
        
	        _h = string_copy(pal_rm_new,_pos+2,2); // _h: Highlight
	        _m = string_copy(pal_rm_new,_pos+4,2); // _m: Mid-tone
	        _s = string_copy(pal_rm_new,_pos+6,2); // _s: Shadow
        
	        // 1st one is copy of base permutation
	        pal_rm_new += _CI + _h + _m + _s; // HMS
	        pal_rm_new += _CI + _h + _s + _m; // HSM
        
	        pal_rm_new += _CI + _m + _h + _s; // MHS
	        pal_rm_new += _CI + _m + _s + _h; // MSH
        
	        pal_rm_new += _CI + _s + _h + _m; // SHM
	        pal_rm_new += _CI + _s + _m + _h; // SMH
	    }
    
    
	    return pal_rm_new;
	}







}
