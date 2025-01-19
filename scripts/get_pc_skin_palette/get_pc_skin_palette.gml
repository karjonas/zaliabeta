/// @description  get_pc_skin_palette(skin index, *return if not found)
function get_pc_skin_palette() {


	var _Skin_IDX = argument[0];

	var _PALETTE_COUNT = PC_PAL_COUNT1; // PC_PAL_COUNT1=3

	// Give the return a default
	if (argument_count>1)
	{
	    var _return = argument[1];
	}
	else
	{
	    var _return = string_copy(p.PAL_SET_PC_1, 1, (COL_PER_PAL*_PALETTE_COUNT)<<1);
	    if(!is_undefined( p.pal_rm_curr) 
	    &&  string_length(p.pal_rm_curr) )
	    {
	        _return = string_copy(p.pal_rm_curr, get_pal_pos(PI_PC_1), string_length(_return));
	    }
	}


	// Give the return the palettes for _Skin_IDX
	if (_Skin_IDX>=0)
	{
	    var _Skin_COUNT = val(g.pc.dm_skins[?STR_Set+STR_Count]);
	    if (_Skin_COUNT 
	    &&  _Skin_IDX<_Skin_COUNT )
	    {
	        var _DATAKEY = g.pc.dm_skins[?hex_str(_Skin_IDX)+STR_Datakey];
	        if(!is_undefined(_DATAKEY))
	        {
	            var _Skin_palette = "0D362A18"+"0D361618"+"0D36112D";
	                _Skin_palette = val(g.pc.dm_skins[?string(_DATAKEY)  +STR_Palette], _Skin_palette);
	                _Skin_palette = val(g.pc.dm_skins[?hex_str(_Skin_IDX)+STR_Palette], _Skin_palette);
	            if(!is_undefined(_Skin_palette))
	            {
	                if (g.RandoPalette_state 
	                &&  val(f.dm_rando[?STR_Randomize+STR_Palette]) )
	                {
	                    var _PC_RANDO_PALETTE = f.dm_rando[?STR_Palette+"_PC"+"01"];
	                    if(!is_undefined(_PC_RANDO_PALETTE))
	                    {   // Just need to set the tunic colors to their rando colors in _Skin_palette
	                        var _pos;
	                        var _color_idx;
	                        for(var _i=0; _i<_PALETTE_COUNT; _i++) // Each armor/tunic level
	                        {   // _PC_RANDO_PALETTE example is 3 armor levels: "F3182A36"+"F3181636"+"F3182236"
	                            _pos  = $05; // tunic position
	                            _pos += _i*(COL_PER_PAL<<1); // add armor level
	                            _color_idx = string_copy(_PC_RANDO_PALETTE,_pos,2);
	                            _Skin_palette = strReplaceAt(_Skin_palette,_pos,2,_color_idx);
	                        }
	                    }
	                }
                
	                _return = _Skin_palette;
	            }
	        }
	    }
	}


	return _return; // 3 palettes. The palettes of the 3 armor levels. Example: "F3182A36"+"F3181636"+"F3182236"







}
