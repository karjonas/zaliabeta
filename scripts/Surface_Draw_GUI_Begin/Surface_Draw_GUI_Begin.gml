/// @description  Surface_Draw_GUI_Begin()
function Surface_Draw_GUI_Begin() {


	var _qualifies = global.RetroShaders_IS_LIVE && global.RetroShaders_enabled;
	if (_qualifies)
	{
	    _qualifies =  (shd_SaturationBrightness_IS_COMPILED && (GEE.dg_Saturation[#GEE.Saturation_ENABLE,$5] || GEE.dg_Brightness[#GEE.Brightness_ENABLE,$5])) 
	              ||  (shd_ScanLines01_IS_COMPILED          &&  GEE.dg_Scanlines[# GEE.Scanlines_ENABLE, $5]) 
	              ||  (shd_Bloom01_IS_COMPILED              &&  GEE.dg_Bloom[#     GEE.Bloom_ENABLE,     $5]) 
	              ||  (shd_Blur01_IS_COMPILED               &&  GEE.dg_Blur[#      GEE.Blur_ENABLE,      $5])
	              ||  (shd_Blur02_IS_COMPILED               &&  GEE.dg_Blur[#      GEE.Blur_ENABLE,      $5]);
	}



	if (_qualifies)
	{
	    var _gui_W = window_get_width();
	    var _gui_H = window_get_height();
	    //display_set_gui_size(_gui_W,_gui_H);
	    var _srf_W    = surface_get_width( application_surface);
	    var _srf_H    = surface_get_height(application_surface);
	    var _srf1     = surface_create(_srf_W,_srf_H);
	    //var _srf2     = surface_create(_srf_W,_srf_H);
	    var _srf_blur = surface_create(_srf_W,_srf_H);
	    var _texture = 0;
	    var _texture_w = 0;
	    var _texture_h = 0;
	    var _texel_w = 0;
	    var _texel_h = 0;
    
    
	    // Saturation and Brightness ------------------------
	    if (shd_SaturationBrightness_IS_COMPILED)
	    {
	        if (GEE.dg_Saturation[#GEE.Saturation_ENABLE,$5] 
	        ||  GEE.dg_Brightness[#GEE.Brightness_ENABLE,$5] )
	        {
	            surface_set_target(_srf1);
	            draw_clear_alpha(c_black,0);
            
	            shader_set(shd_SaturationBrightness);
	            shader_set_uniform_f(shader_get_uniform(shd_SaturationBrightness,"u_saturation"), GEE.dg_Saturation[#GEE.Saturation_EDIT,$5]*(GEE.dg_Saturation[#GEE.Saturation_ENABLE,$5]>0));
	            shader_set_uniform_f(shader_get_uniform(shd_SaturationBrightness,"u_brightness"), GEE.dg_Brightness[#GEE.Brightness_EDIT,$5]*(GEE.dg_Brightness[#GEE.Brightness_ENABLE,$5]>0));
	            shader_set_uniform_f(shader_get_uniform(shd_SaturationBrightness,"u_effect_type"), 1); // Brightness effect
	            draw_surface(application_surface, 0,0);
	            shader_reset();
            
	            surface_reset_target();
	            surface_copy(application_surface, 0,0, _srf1);
	        }
	    }
    
    
	    // Scanlines ---------------------------------------
	    if (shd_ScanLines01_IS_COMPILED 
	    &&  GEE.dg_Scanlines[#GEE.Scanlines_ENABLE,$5] )
	    {
	        surface_set_target(_srf1);
	        draw_clear_alpha(c_black,0);
        
	        shader_set(shd_ScanLines01);
	        shader_set_uniform_f(shader_get_uniform(shd_ScanLines01,"u_texture_w"), _srf_W);
	        shader_set_uniform_f(shader_get_uniform(shd_ScanLines01,"u_texture_h"), _srf_H);
	        shader_set_uniform_f(shader_get_uniform(shd_ScanLines01,"u_line_brightness"), GEE.dg_Scanlines[#GEE.Scanlines_EDIT,$5]);
	        shader_set_uniform_f(shader_get_uniform(shd_ScanLines01,"u_line_height"), max(1.0, global.RetroShaders_surface_scale/2.0));
	        //shader_set_uniform_f(shader_get_uniform(shd_ScanLines01,"u_line_height"), max(1.0, floor(g.RetroShaders_surface_scale/2.0)));
	        draw_surface(application_surface, 0,0);
	        shader_reset();
        
	        surface_reset_target();
	        surface_copy(application_surface, 0,0, _srf1);
	    }
    
    
	    // Bloom ----------------------------------
	    if (shd_Bloom01_IS_COMPILED 
	    &&  GEE.dg_Bloom[#GEE.Bloom_ENABLE,$5] )
	    {
	        surface_set_target(_srf1);
	        draw_clear_alpha(c_black,0);
        
	        shader_set(shd_Bloom01);
	        texture_set_stage(shader_get_sampler_index(shd_Bloom01,"u_texture"), surface_get_texture(application_surface));
	        shader_set_uniform_f(shader_get_uniform(shd_Bloom01,"u_texture_w"), _srf_W);
	        shader_set_uniform_f(shader_get_uniform(shd_Bloom01,"u_texture_h"), _srf_H);
	        shader_set_uniform_f(shader_get_uniform(shd_Bloom01,"u_dist_x"), 1.0/_srf_W);
	        shader_set_uniform_f(shader_get_uniform(shd_Bloom01,"u_dist_y"), 1.0/_srf_H);
	        shader_set_uniform_f(shader_get_uniform(shd_Bloom01,"u_a"), GEE.dg_Bloom[#GEE.Bloom_A,$5]); // default: 0.0004
	        shader_set_uniform_f(shader_get_uniform(shd_Bloom01,"u_b"), GEE.dg_Bloom[#GEE.Bloom_B,$5]); // default: 0.0120
	        shader_set_uniform_f(shader_get_uniform(shd_Bloom01,"u_c"), GEE.dg_Bloom[#GEE.Bloom_C,$5]); // default: 0.0090
	        shader_set_uniform_f(shader_get_uniform(shd_Bloom01,"u_d"), GEE.dg_Bloom[#GEE.Bloom_D,$5]); // default: 0.0075
	        shader_set_uniform_f(shader_get_uniform(shd_Bloom01,"u_e"), GEE.dg_Bloom[#GEE.Bloom_E,$5]); // default: 0.3000
	        shader_set_uniform_f(shader_get_uniform(shd_Bloom01,"u_f"), GEE.dg_Bloom[#GEE.Bloom_F,$5]); // default: 0.5000
	        shader_set_uniform_f(shader_get_uniform(shd_Bloom01,"u_g"), GEE.dg_Bloom[#GEE.Bloom_G,$5]); // default: 0.2500
	        shader_set_uniform_f(shader_get_uniform(shd_Bloom01,"u_scanlines_effect_enabled"), GEE.dg_Scanlines[#GEE.Scanlines_ENABLE,$5]);
	        draw_surface(application_surface, 0,0);
	        shader_reset();
        
	        surface_reset_target();
	        surface_copy(application_surface, 0,0, _srf1);
	    }
    
    
	    // Blur --------------------------------
	    var _BLUR_VER = 2;
    
	    if (_BLUR_VER==1 
	    &&  shd_Blur01_IS_COMPILED 
	    &&  GEE.dg_Blur[#GEE.Blur_ENABLE,$5] )
	    {
	        surface_set_target(_srf_blur);
	        draw_clear_alpha(c_black,0);
        
	        shader_set(shd_Blur01);
	        texture_set_stage(shader_get_sampler_index(shd_Blur01,"u_texture"), surface_get_texture(application_surface));
	        shader_set_uniform_f(shader_get_uniform(shd_Blur01,"u_texture_w"), _srf_W);
	        shader_set_uniform_f(shader_get_uniform(shd_Blur01,"u_texture_h"), _srf_H);
	        shader_set_uniform_f(shader_get_uniform(shd_Blur01,"u_dist_x"), 1.0/_srf_W);
	        shader_set_uniform_f(shader_get_uniform(shd_Blur01,"u_dist_y"), 1.0/_srf_H);
	        shader_set_uniform_f(shader_get_uniform(shd_Blur01,"u_texture_scale"), global.RetroShaders_surface_scale);
	        //shader_set_uniform_f(shader_get_uniform(shd_Blur02,"u_scanlines_effect_enabled"), GEE.dg_Scanlines[#GEE.Scanlines_ENABLE,$5]);
	        draw_surface(application_surface, 0,0);
	        shader_reset();
        
	        surface_reset_target();
	    }
    
	    if (_BLUR_VER==2 
	    &&  shd_Blur02_IS_COMPILED 
	    &&  GEE.dg_Blur[#GEE.Blur_ENABLE,$5] )
	    {
	        _texture   = surface_get_texture(application_surface);
	        //_texture_w = texture_get_width( _texture);
	        //_texture_h = texture_get_height(_texture);
	        _texel_w   = texture_get_texel_width( _texture);
	        _texel_h   = texture_get_texel_height(_texture);
        
	        //surface_resize(_srf_blur, _gui_W,_gui_H);
	        surface_set_target(_srf_blur);
	        draw_clear_alpha(c_black,0);
        
	        shader_set(shd_Blur02);
	        //shader_set_uniform_f(shader_get_uniform(shd_Blur02,"u_scanlines_effect_enabled"), GEE.dg_Scanlines[#GEE.Scanlines_ENABLE,$5]);
        
	        texture_set_stage(shader_get_sampler_index(shd_Blur02,"u_texture"), _texture);
	        shader_set_uniform_f(shader_get_uniform(shd_Blur02, "u_texel_size"), _texel_w, _texel_h);
	        shader_set_uniform_f(shader_get_uniform(shd_Blur02, "u_pixel_scale"), _gui_W/_srf_W, _gui_H/_srf_H);
	        draw_surface(application_surface, 0,0);
	        /*
	        // Based off: https://github.com/JujuAdams/Pixel-Art-Upscaling/blob/main/objects/oAppSurfaceRenderer/Draw_64.gml
	        texture_set_stage(shader_get_sampler_index(shd_Blur02,"u_texture"), _texture);
	        shader_set_uniform_f(shader_get_uniform(shd_Blur02, "u_texel_size"), _texel_w, _texel_h);
	        shader_set_uniform_f(shader_get_uniform(shd_Blur02, "u_pixel_scale"), _gui_W/_srf_W, _gui_H/_srf_H);
	        draw_surface_stretched(application_surface, 0,0, _gui_W,_gui_H);
	        */
	        /*
	        shader_set_uniform_f(shader_get_uniform(shd_Blur02,"u_texture_w"), _srf_W);
	        shader_set_uniform_f(shader_get_uniform(shd_Blur02,"u_texture_h"), _srf_H);
	        shader_set_uniform_f(shader_get_uniform(shd_Blur02,"u_dist_x"), 1.0/_srf_W);
	        shader_set_uniform_f(shader_get_uniform(shd_Blur02,"u_dist_y"), 1.0/_srf_H);
	        draw_surface(application_surface, 0,0);
	        */
	        shader_reset();
        
	        surface_reset_target();
	    }
    
    
    
    
	    draw_surface(application_surface, 0,0);
    
	    if (_BLUR_VER==1 
	    &&  shd_Blur01_IS_COMPILED 
	    &&  GEE.dg_Blur[#GEE.Blur_ENABLE,$5] )
	    {   // *** This will not blend properly when the draw target is to a surface
	        draw_surface_ext(_srf_blur, 0,0, 1,1, 0,c_white, GEE.dg_Blur[#GEE.Blur_EDIT,$5]);
	    }
    
	    if (_BLUR_VER==2 
	    &&  shd_Blur02_IS_COMPILED 
	    &&  GEE.dg_Blur[#GEE.Blur_ENABLE,$5] )
	    {   // *** This will not blend properly when the draw target is to a surface
	        draw_surface_ext(_srf_blur, 0,0, 1,1, 0,c_white, GEE.dg_Blur[#GEE.Blur_EDIT,$5]);
	    }
    
    
	    surface_free(_srf1);
	    //surface_free(_srf2);
	    surface_free(_srf_blur);
	}
	else if(!global.application_surface_draw_enable_state)
	{
	    draw_surface(application_surface, 0,0);
	}






	/*
	var _FONT_SPR = spr_Font2_1;
	var _DIST1 = sprite_get_height(_FONT_SPR)+1;
	var _XL = $10;
	var _yt = $30;

	draw_text_(_XL,_yt, "xport "+string_repeat("-",view_xport[0]<0)+string_repeat(" ",view_xport[0]>=0)+hex_str(abs(view_xport[0])), _FONT_SPR);
	_yt+=_DIST1;
	draw_text_(_XL,_yt, "yport "+string_repeat("-",view_yport[0]<0)+string_repeat(" ",view_yport[0]>=0)+hex_str(abs(view_yport[0])), _FONT_SPR);
	_yt+=_DIST1;
	draw_text_(_XL,_yt, "wport "+string_repeat("-",view_wport[0]<0)+string_repeat(" ",view_wport[0]>=0)+hex_str(abs(view_wport[0])), _FONT_SPR);
	_yt+=_DIST1;
	draw_text_(_XL,_yt, "hport "+string_repeat("-",view_hport[0]<0)+string_repeat(" ",view_hport[0]>=0)+hex_str(abs(view_hport[0])), _FONT_SPR);
	_yt+=_DIST1;

	_yt+=_DIST1;
	draw_text_(_XL,_yt, "xview "+string_repeat("-",view_xview[0]<0)+string_repeat(" ",view_xview[0]>=0)+hex_str(abs(view_xview[0])), _FONT_SPR);
	_yt+=_DIST1;
	draw_text_(_XL,_yt, "yview "+string_repeat("-",view_yview[0]<0)+string_repeat(" ",view_yview[0]>=0)+hex_str(abs(view_yview[0])), _FONT_SPR);
	_yt+=_DIST1;
	draw_text_(_XL,_yt, "wview "+string_repeat("-",view_wview[0]<0)+string_repeat(" ",view_wview[0]>=0)+hex_str(abs(view_wview[0])), _FONT_SPR);
	_yt+=_DIST1;
	draw_text_(_XL,_yt, "hview "+string_repeat("-",view_hview[0]<0)+string_repeat(" ",view_hview[0]>=0)+hex_str(abs(view_hview[0])), _FONT_SPR);
	_yt+=_DIST1;

	_yt+=_DIST1;
	draw_text_(_XL,_yt, "application_surface w "+string_repeat("-",surface_get_width( application_surface)<0)+string_repeat(" ",surface_get_width( application_surface)>=0)+hex_str(abs(surface_get_width( application_surface))), _FONT_SPR);
	_yt+=_DIST1;
	draw_text_(_XL,_yt, "application_surface h "+string_repeat("-",surface_get_height(application_surface)<0)+string_repeat(" ",surface_get_height(application_surface)>=0)+hex_str(abs(surface_get_height(application_surface))), _FONT_SPR);
	_yt+=_DIST1;
	*/








}
