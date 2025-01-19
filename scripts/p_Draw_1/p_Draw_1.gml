/// @description  p_Draw_1()
function p_Draw_1() {


	var _C1 = 0;

	if(!fall_scene_1_spr 
	|| !sprite_exists(fall_scene_1_spr) )
	{   _C1 |= $1;  }

	if(!fall_scene_2_spr 
	|| !sprite_exists(fall_scene_2_spr) )
	{   _C1 |= $2;  }

	if(!global.App_frame_count) // On 1st frame after app start
	{   _C1 |= $4;  }

	if (global.palette_image_IS_SURFACE)
	{
	    if(!palette_image 
	    || !surface_exists(palette_image) )
	    {   _C1 |= $8;  }
	}
	else
	{
	    if(!palette_image 
	    || !sprite_exists(palette_image) )
	    {   _C1 |= $8;  }
	}





	if (_C1)
	{
	    var _i, _x,_y;
	    var _w,_h, _w1,_h1;
	    var _ts_x,_ts_y;
	    var _surf = 0;
	}



	if (_C1&$3)
	{
	    var _TS = ts_Natural_1a_WRB;
	    var _Stripe_W = FallScene_ROW_H;
	    var _dl_COLORS = ds_list_create();
	    ds_list_add(_dl_COLORS, C_TONE_HGH,C_TONE_MID,C_TONE_LOW);
	    var _dl_COLORS_SIZE = ds_list_size(_dl_COLORS);
	    var _color;
    
	    // -----------------------------------------------------------
	    // Falling Scene - Vertical Falling (blue stripes)
	    if (_C1&$1)
	    {
	        _w1  = viewW();
	        _h1  =     (viewH() div _Stripe_W) * _Stripe_W;
	        _h1 += sign(viewH() mod _Stripe_W) * _Stripe_W;
	        _surf = surface_create(_w1,_h1);
	        surface_set_target(_surf);
	        draw_sprite_(spr_1x1_WHT,0, 0,0, -1, _w1,_h1, c_black);
        
	        _ts_x = $D<<3;
	        _ts_y = $F<<3;
	        _w  = viewW();
	        _w -= _w div 3;
	        _w -= $4<<3; // adjustment
	        _x  = (_w1>>1) - (_w>>1);
	        for(_i=(_h1 div _Stripe_W)-1; _i>=0; _i--) // each stripe
	        {
	            _y = _Stripe_W*_i;
	            _color = _dl_COLORS[|_i mod _dl_COLORS_SIZE];
	            draw_sprite_(spr_1x1_WHT,0, _x,_y, -1, _w,_Stripe_W, _color); // stripe
	            draw_background_part_ext(_TS, _ts_x,_ts_y, 8,8, _x,   _y, -1,1, _color,1); // dithered end
	            draw_background_part_ext(_TS, _ts_x,_ts_y, 8,8, _x+_w,_y,  1,1, _color,1); // dithered end
	        }
        
	        fall_scene_1_spr = sprite_create_from_surface(_surf, 0,0,_w1,_h1, 0,0, 0,0);
	        surface_reset_target();
	        surface_free(_surf);
	    }
    
	    // -----------------------------------------------------------
	    // Falling Scene - Horizontal Falling (red stripes)
	    if (_C1&$2)
	    {
	        _w1  =     (viewW() div _Stripe_W) * _Stripe_W;
	        _w1 += sign(viewW() mod _Stripe_W) * _Stripe_W;
	        _h1  = viewH();
	        _surf = surface_create(_w1,_h1);
	        surface_set_target(_surf);
	        draw_sprite_(spr_1x1_WHT,0, 0,0, -1, _w1,_h1, c_black);
        
	        _ts_x = $F<<3;
	        _ts_y = $C<<3;
	        _h  = viewH();
	        _h -= _h div 3;
	        _h -= $4<<3; // adjustment
	        _y  = (_h1>>1) - (_h>>1);
	        for(_i=(_w1 div _Stripe_W)-1; _i>=0; _i--) // each stripe
	        {
	            _x = _Stripe_W*_i;
	            _color = _dl_COLORS[|_i mod _dl_COLORS_SIZE];
	            draw_sprite_(spr_1x1_WHT,0, _x,_y, -1, _Stripe_W,_h, _color); // stripe
	            draw_background_part_ext(_TS, _ts_x,_ts_y, 8,8, _x,_y-8,    1, 1, _color,1);
	            draw_background_part_ext(_TS, _ts_x,_ts_y, 8,8, _x,_y+_h+8, 1,-1, _color,1);
	        }
        
	        fall_scene_2_spr = sprite_create_from_surface(_surf, 0,0,_w1,_h1, 0,0, 0,0);
	        surface_reset_target();
	        surface_free(_surf);
	    }
    
    
	    ds_list_destroy(_dl_COLORS); _dl_COLORS=undefined;
	}








	// ------------------------------------------------------------------------
	if (_C1&$4) // On 1st frame after app start
	{
	    with(g.pc)
	    {
	        // PC SpriteSheet Colors
	        // The palette colors for the custom pc sprites are in the 
	        // top left of the $FF(bottom-right) box of the sprite sheet.
	        // g.pc.PCSkins_SYS_VER==1: colors are in sub image $3F.
	        // The palettes are displayed as 3 rows of 3 4x4 squares, 
	        // with each row separated by 1 pixel.
	        var _j,_k, _idx, _val, _count;
	        var _datakey;
	        var _palette = "";
	        _surf = surface_create(Spritesheet_W,Spritesheet_H);
	        surface_set_target(_surf);
        
	        //sdm("");
	                     _count = val(dm_skins[?STR_Set+STR_Count]);
	        for(_i=0; _i<_count; _i++)
	        {
	            _datakey =   val(dm_skins[?hex_str(_i)+STR_Datakey], STR_undefined);
	            _sprite  =       dm_skins[?_datakey   +STR_Sprite];
	            if (is_undefined(dm_skins[?_datakey   +STR_Palette])  // setting the palette in GameObjectA_init() overrides setting it here
	            &&  is_undefined(dm_skins[?hex_str(_i)+STR_Palette]) )
	            {
	                if (val(dm_skins[?hex_str(_i)+"_source_is_file"]))
	                {
	                    if (is_undefined(_sprite)) continue;//_i
	                    draw_sprite_part(_sprite,0, $F0,$F0, Spritesheet_W,Spritesheet_H, 0,0);
	                }
	                else
	                {
	                    if (PCSkins_SYS_VER==2) continue;//_i
	                    draw_sprite_(_sprite,$3F, Spritesheet_W>>1,Spritesheet_H>>1);
	                }
                
                
	                _palette = "";
	                for(_j=0; _j<3; _j++) // each palette
	                {
	                    _y=_j*5;
	                    for(_k=0; _k<3; _k++) // each palette color
	                    {
	                        _x=_k*4;
	                        _val  = surface_getpixel(_surf,_x,_y); // get the pixel color
	                        _idx  = ds_list_find_index(p.dl_COLOR,_val);
	                        _idx &= $FF;
	                        if(!_k) _palette += p.CI_BLK1_;
	                        //if(!_k) _palette += hex_str(_idx); // sword color
	                        _palette += hex_str(_idx);
	                        //sdm("$"+hex_str(_val));
	                    }
	                }
	                //sdm("");
                
	                dm_skins[?_datakey+STR_Palette] = _palette;
	            }
	        }
        
	        surface_reset_target();
	        surface_free(_surf);
	    }
	}







	// ------------------------------------------------------------------------
	if (_C1&$8)
	{
	    _w1 = global.palette_image_W;
	    _h1 = global.palette_image_H;
	    _surf = surface_create(_w1,_h1);
	    surface_set_target(_surf);
    
	    draw_sprite_(spr_1x1_WHT,0, 0,0, -1, _w1,_h1, c_black);
    
	    if (global.palette_image_IS_SURFACE)
	    {
	        palette_image = surface_create(_w1,_h1);
	        surface_copy(palette_image, 0,0, _surf);
	    }
	    else
	    {
	        palette_image = sprite_create_from_surface(_surf, 0,0, _w1,_h1, 0,0, 0,0);
	    }
    
	    surface_reset_target();
	    surface_free(_surf);
    
	    if (global.App_frame_count)
	    {
	        pal_rm_new  = pal_rm_curr;
	        pal_rm_curr = "";
	        palSpr_changeColors();
	    }
	    /*
	    if(!is_undefined(pal_rm_curr) 
	    && !is_undefined(pal_rm_new) )
	    {
	        if (string_length(pal_rm_curr)<string_length(pal_rm_DEFAULT))
	        {
	            pal_rm_curr = pal_rm_DEFAULT;
	        }
        
	        pal_rm_new  = pal_rm_curr;
	        pal_rm_curr = "";
	        palSpr_changeColors();
	    }
	    */
	}







}
