function p_Draw() {



	p_Draw_1();
	// On 1st frame after app start: Initialize pal_spr, falling scene sprites, and etc... ----------------------------------------------------
	//if(!global.App_frame_count) p_Draw_1();




	// Change the Room's Palette Colors
	// -----------------------------------------------------------------------
	palSpr_changeColors();



	// Color Room Tiles
	// -----------------------------------------------------------------------
	color_tiles();


	if (DEV)
	{
	    dev_tile_highlighting();
	}
	else
	{
	    tile_layer_hide(DEPTH_SOLIDS);
	    tile_layer_hide(DEPTH_UNIQUE);
	}



	// Changing rooms
	// -----------------------------------------------------------------------




	// -----------------------------------------------------------------------




	// first_frame = false;

	/*
	if (g.canDrawPalette)
	{
	    var _i,_j,_k, _idx, _val, _count;
	    var _palette, _color;
	    var _SIZE = $4;
	    var _X1 = viewXL()+$10;
	    var _xl = _X1;
	    var _y1 = viewYB()-$80;
	    var _yt = _y1;
    
	    for(_i=0; _i<2; _i++)
	    {
	        if (_i==0)   _count = ds_list_size(dl_various_pals1);
	        else         _count = ds_list_size(dl_various_pals2);
	        for(_j=0; _j<_count; _j++) // each palette
	        {
	            _xl = _X1 + (_j*_SIZE);
	            if (_i==0) _palette = dl_various_pals1[|_j];
	            else       _palette = dl_various_pals2[|_j];
	            for(_k=0; _k<COL_PER_PAL; _k++) // each color
	            {
	                _yt = _y1 + (_k*_SIZE);
	                _val = string_copy(_palette, (_k<<1)+1, 2);
	                _idx = str_hex(_val);
	                _color = dl_COLOR[|_idx];
	                draw_sprite_(spr_1x1_WHT,0, _xl,_yt, -1, _SIZE,_SIZE, _color);
	            }
	        }
        
	        _y1 += _SIZE*COL_PER_PAL;
	        _y1 += _SIZE<<1; // pad
	    }
	}
	*/







}
