/// @description  Spawner_FallingBlock_init2()
function Spawner_FallingBlock_init2() {


	var _i, _val, _len, _pos;


	is_active = true;
	for(_i=ds_grid_width(g.dg_spawn_prio)-1; _i>=0; _i--)
	{
	    if (g.dg_spawn_prio[#_i,1]==Kakusu014)
	    {
	        is_active = false; // Kakusu014 controls when active
	        break;//_i
	    }
	}


	SPAWN_OBJ   = FaBlA;
	SPAWNED_MAX = 6; // 6: OG


	switch(ver)
	{   // =======================================================
	    case 1:{
	    CLMS = $A; // OG: $A
    
	    // OG spawn_x = $1B0.
	    // This should allow any spawn_x while keeping OG logic
	    GRID_XL = (((xl>>4)<<4) - $B0) + ($100 - (CLMS<<4));
	    break;}//case 1:{
    
    
	    // =======================================================
	    case 2:{
	    CLMS = $A; // Number of block clms
    
	    if(!is_undefined(dk_spawn))
	    {
	        for(_i=$1; _i<=$F; _i++)
	        {
	            _val=val(g.dm_spawn[?dk_spawn+STR_Data+hex_str(_i)]);
	            if (is_string(_val))
	            {
	                    _pos =string_pos(   STR_Clms,_val);
	                if (_pos)
	                {   _pos+=string_length(STR_Clms);
	                    _val =string_copy(_val, _pos, string_length(_val)-(_pos-1));
	                    CLMS =str_hex(_val);
	                    break;//_i
	                }
	            }
	        }
	    }
    
	    CLMS = clamp(CLMS, $1, (g.rm_w>>4)-1);
    
	    var _XL = xl>>4;
	        _XL = clamp(_XL, 0, (g.rm_w>>4)-CLMS);
	        _XL = _XL<<4;
	    GRID_XL = _XL; // Left edge of left most block clm
	    set_xlyt(id, GRID_XL, yt);
    
    
	    // -------------------------------------------------------------------------------
	    // So that sprite_index is less than CLMS width & centered w/in the CLMS
	    GO_set_sprite_index(spr_Placement_01x01);
    
	    xScale = CLMS<<4;
	    yScale = $10;
    
	    var _PAD = $2;
	    if (CLMS > _PAD<<1)
	    {
	        set_xlyt(id, GRID_XL+(_PAD<<4), yt);
	        xScale -= (_PAD<<1)<<4;
	    }
	    else if (CLMS > _PAD)
	    {
	        set_xlyt(id, GRID_XL+($1<<4), yt);
	        xScale  = (CLMS>>1)<<4;
	    }
    
    
	    image_xscale = xScale;
	    image_yscale = yScale;
    
	    // So ocs will be accurate.
	    ww  = sprite_width;
	    hh  = sprite_height;
	    ww_ = ww>>1;
	    hh_ = hh>>1;
	    break;}//case 2:{
	}//switch(ver)







}
