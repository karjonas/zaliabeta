/// @description  Surface_Draw_End()
function Surface_Draw_End() {


	var _CAN_UPDATE_FRAME = can_update_frame();


	x = __view_get( e__VW.XView, 0 );
	y = __view_get( e__VW.YView, 0 );




	if (_CAN_UPDATE_FRAME)
	{
	    if (g.FallScene_timer>2)
	    {
	        draw_falling_scene();
	    }
	    else
	    {
	        if (g.ChangeRoom_timer>0 
	        ||  is_exiting_rm() 
	        ||  is_exiting_ow() )
	        {   // Draw screen a solid color
	            draw_clear_color = p.dl_COLOR[|p.background_color_index];
	        }
	    }
    
	    // clear the entire screen with any one color
	    if (draw_clear_color!=-1)
	    {
	        draw_clear(draw_clear_color);
	    }
	    else
	    {
	        //DEPTH_FG8
	    }
    
	    draw_clear_color = -1;
	}




	if (_CAN_UPDATE_FRAME 
	&&  g.MaskWideView )
	{
	    // 0: Off
	    // 1: Draw masks. Waiting for the start animation cue
	    // 2: Draw and animate masks
	    switch(g.MaskWideView)
	    {
	        case 1:{
	        with(TitleScreen)
	        {
	            if(!(counter&$3) 
	            &&  title_y>0 )
	            {
	                g.MaskWideView = 2; // 2: play animation
	                break;//with(TitleScreen)
	            }
	        }
	        break;}//case 1
        
        
	        case 2:{ // 2: play animation
	        g.MaskWideView_w = max(g.MaskWideView_w-.25, 0);
	        break;}//case 2
	    }//switch(g.MaskWideView)
    
    
	    if (g.MaskWideView_w>0)
	    {
	        draw_sprite_(spr_1x1_WHT,0, viewXL(),                 viewYT(), -1, g.MaskWideView_w,viewH(), p.C_BLK1);
	        draw_sprite_(spr_1x1_WHT,0, viewXR()-g.MaskWideView_w,viewYT(), -1, g.MaskWideView_w,viewH(), p.C_BLK1);
	    }
	    else
	    {
	        g.MaskWideView = 0;
	    }
	}




	if (_CAN_UPDATE_FRAME)
	{
	    if (g.ScreenShake_user_pref 
	    &&  g.ScreenShake_timer )
	    {
	        g.ScreenShake_timer--;
        
        
	        if (g.ScreenShake_strength_x)
	        {   g.ScreenShake_xoff = (irandom(g.ScreenShake_strength_x-1)+1) * choose(1,-1);  }
        
	        if (g.ScreenShake_strength_y)
	        {   g.ScreenShake_yoff = (irandom(g.ScreenShake_strength_y-1)+1) * choose(1,-1);  }
        
	        if (g.ScreenShake_xoff!=0 
	        ||  g.ScreenShake_yoff!=0 )
	        {
	            var _W = surface_get_width( application_surface);
	            var _H = surface_get_height(application_surface);
	            var          _SURF = surface_create(_W,_H);
	            surface_copy(_SURF, 0,0, application_surface);
            
	            if (global.application_surface_draw_enable_state)
	            {
	                draw_clear_alpha(c_black,0);
	                draw_surface(_SURF, viewXL()+g.ScreenShake_xoff, viewYT()+g.ScreenShake_yoff);
	            }
	            else
	            {
	                surface_set_target(_SURF);
	                draw_clear_alpha(c_black,0);
	                var _XL = g.ScreenShake_xoff*(_W div BASE_GAME_RESOLUTION_W);
	                var _YT = g.ScreenShake_yoff*(_H div BASE_GAME_RESOLUTION_H);
	                draw_surface(application_surface, _XL,_YT);
	                surface_reset_target();
	                surface_copy(application_surface, 0,0, _SURF);
	            }
            
	            surface_free(_SURF);
            
	            g.ScreenShake_xoff = 0;
	            g.ScreenShake_yoff = 0;
	        }
	    }
	    else
	    {
	        g.ScreenShake_timer      = 0;
	        g.ScreenShake_xoff       = 0;
	        g.ScreenShake_yoff       = 0;
	        g.ScreenShake_strength_x = 0;
	        g.ScreenShake_strength_y = 0;
	    }
	}




	if (g.room_type=="A" 
	&&  g.gui_state==g.gui_state_PAUSE 
	&&  g.PAUSE_MENU.state&$3!=g.PAUSE_MENU.ST_MAP )
	{
	    var _KEYS_REQUESTED = keyboard_check(vk_f4) || Input.GP_Face4_held; // GP_Face4_held, GP_Other2_held (xbox Y)
	    var _HINT_REQUESTED = keyboard_check(vk_f3) || Input.GP_Face2_held; // GP_Face2_held, GP_Other1_held (xbox B)
    
	    if (_KEYS_REQUESTED 
	    && !_HINT_REQUESTED 
	    &&  val(f.dm_rando[?STR_Randomize+STR_Key+STR_Locations]) )
	    {
	        draw_key_stats();
	    }
    
    
	    if (_HINT_REQUESTED 
	    && !_KEYS_REQUESTED 
	    &&  val(f.dm_rando[?STR_Item+STR_Location+STR_Hint]) )
	    {
	        draw_rando_hints();
	    }
	}




	dev_draw_invState();
	draw_RenderFrameDelay_state();

	dev_draw_app_paused_icon();
	//debug_draw_data();

	dev_draw_app_frame_count();


	if (keyboard_check(vk_f8))
	{
	    var _TEXT = "V-"+GM_version;
	    var _XL = viewXL()+8;
	    var _YT = viewYT()+8;
	    var _PAD = $1;
	    draw_sprite_(spr_1x1_WHT,0, _XL,_YT, -1, (string_length(_TEXT)<<8)+(_PAD<<1), 8+(_PAD<<1), c_black);
	    draw_text_(_XL+_PAD,_YT+_PAD, _TEXT);
	}


	// Trying to set up a system to flip through previews of rooms
	//preview_scene();





	/*
	if (0&&keyboard_check_pressed(vk_f7))
	{
	    var _i, _val, _str, _dk1;
	    var _sprite1;
	    var _COUNT1 = val(g.pc.dm_skins[?STR_Set+STR_Count]);
	    for(_i=0; _i<_COUNT1; _i++)
	    {
	        _dk1 =  val(g.pc.dm_skins[?hex_str(_i)+STR_Datakey], STR_undefined);
	        _sprite1 =  g.pc.dm_skins[?_dk1+STR_Sprite];
	        if(!is_undefined(_sprite1))
	        {
	            _val  = sprite_get_name(_sprite1);
	            _str  = "spr_PCSkin_";
	            _str += strR(_val,string_length("spr_pc_skin_")+1);
	            sdm(_str);
	        }
	    }
	}
	*/







	/*
	if (0&&keyboard_check_pressed(vk_f7))
	{
	    var _i,_j,_k, _idx, _dk1;
	    var _xl1,_yt1, _xl2,_yt2;
	    var _count1,_count2,_count3;
	    var _creator_name, _char_name;
	    var _sprite,_sprite1,_sprite2,_sprite3, _sub_image;
	    var _pos, _str;
    
	    _dm1=ds_map_create();
	    _dm1[?"Link-Kazunobu Shimizu"] = 3;
	    _dm1[?"Gamelon Zelda-Broomietunes"] = 2;
	    _dm1[?"Mike Jones-Broomietunes"] = 2;
	    _dm1[?"Wolf Link-Epsilon The Dragon"] = 3;
	    _dm1[?"Overworld Link-Epsilon The Dragon"] = 3;
	    _dm1[?"Basil-wolf0s"] = 1;
	    _dm1[?"Nyus-HoverBat"] = 3;
	    _dm1[?"Stalfos-HoverBat"] = 3;
	    _dm1[?"Dark Link-HoverBat"] = 3;
	    _dm1[?"Scribbles-HoverBat"] = 3;
	    _dm1[?"Simon Belmont-Cryonisis"] = 3;
	    _dm1[?"Wario-Wyng"] = 2;
	    _dm1[?"Meat-Wyng"] = 1;
	    _dm1[?"Succubus Hunter-Snowy, Wyng"] = 1;
	    _dm1[?"Cornelius-Lori, Red3445"] = 3;
	    _dm1[?"Mipha-RippedSnorlax"] = 3;
	    _dm1[?"Amida Link-Ok Impala, Revility, Falchion22, dartvaderx"] = 3;
	    _dm1[?"Marth-Link580"] = 3;
	    _dm1[?"Diddy Kong-Artisano"] = 2;
	    _dm1[?"Erdrick-Kowalth"] = 1;
	    _dm1[?"Orpheus-Kowalth"] = 1;
	    _dm1[?"Banjo-Charade"] = 2;
	    _dm1[?"Shadow Link-Nightmare James"] = 3;
	    _dm1[?"Pleasing Link Colors-Steel Crescent"] = 3;
	    _dm1[?"Stonuckle-anarkhya"] = 3;
	    _dm1[?"Popolon-Broomietunes"] = 3;
	    _dm1[?"CharaChimera-RetroFrito"] = 3;
	    _dm1[?"Roy-RetroFrito"] = 3;
	    _dm1[?"Caelius-HoverBat"] = 3;
	    _dm1[?"Bokoblin-Mister Mike, Steel Crescent"] = 1;
	    _dm1[?"Lonk-4IFalcon"] = 3;
	    _dm1[?"Princess Zelda-Crim"] = 3;
	    _dm1[?"Rygar-Crim"] = 2;
	    var _mask_omit_num = 3;
    
	    var _COUNT2 = $5; // num of mask sprites per mask row
	    var _COUNT1 = val(g.pc.dm_skins[?STR_Set+STR_Count]);
	    var _clm,_row, _clm1,_row1;
	    var _CLMS = $10;
	    //var _ROWS = $08;
	    var _FRAME_W1 = $40;
	    var _FRAME_H1 = _FRAME_W1;
	    var _dl_rows = ds_list_create();
	    ds_list_add(_dl_rows,$0,$1,$2,$3,$5,$6,$7);
	    var _ROWS = ds_list_size(_dl_rows);
	    var _SURF_W = _FRAME_W1*_CLMS;
	    var _SURF_H = _FRAME_H1*_ROWS;
	    var _ss_surf = surface_create(_SURF_W,_SURF_H);
    
    
	    for(_i=0; _i<_COUNT1; _i++)
	    {
	        _dk1 =  val(g.pc.dm_skins[?hex_str(_i)+STR_Datakey], STR_undefined);
        
	        _creator_name = val(g.pc.dm_skins[?hex_str(_i)+STR_Creator], "_Creator");
	        _creator_name = string_lettersdigits(_creator_name);
	        _char_name    = val(g.pc.dm_skins[?hex_str(_i)+STR_Name],    "_Character"+hex_str(_i));
	        _char_name    = string_lettersdigits(_char_name);
        
	        _str = string_repeat("0",_i<10) + string(_i);
	        _sprite1 = sprite_add("PCSpritesheet_"+_str+"_"+_char_name+".png",0, false,false,0,0);
	        //_sprite1 =  g.pc.dm_skins[?_dk1+STR_Sprite];
	        if(!is_undefined(_sprite1))
	        {
	            _mask_omit_num = val(_dm1[?_dk1],3);
            
            
	            surface_set_target(_ss_surf);
	            draw_clear_alpha(c_black,0);
            
	            for(_j=0; _j<_ROWS; _j++)
	            {
	                _row = _dl_rows[|_j];
	                _yt1 = _FRAME_H1*_j;
	                for(_k=0; _k<_CLMS; _k++)
	                {
	                    _xl1 = _FRAME_W1*_k;
	                    draw_sprite_part_(_sprite1,0, _xl1,_row*_FRAME_H1, _FRAME_W1,_FRAME_H1, _xl1,_yt1);
	                    //_sub_image = (_CLMS*_row) + _k;
	                    //draw_sprite_(_sprite1,_sub_image, _xl1,_yt1);
	                    if (0&&_j==$2) // $2: new main body row
	                    {   // draw head
	                        //_sub_image = (_CLMS*$4) + _k; // $4: old head row
	                        //draw_sprite_(_sprite1,_sub_image, _xl1,_yt1);
	                    }
                    
	                    if (_j==$3  // $3: new mask row
	                    &&  _k>=_COUNT2 )
	                    {   // draw new mask row
	                        if (_k<$F)
	                        {
	                            _row1 = $4;
	                            if (isVal(_k,$5,$6,$7,$8,$9))
	                            {
	                                if (_mask_omit_num==1) _clm1 = $5;
	                                else                   _clm1 = $0;
	                            }
	                            else if (isVal(_k,$A,$B,$C,$D,$E))
	                            {
	                                if (_mask_omit_num==2) _clm1 = $A;
	                                else                   _clm1 = $5;
	                            }
                            
	                            _clm1 += _k mod $5;
	                            draw_sprite_part_(_sprite1,0, _clm1*_FRAME_W1,_row1*_FRAME_H1, _FRAME_W1,_FRAME_H1, _xl1,_yt1);
	                            //_sub_image = (_CLMS*_row1) + _clm1;
	                            //draw_sprite_(_sprite1,_sub_image, _xl1,_yt1);
	                        }
	                        else
	                        {   // put palette in last frame of mask row
	                            draw_sprite_part_(_sprite1,0, $F*_FRAME_W1,$4*_FRAME_H1, _FRAME_W1,_FRAME_H1, _xl1,_yt1);
	                            //draw_sprite_(_sprite1,$3F, _xl1,_yt1);
	                        }
	                    }
	                }
	            }
            
	            _sprite2 = sprite_create_from_surface(_ss_surf, 0,0,_SURF_W,_SURF_H, false,false,0,0);
	            surface_reset_target();
            
	            _str = string_repeat("0",_i<10) + string(_i);
	            //_str = string(_i);
	            //if (_i<10) _str = "0"+_str;
	            sprite_save(_sprite2, 0, "PC_Spritesheet_"+_str+"_"+_char_name+".png");
	            //sprite_save(_sprite2, 0, "PCSpritesheet_"+_str+"_"+_char_name+".png");
	            sprite_delete(_sprite1);
	            sprite_delete(_sprite2);
	        }
	    }
    
	    surface_reset_target();
	    surface_free(_ss_surf);
	    ds_list_destroy(_dl_rows); _dl_rows=undefined;
	    ds_map_destroy(_dm1); _dm1=undefined;
	}
	*/





	/*
	if (0&&keyboard_check_pressed(vk_f7))
	{
	    var _i,_j, _count1;
	    var _val, _val1,_val2,_val3;
	    var _dk, _dk1,_dk2,_dk3;
	    var _creator_name, _char_name;
	    var _sprite;
	    var _color1, _palette;
	    var _pos, _str, _len,_len1,_len2,_len3;
	    var _COUNT1 = val(g.pc.dm_skins[?STR_Set+STR_Count]);
	    var _palette_DEFAULT = '0D362A18'+'0D361618'+'0D36112D';
	    //var _palette_DEFAULT = string_repeat(p.CI_BLK1_,COL_PER_PAL);
	    var _COUNT2 = COL_PER_PAL<<1;
	    var _COUNT3 = string_length(_palette_DEFAULT) div _COUNT2;
    
	    _len1 = 0;
	    _len2 = 0;
	    _len3 = 0;
	    for(_i=0; _i<_COUNT1; _i++)
	    {
	        _dk1 = val(g.pc.dm_skins[?hex_str(_i)+STR_Datakey], STR_undefined);
	        _sprite =  g.pc.dm_skins[?_dk1+STR_Sprite];
	        if(!is_undefined(_sprite)) _len1 = max(_len1, string_length(sprite_get_name(_sprite)));
        
	        _val = g.pc.dm_skins[?hex_str(_i)+STR_Name];
	        if(!is_undefined(_val)) _len2 = max(_len2, string_length(_val));
        
	        _val = g.pc.dm_skins[?hex_str(_i)+STR_Creator];
	        if(!is_undefined(_val)) _len3 = max(_len3, string_length(_val));
	    }
    
    
	    //for(_i=0; _i<1; _i++)
	    for(_i=0; _i<_COUNT1; _i++)
	    {
	        _str = "PC_init_add_spritesheet(";
        
	        _dk1 = val(g.pc.dm_skins[?hex_str(_i)+STR_Datakey], STR_undefined);
	        _sprite =  g.pc.dm_skins[?_dk1+STR_Sprite];
	        if(!is_undefined(_sprite))
	        {
	            _val  = sprite_get_name(_sprite);
	            _str += _val;
	            _str += ",";
	            _str += string_repeat(" ", _len1-string_length(_val));
            
            
	            _str += "'";
	            _val  = val(g.pc.dm_skins[?hex_str(_i)+STR_Name], STR_undefined);
	            _str += _val;
	            _str += "'";
	            _str += ",";
	            _str += string_repeat(" ", _len2-string_length(_val));
            
            
	            _str += "'";
	            _val  = val(g.pc.dm_skins[?hex_str(_i)+STR_Creator], STR_undefined);
	            _str += _val;
	            _str += "'";
	            _str += ",";
	            _str += string_repeat(" ", _len3-string_length(_val));
            
            
	            _str += " ";
	            _val = val(g.pc.dm_skins[?_dk1+STR_Palette], _palette_DEFAULT);
	            for(_j=0; _j<_COUNT3; _j++)
	            {
	                _str += "'";
	                _str += string_copy(_val, (_COUNT2*_j)+1, _COUNT2);
	                _str += "'";
	                if (_j<_COUNT3-1) _str += "+";
	            }
            
            
	            _str += ");";
	            sdm(_str);
	        }
        
	        if!(_i&$3) sdm("");
	    }
	}
	*/




	/* // Convert 1024x1024 spritesheet images to smaller images. Getting rid of unused rows.
	if (0&&keyboard_check_pressed(vk_f7))
	{
	    var _i,_j,_k, _idx, _dk;
	    var _xl1,_yt1, _xl2,_yt2;
	    var _creator_name, _char_name;
	    var _spritesheet1,_spritesheet2;
	    var _color1, _palette;
	    var _pos, _str;
	    var _COLOR1 = c_fuchsia;
	    var _COUNT1 = val(g.pc.dm_spritesheets[?STR_Set+STR_Count]);
	    var _FRAME_W1 = $40;
	    var _FRAME_H1 = $40;
	    var _dl_rows = ds_list_create();
	    ds_list_add(_dl_rows,$0,$1,$2,$3,$5,$6,$7,$8,$9,$E);
	    var _COUNT2 = ds_list_size(_dl_rows);
	    var _SURF_W = _FRAME_W1*$10;
	    var _SURF_H = _FRAME_H1*_COUNT2;
	    var _ss_surf = surface_create(_SURF_W,_SURF_H);
    
	    for(_i=0; _i<1; _i++)
	    //for(_i=1; _i<_COUNT1; _i++)
	    {
	        _dk =       val(g.pc.dm_spritesheets[?hex_str(_i)+STR_Datakey], STR_undefined);
	        _spritesheet1 = g.pc.dm_spritesheets[?_dk+STR_Sprite];
	        if (is_undefined(_spritesheet1)) continue;//_i
        
	        _creator_name = val(g.pc.dm_spritesheets[?hex_str(_i)+STR_Creator], STR_undefined);
	        _creator_name = string_lettersdigits(_creator_name);
	        _char_name    = val(g.pc.dm_spritesheets[?hex_str(_i)+STR_Name],    STR_undefined);
	        _char_name    = string_lettersdigits(_char_name);
        
	        _palette      = g.pc.dm_spritesheets[?_dk+STR_Palette];
        
	        surface_set_target(_ss_surf);
	        draw_clear_alpha(c_black,0);
        
	        for(_j=0; _j<_COUNT2; _j++)
	        {
	            _yt1 = _FRAME_H1 * _dl_rows[|_j];
	            _yt2 = _FRAME_H1 * _j;
	            for(_k=0; _k<$10; _k++)
	            {
	                _xl1 = _FRAME_W1 * _k;
	                _xl2 = _xl1;
                
	                draw_sprite_part_(_spritesheet1,0, _xl1,_yt1, _FRAME_W1,_FRAME_H1, _xl2,_yt2);
	                if (_dl_rows[|_j]==$2) draw_sprite_part_(_spritesheet1,0, _xl1,_FRAME_H1*$4, _FRAME_W1,_FRAME_H1, _xl2,_yt2);
	                //if(!_j && _k==$F)      draw_sprite_part_(_spritesheet1,0, _xl1,_FRAME_H1*$F, _FRAME_W1,_FRAME_H1, _xl2,_yt2);
	            }
	        }
        
	        if(!is_undefined(_palette))
	        {
	            _xl1 = _SURF_W - _FRAME_W1;
	            _yt1 = _SURF_H - _FRAME_H1;
	            for(_j=0; _j<3; _j++)
	            {
	                _yt2 = _yt1 + (3*_j);
	                for(_k=0; _k<3; _k++)
	                {
	                    _pos  = _j * (COL_PER_PAL<<1);
	                    _pos += 2;
	                    _pos += _k<<1;
	                    _pos += 1; // because string
	                    _idx = string_copy(_palette, _pos, 2);
	                    _idx = str_hex(_idx);
	                    _color1 = p.dl_COLOR[|_idx];
                    
	                    _xl2 = _xl1 + (2*_k);
	                    draw_sprite_(spr_1x1_WHT,0, _xl2,_yt2, -1, 2,2, _color1);
	                }
	            }
	        }
        
	        draw_point_colour(        0,        0, _COLOR1);
	        draw_point_colour(_SURF_W-1,        0, _COLOR1);
	        draw_point_colour(        0,_SURF_H-1, _COLOR1);
	        draw_point_colour(_SURF_W-1,_SURF_H-1, _COLOR1);
        
	        _spritesheet2 = sprite_create_from_surface(_ss_surf, 0,0,_SURF_W,_SURF_H, false,false,0,0);
	        surface_reset_target();
	        _str = string(_i);
	        if (_i<10) _str = "0"+_str;
	        sprite_save(_spritesheet2, 0, "PCSpritesheet_"+_str+"_"+_char_name+".png");
	        //sprite_save(_spritesheet2, 0, "PCSpritesheet_"+hex_str(_i)+"_"+_char_name+".png");
	        //sprite_save(_spritesheet2, 0, "PCSpritesheet_"+_creator_name+"_"+_char_name+".png");
	        sprite_delete(_spritesheet2);
	    }
    
	    surface_reset_target();
	    surface_free(_ss_surf);
	    ds_list_destroy(_dl_rows); _dl_rows=undefined;
	}
	*/





	/*
	if (0&&keyboard_check_pressed(vk_f7))
	{
	    var _i,_j;
	    var _xl,_yt, _xl1,_yt1, _xl2,_yt2;
	    var _sprite = 0;
	    var _font_sprite   = 0;
	    var _font_sprite_w = 0;
	    var _font_sprite_h = 0;
	    var _dl_fonts = ds_list_create();
	    ds_list_add(_dl_fonts,spr_Font_Hyrulian,spr_Font1,spr_Font2_1,spr_Font3_1,spr_Font4);
	    var _COUNT1 = ds_list_size(_dl_fonts);
	    var _STR1 = " A B C D E F G H I J K L M N O P Q R S T U V W X Y Z ";
	    //var _STR1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	    var _COUNT2 = string_length(_STR1);
	    var _COUNT3 = _COUNT2;
	    //var _COUNT3 = (_COUNT2<<1) + 1;
	    var _surf_w = 0;
	    var _surf_h = 0;
	    var _surf = surface_create(1,1);
    
    
	    for(_i=0; _i<_COUNT1; _i++)
	    {
	        _font_sprite = _dl_fonts[|_i];
	        _font_sprite_w = sprite_get_width( _font_sprite);
	        _font_sprite_h = sprite_get_height(_font_sprite);
	        _surf_w = _font_sprite_w * _COUNT3;
	        _surf_h = _font_sprite_h + (_font_sprite_h<<1);
	        surface_resize(_surf,_surf_w,_surf_h);
	        surface_set_target(_surf);
	        draw_clear_alpha(c_black,0);
        
	        _xl1 = 0;
	        //_xl1 = _font_sprite_w;
	        _yt1 = _font_sprite_h;
        
	        for(_j=0; _j<_COUNT2; _j++)
	        {
	            _xl2 = _xl1 + (_font_sprite_w*_j);
	            //_xl2 = _xl1 + ((_font_sprite_w<<1) * _j);
	            _yt2 = _yt1;
	            _xl = _xl2;
	            _yt = _yt2;
	            draw_text_(_xl,_yt, string_char_at(_STR1,_j+1), _font_sprite);
	        }
        
	        _sprite = sprite_create_from_surface(_surf, 0,0,_surf_w,_surf_h, false,false,0,0);
	        sprite_save(_sprite, 0, "Font"+hex_str(_i)+".png");
	        sprite_delete(_sprite);
	    }
    
    
	    surface_reset_target();
	    surface_free(_surf);
	    ds_list_destroy(_dl_fonts); _dl_fonts=undefined;
	}
	*/






	/*
	sdm("1:  "+string_repeat(" ",testval1>=0)+string(testval1)+",  $"+hex_str(testval1++));
	sdm("2:  "+string_repeat(" ",testval2>=0)+string(testval2)+",  $"+hex_str(testval2--));
	sdm("--------------------------------------------");
	*/







}
