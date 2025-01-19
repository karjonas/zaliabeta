function PauseMenu_map_set_pcrc() {


	/*
	/// PauseMenu_map_set_pcrc()

	var _owrc = g.ow.exit_grid_xy;

	if (0) // Need to add data to Tiled Overworld file first
	// if (mv(g.dm_rm_data[? f.reen+STR_show_ow_pos]))
	{
	    // _tile_data, str: x num of 2 byte values (4 str char each value). 
	    // Each value is an ow-grid-xy that belongs to the current rm
	    var _tile_data = g.dm_rm_data[? f.reen+STR_ow_tile_data];
	    if (!isDefined(_tile_data)) _tile_data = hex_str(g.ow.dm_data[? MK_OWRC_NPAL1]);
    
	    // _tile_count, uint: The num of ow tiles that represent this rm
	    var _tile_count = string_length(_tile_data) >>2;
	    var _tile_idx = 0;
    
	    if (_tile_count > 1)
	    {
	        var _rm_w = cam_x_range();
	        var _pc_x = clamp(g.pc.x, cam_xl_min(),cam_xr_max()-1) - cam_xl_min();
        
	        // _page_w, uint: If _rm_w was divided equally by _tile_count
	        var _page_w    = _rm_w div _tile_count;
	            _tile_idx  = _pc_x div _page_w;
	    }
    
	    _owrc = str_hex(string_copy(_tile_data, (_tile_idx<<2)+1, 4));
	}




	g.ow.pcrc = _owrc;
	*/








}
