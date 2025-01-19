/// @description  TogglingPathDirectionB_draw()
function TogglingPathDirectionB_draw() {


	if (!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	var i, _x, _y, _idx, _spr, _rot;
	for (i = ds_grid_width(dg_arrows)-1; i >= 0; i--)
	{
	    if (i mod (ARROW_CNT>>2) == arrow_lit_idx) _spr = ARROW_SPR_A2;
	    else                                       _spr = ARROW_SPR_A1;
    
    
	    _x = dg_arrows[# i,1];
	    _y = dg_arrows[# i,2];
    
	                  _rot = ((i div (ARROW_CNT>>2))&3) * 90;
	    if (path_dir) _rot = (_rot + 180) mod 360;
    
	    draw_sprite_(_spr,0, _x,_y, palidx, 1,1, c_white,1, _rot);
	    // drawText(_x+8,_y, hex_str(i));
    
    
	    if (0)
	    {
	        _idx = i div (ARROW_CNT>>2);
	        // _idx = i>>2;
	        _x = dg_arrows[# _idx,1];
	        _y = dg_arrows[# _idx,2];
	        switch (_idx)
	        {
	            case 0: {
	            _y -= ((i mod (ARROW_CNT>>2)) <<3);
	            break;  }
            
	            case 1: {
	            _x += ((i mod (ARROW_CNT>>2)) <<3);
	            break;  }
            
	            case 2: {
	            _y += ((i mod (ARROW_CNT>>2)) <<3);
	            break;  }
            
	            case 3: {
	            _x -= ((i mod (ARROW_CNT>>2)) <<3);
	            break;  }
	        }
	        // if ((i>>2) & 1) _x
        
	        _spr = ARROW_SPR_B1;
	        _rot = 0;
	        draw_sprite_(_spr,0, _x,_y, palidx, 1,1, c_white,1, _rot);
	    }
	}

	for (i = ds_grid_width(dg_arrows)-1; i >= 0; i--)
	{
    
	}



	// ------------------------------------------------------------------------------
	if(!g.DevTools_state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//if(!DEV)            exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!g.can_draw_cs)  exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!


	depth = DEPTH_BASE_HUD;

	for (i = ds_grid_width(dg_a)-1; i >= 0; i--)
	{
	    drawPointCross(dg_a[# i,1],dg_a[# i,2], c_lime , c_purple);
	}
	    drawPointCross(elev.x     ,elev.y     , c_white, c_orange);







}
