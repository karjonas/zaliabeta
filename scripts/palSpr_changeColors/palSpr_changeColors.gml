/// @description  palSpr_changeColors()
function palSpr_changeColors() {


	if (is_undefined(pal_rm_def)) exit; // !!!!!!!!!!!!!!!!!!!!!!!!
	if (pal_rm_new==pal_rm_curr)  exit; // !!!!!!!!!!!!!!!!!!!!!!!!



	// -----------------------------------------------------------------------------
	// -----------------------------------------------------------------------------
	var _i,_j, _idx;


	pal_rm_curr = pal_rm_new;

	var _W = (string_length(pal_rm_curr)>>1) div COL_PER_PAL;
	    _W = max(_W,1);
	var _SURF = surface_create(_W,global.palette_image_H);
	surface_set_target(_SURF);

	for(_i=0; _i<_W; _i++) // each pal & permut
	{
	    for(_j=0; _j<global.palette_image_H; _j++) // each color in one pal (4)
	    {
	            _idx  = (_i*global.palette_image_H) + _j; // pal-colors index
	            _idx  = (_idx<<1) + 1;     // bc string
	        //
	            _idx  = str_hex(string_copy(pal_rm_curr, _idx, 2)); // p.dl_COLOR index
	        if (_idx == $FF)
	        {   _idx  = background_color_index;  } // Needs to be the room's bg color
        
	        // drawing top to bottom vs left to right
	        draw_point_colour(_i,_j, dl_COLOR[|_idx]);
	    }
	}


	if (global.palette_image_IS_SURFACE)
	{
	    if (surface_exists(palette_image))
	    {   surface_free(  palette_image);  }
    
	    palette_image = surface_create(_W,global.palette_image_H);
	    surface_copy(palette_image, 0,0, _SURF);
	}
	else
	{
	    if (sprite_exists(palette_image)) 
	    {   sprite_delete(palette_image);  }
    
	    palette_image = sprite_create_from_surface(_SURF, 0,0, _W,global.palette_image_H, 0,0, 0,0);
	}


	surface_reset_target();
	surface_free(_SURF);


	/*
	/// @desc Returns the color of the specified pixel
	/// @param spriteId
	/// @param x
	/// @param y

	var spriteId = argument[0];
	var xx = argument[1];
	var yy = argument[2];

	var surf = surface_create(1,1);
	surface_set_target(surf);
	draw_sprite_part(spriteId,0,xx,yy,1,1,0,0);
	var color = surface_getpixel(surf,0,0);
	surface_reset_target();
	surface_free(surf);

	return color;
	*/


	/*
	    if (0)
	    {
	        show_debug_message("dl_color[| " + hex_str(_col_idx) + "]: " + string(dl_color[| _col_idx]));
	        if (_i & $03 == $03) show_debug_message("");
	        if (_i & $0F == $0F) show_debug_message("");
	        if (_i & $1F == $1F) show_debug_message("");
	    }
	*/








}
