/// @description  StarSky_1_Draw()
function StarSky_1_Draw() {


	var _i,_j, _idx, _x,_y;
	var _TIME = g.counter1>>4;


	if (CAM_LOCKED)
	{
	    for(_i=0; _i<ROWS; _i++)
	    {
	        for(_j=0; _j<CLMS; _j++)
	        {
	            _idx = (_TIME+_i+_j) &$3;
	            if (surface_exists(g.StarSky_dl_surfaces[|_idx]))
	            {
	                _x = viewXL() + (SPR_W*_j);
	                _y = viewYT() + (SPR_H*_i);
	                draw_surface(g.StarSky_dl_surfaces[|_idx], _x,_y);
	            }
	            /*
	            _x  = viewXL() + X_OFF;
	            _x += SPR_W*_j;
	            _y  = viewYT() + Y_OFF;
	            _y += SPR_H*_i;
            
	            _idx = (_TIME+_i+_j) &$3;
	            draw_sprite_(g.dl_StarSky_SPR2[|_idx],0, _x,_y);
	            */
	        }
	    }
	}
	else
	{
	    for(_i=(room_height>>8)-1; _i>=0; _i--) // each row of pages
	    {
	        for(_j=(room_width>>8)-1; _j>=0; _j--) // each clm of pages
	        {
	            _idx = (_TIME+_i+_j) &$3;
	            if (surface_exists(g.StarSky_dl_surfaces[|_idx]))
	            {
	                _x  = _j<<8;
	                _y  = _i<<8;
	                if (g.view_lock_rm&$C 
	                ||  g.rm_rows==1 )
	                {
	                    _y = viewYT();
	                }
                
	                if(!rectInView(_x,_y, SPR_W,SPR_H)) continue;//_j
                
	                draw_surface(g.StarSky_dl_surfaces[|_idx], _x,_y);
	            }
	            /*
	            _x += SPR_XOFF;
	            _y += SPR_YOFF;
	            _idx = (_TIME+_i+_j) &$3;
	            draw_sprite_(g.dl_StarSky_SPR2[|_idx],0, _x,_y);
	            */
	        }
	    }
	}







}
