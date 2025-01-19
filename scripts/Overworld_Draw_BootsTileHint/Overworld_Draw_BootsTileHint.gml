/// @description  Overworld_Draw_BootsTileHint()
function Overworld_Draw_BootsTileHint() {


	// Draw indicator on walkable water tiles that are always deep water graphic.
	switch(BootsTileIndicator_VER)
	{
	    // ---------------------------------------------------------------
	    case 1:{
	    var _i,_j, _x,_y, _val;
	    var _PC_X = ow_pc_xy(0); // pc view x
	    var _PC_Y = ow_pc_xy(1); // pc view y
    
	    var _pc_clm = (pcrc>>0)&$FF;
	    var _pc_row = (pcrc>>8)&$FF;
	    var _owrc;
    
	    if (WaterSparkle_timer>=WaterSparkle_CUE1)
	    {
	        for(_i=ds_grid_width(dg_WaterSparkle)-1; _i>=1; _i--) // each owrc
	        {
	            _owrc = dg_WaterSparkle[#_i,0];
	            if (_owrc>=0) // -1 means this ow tile doesn't sparkle
	            {
	                for (_j=1; _j<=4; _j++) // each sparkle pixel of this owrc
	                {
	                    _val  = WaterSparkle_CUE1;
	                    _val +=(WaterSparkle_DURATION1-WaterSparkle_DURATION2)*(_j-1);
	                    if (WaterSparkle_timer >= _val 
	                    &&  WaterSparkle_timer <  _val+WaterSparkle_DURATION1 )
	                    {
	                        _ow_clm = (_owrc>>0)&$FF;
	                        _ow_row = (_owrc>>8)&$FF;
	                        _x  = _ow_clm<<4;
	                        _y  = _ow_row<<4;
	                        _x += (dg_WaterSparkle[#_i,_j]>>0)&$F;
	                        _y += (dg_WaterSparkle[#_i,_j]>>4)&$F;
                        
	                        _x  = _PC_X + (_x-pc_ow_x); // ow x
	                        _y  = _PC_Y + (_y-pc_ow_y); // ow y
	                        // This is to fix an unintended 1 pixel offset while pc is moving.
	                        _x += -move_x;
	                        _y += -move_y;
	                        if (WaterSparkle_timer < _val+(WaterSparkle_DURATION1>>1))
	                        {   // 2nd half of pixel's duration moves slightly
	                            _x++;
	                            _y--;
	                        }
	                        draw_point_colour(_x,_y, p.C_WHT1);
	                    }
	                }
	            }
	        }
	    }
	    break;}//case 1
    
    
    
    
    
    
    
	    // ---------------------------------------------------------------
	    case 2:{
	    var _i,_j,_k, _idx,_idx1,_idx2, _val,_val1,_val2;
	    var _x,_y, _x1,_y1;
	    var _owrc;
	    var _PC_X = ow_pc_xy(0); // pc view x
	    var _PC_Y = ow_pc_xy(1); // pc view y
    
	    for(_i=ds_list_size(dl_WaterSparkle_idx)-1; _i>=0; _i--) // each owrc that qualifies for drawing this frame
	    {
	        _idx = dl_WaterSparkle_idx[|_i];
	        _owrc = dg_BTI[#_idx,0];
        
	        _ow_clm = (_owrc>>0)&$FF;
	        _ow_row = (_owrc>>8)&$FF;
	        _x1  = _ow_clm<<4;
	        _y1  = _ow_row<<4;
        
	        _x1  = _PC_X + (_x1-pc_ow_x); // ow x
	        _y1  = _PC_Y + (_y1-pc_ow_y); // ow y
	        // This is to fix an unintended 1 pixel offset while pc is moving.
	        _x1 += -move_x;
	        _y1 += -move_y;
        
	        if (rectInRect(_x1,_y1,T_SIZE,T_SIZE, viewXL(),viewYT(),viewW(),viewH()))
	        {
	            //for(_j=0; _j<1; _j++) // sparkle groups for this owrc
	            for(_j=0; _j<3; _j++) // sparkle groups for this owrc
	            {
	                _idx1 = 2+(_j<<1);
	                _val1 = dg_BTI[#_idx,_idx1];
	                if (_val1)
	                {
	                    _val2 = dg_BTI[#_idx,_idx1+1];
	                    for(_k=0; _k<4; _k++) // 1 sparkle for each quadrant of the owrc
	                    {
	                        if ((_j==0 && isVal(_k,1,2)) 
	                        ||  (_j==1 && _k!=1) 
	                        ||  (_j==2 && _k!=2) )
	                        {   // Tweeking sparkle amount
	                            continue;
	                        }
                        
	                        _val  = _val2>>(_k<<3);
	                        _val &= $FF;
	                        _x = _x1 + ((_val>>0)&$F);
	                        _y = _y1 + ((_val>>4)&$F);
	                        if (_val1==2)
	                        {
	                            _x++;
	                            _y--;
	                        }
	                        draw_point_colour(_x,_y, p.C_WHT1);
	                    }
	                }
	            }
	        }
	    }
	    break;}//case 2
	}//switch(BootsTileHint_VER)







}
