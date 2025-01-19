/// @description  get_pc_sword_palette(for lvl 1 armor only)
function get_pc_sword_palette() {


	if(!argument[0] 
	&&  g.pc.use_disguise )
	{
	    var _pal = p.pal_rm_def;
	    if(!is_undefined( p.pal_rm_curr) 
	    &&  string_length(p.pal_rm_curr) )
	    {
	        _pal = p.pal_rm_curr;
	    }
    
	    var _pos = p.PAL_POS_PC_3;
	    //get_pal_pos(PI_PC_3)
	}
	else
	{
	    var _pal = get_pc_skin_palette(val(g.pc.dm_skins[?STR_Current+STR_Idx]));
	    var _pos = 1;
	    //var _pos = p.PAL_POS_PC_1;
	    if(!argument[0])
	    {
	        if (f.items&ITM_RING)         _pos += COL_PER_PAL<<1;
	        if (g.spells_active&SPL_PRTC) _pos += COL_PER_PAL<<1;
	    }
	}


	var _return = string_copy(_pal, _pos, COL_PER_PAL<<1);

	if (f.items&ITM_SWRD) _return = strReplaceAt(_return,3,2,p.CI_WHT1_);


	return _return;







}
