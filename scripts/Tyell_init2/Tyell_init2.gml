/// @description  Tyell_init2()
function Tyell_init2() {


	var _i,_j, _val, _pos;
	var _dk;


	with(TyellManager) other.AGRO_DIST = AGRO_DIST;


	var _spawn_datakey = dk_spawn;
	if(!is_undefined(    dk_spawn))
	{   _spawn_datakey = val(f.dm_rando[?STR_Randomize+STR_Enemy+STR_Spawn+dk_spawn+STR_Spawn+STR_Datakey+STR_Randomized], dk_spawn);  }


	if(!is_undefined(_spawn_datakey))
	{
	    _dk=STR_Data+"01";
	    for(_i=1; _i<=$F; _i++)
	    {
	        _val=val(g.dm_spawn[?_spawn_datakey+STR_Data+hex_str(_i)]);
	        if (is_string(_val))
	        {
	                _pos =string_pos(   _dk,_val);
	            if (_pos)
	            {   _pos+=string_length(_dk);
	                _val =string_copy(_val, _pos, string_length(_val)-(_pos-1));
	                DEPTH_BG = real(_val);
	                break;//_i
	            }
	        }
	    }
	}





	// -----------------------------------------------------------------------------
	var _ts = ts_Man_made_1a_WRB;

	// Unbroken
	dg_anim[#$00,0] = 1;                // Duration
	dg_anim[#$00,1] = _ts;              // Tileset
	dg_anim[#$00,2] = TSRC_BREAK1_A;    // tsrc.  TSRC_BREAK1_A: ('90' + '91' + '92' + '93')

	// Cracked
	dg_anim[#$01,0] = 8;                // Duration
	dg_anim[#$01,1] = _ts;              // Tileset
	dg_anim[#$01,2] = TSRC_BREAK1_B;    // tsrc

	// Dust
	dg_anim[#$02,0] = 8;                // Duration
	dg_anim[#$02,1] = _ts;              // Tileset
	dg_anim[#$02,2] = TSRC_BREAK1_C;    // tsrc

	// Nothing
	dg_anim[#$03,0] = 1;                // Duration
	dg_anim[#$03,1] = 0;                // Tileset
	dg_anim[#$03,2] = 0;                // tsrc


	var _data;
	for(_i=ds_grid_width(dg_anim)-1; _i>=0; _i--)
	{
	    if (    dg_anim[#_i,2] == 0) continue;
    
	    _data = dg_anim[#_i,2];
	            dg_anim[#_i,2]  = 0;
	    for(_j=(string_length(_data)>>1)-1; _j>=0; _j--)
	    {
	            dg_anim[#_i,2] |= str_hex(string_copy(_data, (_j<<1)+1, 2)) <<(_j<<3);
	    }
	}



	// -----------------------------------------------------------------------------
	    _ts     = ts_Man_made_1a_WRB;
	var _tsrc   = 0;
	var _x      = 0;
	var _y      = 0;
	var _HIDDEN = TID_HIDE_1&$F; // TID_HIDE_1: Hidden when rm is NOT lit.
	for(_i=0; _i<4; _i++)
	{
	    _tsrc   = (dg_anim[#0,2] >>(_i<<3)) &$FF;
	    _x      = xl + ((_i&1) <<3);
	    _y      = yt + ((_i>1) <<3);
	    tile_change_1a(DEPTH_BG, _x,_y, _ts,_tsrc, TID_SOLID1,UNIQUE,_HIDDEN);
	}



	// -----------------------------------------------------------------------------
	timer = IDL1_DUR;







}
