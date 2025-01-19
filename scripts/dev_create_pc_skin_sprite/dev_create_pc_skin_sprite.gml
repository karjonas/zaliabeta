/// @description  dev_create_pc_skin_sprite()
function dev_create_pc_skin_sprite() {


	var _SKIN_COUNT = val(dm_skins[?STR_Set+STR_Count]);
	if (keyboard_check_pressed(vk_f7) 
	&&  _SKIN_COUNT )
	{
	    var _dm2 = ds_map_create();
    
	    var _i,_j,_k,_m,_p, _num;
	    var _val,_val1,_val2,_val3;
	    var _count,_count1,_count2,_count3;
	    var _w,_w1,_w2, _h,_h1,_h2;
	    var _xl,_xl1,_xl2, _xr,_xr1,_xr2, _yt,_yt1,_yt2, _yb,_yb1,_yb2;
	    var _xoff,_yoff;
	    var _dk,_dk1,_dk2,_dk3,_dk4, _dka,_dkb,_dkc,_dkd;
	    var _str,_str1,_str2,_str3;
	    var _sprite, _sub_idx, _color1,_color2, _alpha;
	    var _pixel_found = false;
	    var _W1 = Spritesheet_W;
	    var _H1 = Spritesheet_H;
	    var _xl_min = _W1;
	    var _yt_min = _H1;
	    var _xr_max = 0;
	    var _yb_max = 0;
	    var _max_shield1_frame = 0;
	    var _max_shield2_frame = 0;
	    var _max_sword1_frame = 0;
	    var _max_sword2_frame = 0;
    
	    var _dl1 = ds_list_create();
	    ds_list_add(_dl1,STR_Shield+"01",STR_Shield+"02",STR_Body+"01",STR_Disguise,STR_Sword+"01",STR_Sword+"02",STR_Overworld);
	    var _COUNT2 = ds_list_size(_dl1);
	    var _COUNT3 = $10;
    
	    var _dl_h = ds_list_create();
	    var _dm1 = ds_map_create();
    
	    dev_create_pc_skin_sprite_1();
    
	    var _surf = surface_create(_W1,_H1);
    
	    for(_i=0; _i<_SKIN_COUNT; _i++) // each skin
	    {
	        _dk1 = dm_skins[?hex_str(_i)+STR_Datakey];
	        if(!is_undefined(_dk1))
	        {
	            _sprite = dm_skins[?_dk1+STR_Sprite];
	            if(!is_undefined(_sprite))
	            {
	                for(_j=0; _j<_COUNT2; _j++) // _dl1 ("Shield01","Shield02","Body01","Disguise","Sword01","Sword02")
	                {
	                    _dka = _dl1[|_j];
	                    for(_k=0; _k<_COUNT3; _k++) // frame
	                    {
	                        if (_dka==STR_Disguise 
	                        &&  _k==_COUNT3-1 )
	                        {   // Palette frame
	                            continue;//_k
	                        }
                        
	                        _dkb = _dka;
	                        if (_dka==STR_Disguise)
	                        {
	                            if (_k<$5) _dkb += STR_Body;
	                            else       _dkb += STR_Head+hex_str(_k div $5);
	                            _dkc = hex_str(_k mod $5);
	                        }
	                        else
	                        {
	                            _dkc = hex_str(_k);
	                        }
                        
	                        _dk2  = _dk1; // _CHAR_NAME+"-"+_CREATOR
	                        _dk2 += _dkb; // layer dk ("Shield01","Shield02","Body01","Disguise","Sword01","Sword02")
	                        _dk2 += _dkc; // frame (00-0F)
	                        if (is_undefined(dm_skins[?_dk2+"_xoff"])) continue;//_k
	                        //if(!val(_dm2[?_dk2])) continue;//_k
                        
	                        _xl = _W1;
	                        _xr = -1;
	                        _yt = _H1;
	                        _yb = -1;
	                        //_surf = surface_create(Spritesheet_W,Spritesheet_H);
	                        surface_set_target(_surf);
	                        draw_clear_alpha(c_black,0);
	                        _sub_idx = (_j*_COUNT3) + _k;
	                        draw_sprite_(_sprite,_sub_idx, _W1>>1,_H1>>1);
	                        //'Rygar-Crim'+'_Overworld0F'
	                        _pixel_found = false;
	                        if(!is_undefined(dm_skins[?_dk2+"_xoff"]))
	                        {
	                            _pixel_found = true;
	                            _xl = val(dm_skins[?_dk2+"_xoff"]);
	                            _yt = val(dm_skins[?_dk2+"_yoff"]);
	                            _w  = val(dm_skins[?_dk2+"_w"]);
	                            _h  = val(dm_skins[?_dk2+"_h"]);
	                            _xr = _xl + _w;
	                            _yb = _yt + _h;
	                        }
	                        else
	                        {
	                            for(_m=$08; _m<_H1; _m++) // y
	                            {
	                                for(_p=$04; _p<_W1; _p++) // x
	                                {
	                                    _color1 = draw_getpixel_ext(_p,_m);
	                                    _alpha = (_color1>>$18)&$FF;
	                                    if (_alpha)
	                                    {
	                                        _pixel_found = true;
	                                        _xl = min(_xl,_p);
	                                        if (_yt>=_H1) _yt = _m;
	                                        break;//_p
	                                    }
	                                }
	                            }
                            
	                            for(_m=_H1-1; _m>=$08; _m--) // y
	                            {
	                                for(_p=_W1-1; _p>=$04; _p--) // _x
	                                {
	                                    _color1 = draw_getpixel_ext(_p,_m);
	                                    _alpha = (_color1>>$18)&$FF;
	                                    if (_alpha)
	                                    {
	                                        _pixel_found = true;
	                                        _xr = max(_xr,_p+1);
	                                        if(!_yb) _yb = _m+1;
	                                        break;//_p
	                                    }
	                                }
	                            }
	                        }
                        
	                        if (_pixel_found 
	                        &&  _xl<_W1 
	                        &&  _xr 
	                        &&  _yt<_H1 
	                        &&  _yb )
	                        {
	                            _dk = _dk1+STR_Sprite;
	                            _num = val(_dm1[?_dk+STR_Count])+1;
	                            _dm1[?_dk+STR_Count] = _num;
	                            _dm1[?_dk+hex_str(_num)+STR_Datakey+"A"] = _dk2;
	                            _dm1[?_dk+hex_str(_num)+STR_Datakey+"B"] = _dkb+_dkc;
                            
	                            _dk = STR_Sprite;
	                            _num = val(_dm1[?_dk+STR_Count])+1;
	                            _dm1[?_dk+STR_Count] = _num;
                            
	                            _dk3 = STR_Sprite+hex_str(_num);
	                            _dm1[?_dk3+STR_Datakey] = _dk2;
	                            _dm1[?_dk2+STR_Datakey] = _dk3;
                            
	                            _dm1[?_dk2+STR_Sprite] = _sprite;
	                            _dm1[?_dk2+STR_Sprite+"_subidx"] = _sub_idx;
	                            _dm1[?_dk3+STR_Sprite] = _sprite;
	                            _dm1[?_dk3+STR_Sprite+"_subidx"] = _sub_idx;
                            
	                            _w = _xr-_xl;
	                            _h = _yb-_yt;
	                            _dm1[?_dk2+"_xoff"] = _xl;
	                            _dm1[?_dk2+"_yoff"] = _yt;
	                            _dm1[?_dk2+"_w"] = _w;
	                            _dm1[?_dk2+"_h"] = _h;
	                            _xl_min = min(_xl_min,_xl);
	                            _yt_min = min(_yt_min,_yt);
	                            _xr_max = max(_xr_max,_xr);
	                            _yb_max = max(_yb_max,_yb);
	                            switch(_dka){
	                            case STR_Shield+"01":{_max_shield1_frame=max(_max_shield1_frame,_k); break;}
	                            case STR_Shield+"02":{_max_shield2_frame=max(_max_shield2_frame,_k); break;}
	                            case STR_Sword+"01":{_max_sword1_frame=max(_max_sword1_frame,_k); break;}
	                            case STR_Sword+"02":{_max_sword2_frame=max(_max_sword2_frame,_k); break;}
	                            }
	                            //sdm(hex_str(_num)+": "+_dk2+". _w $"+hex_str(_w)+" _h $"+hex_str(_h));
                            
	                            _dk = "_h"+hex_str(_h);
	                            _num = val(_dm1[?_dk+STR_Count])+1;
	                            _dm1[?_dk+STR_Count] = _num;
	                            _dk4 = _dk+hex_str(_num);
	                            _dm1[?_dk4+STR_Datakey] = _dk2;
	                            if (ds_list_find_index(_dl_h,_h)==-1)
	                            //if (_num==1)
	                            {
	                                ds_list_add(_dl_h,_h);
	                                //_dm1[?_dk+"_xr"] = 0;
	                                //_dm1[?_dk+"_yb"] = 0;
                                
	                                _dk = "_h";
	                                _num = val(_dm1[?_dk+STR_Count])+1;
	                                _dm1[?_dk+STR_Count] = _num;
	                                _dk4 = "_h"+hex_str(_num);
	                                _dm1[?_dk4+"_h"] = _h;
	                                _dm1[?_dk4+STR_Datakey] = _dk2;
	                            }
	                        }
                        
	                        surface_reset_target();
	                    }
	                }
	            }
	        }
	    }
    
    
    
	    /*
	    sdm("");
	    sdm("_xl_min $"+hex_str(_xl_min)+", _yt_min $"+hex_str(_yt_min)+", _xr_max $"+hex_str(_xr_max)+", _yb_max $"+hex_str(_yb_max));
	    sdm("_max_shield1_frame $"+hex_str(_max_shield1_frame)+", _max_shield2_frame $"+hex_str(_max_shield2_frame)+", _max_sword1_frame $"+hex_str(_max_sword1_frame)+", _max_sword2_frame $"+hex_str(_max_sword2_frame));
	    sdm("");
	    */
	    var _Area_W = 2048;
	    var _Area_H = 2048;
	    var _PAD1 = 1;
	    var _SPRITE_COUNT = val(_dm1[?STR_Sprite+STR_Count]);
	    //sdm("_SPRITE_COUNT $"+hex_str(_SPRITE_COUNT)+" ("+string(_SPRITE_COUNT)+")");
	    _xl = _PAD1;
	    _xr = _xl;
	    _yt = _PAD1;
	    _yb = _yt;
	    ds_list_sort(_dl_h,false);
	    surface_resize(_surf, _Area_W,_Area_H);
	    surface_set_target(_surf);
	    draw_clear_alpha(c_black,0);
	    var          _H_COUNT = ds_list_size(_dl_h);
	    for(_i=0; _i<_H_COUNT; _i++) // each sprite height
	    {
	        _h = _dl_h[|_i];
	        for(_j=0; _j<_SPRITE_COUNT; _j++) // find each sprite with this height
	        {
	            _dk2 = _dm1[?STR_Sprite+hex_str(_j+1)+STR_Datakey];
	            if(!is_undefined(_dk2) 
	            && !val(_dm1[?_dk2+STR_Placed]) 
	            &&  val(_dm1[?_dk2+"_h"])==_h )
	            {
	                _w = val(_dm1[?_dk2+"_w"]);
	                _sprite = val(_dm1[?_dk2+STR_Sprite]);
	                if (_w 
	                &&  _sprite )
	                {
	                    _xr += _w;
	                    _xl  = _xr - _w;
	                    if (_xl<=_PAD1 
	                    ||  _xr>_Area_W-_PAD1 )
	                    {
	                        _yb += _h;
	                        _yb += _PAD1;
	                        _xl  = _PAD1;
	                        _xr  = _xl + _w;
	                    }
	                    _yt = _yb - _h;
                    
	                    _sub_idx = val(_dm1[?_dk2+STR_Sprite+"_subidx"]);
	                    _xoff = val(_dm1[?_dk2+"_xoff"]);
	                    _yoff = val(_dm1[?_dk2+"_yoff"]);
	                    draw_sprite_part_(_sprite,_sub_idx, _xoff,_yoff, _w,_h, _xl,_yt);
	                    _dm1[?_dk2+STR_Placed] = true;
	                    _dm1[?_dk2+STR_Placed+"_xl"] = _xl;
	                    _dm1[?_dk2+STR_Placed+"_yt"] = _yt;
                    
	                    _xr += _PAD1;
	                }
	            }
	        }
        
	        if(0)
	        {
	            if (_Area_W-_xr>=Spritesheet_W 
	            &&  ds_list_find_index(_dl_h,_h>>1)!=-1 )
	            {
	                _count1 = 0;
	                _h1 = _h>>1;
	                _xl  = _xr;
	                _xl1 = _xl;
	                _xr1 = _xl1;
	                _yt1 = _yt;
	                _yb1 = _yt1 + _h1;
	                for(_j=0; _j<_SPRITE_COUNT; _j++) // find each sprite with this height
	                {
	                    _dk2 = _dm1[?STR_Sprite+hex_str(_j+1)+STR_Datakey];
	                    if(!is_undefined(_dk2) 
	                    && !val(_dm1[?_dk2+"_Placed"]) 
	                    &&  val(_dm1[?_dk2+"_h"])==_h1 )
	                    {
	                        _w = val(_dm1[?_dk2+"_w"]);
	                        _sprite = val(_dm1[?_dk2+STR_Sprite]);
	                        if (_w 
	                        &&  _sprite )
	                        {
	                            _xr1 += _w;
	                            _xl1  = _xr1 - _w;
	                            if (_xr1>_Area_W)
	                            {
	                                _count1++;
	                                if (_count1>=2) break;//_j
	                                _yb1 += _h1;
	                                _xl1 = _xl;
	                                _xr1 = _xl1 + _w;
	                            }
	                            _yt1 = _yb1 - _h1;
                            
	                            _sub_idx = val(_dm1[?_dk2+STR_Sprite+"_subidx"]);
	                            _xoff = val(_dm1[?_dk2+"_xoff"]);
	                            _yoff = val(_dm1[?_dk2+"_yoff"]);
	                            draw_sprite_part_(_sprite,_sub_idx, _xoff,_yoff, _w,_h, _xl1,_yt1);
	                            _dm1[?_dk2+STR_Placed] = true;
	                            _dm1[?_dk2+STR_Placed+"_xl"] = _xl1;
	                            _dm1[?_dk2+STR_Placed+"_yt"] = _yt1;
	                        }
	                    }
	                }
                
	                _xl = 0;
	                _xr = _xl;
	                _yt = _yb;
	                _yb = _yt;
	            }
	        }
	    }
    
	    /*
	    var _result_sprite = sprite_create_from_surface(_surf, 0,0, _Area_W,_yb, false,false, 0,0);
	    sprite_save(_result_sprite,0, "PC_Spritesheet_01"+".png");
	    sprite_delete(_result_sprite);
	    */
	    surface_reset_target();
	    surface_free(_surf);
    
    
	    sdm("");
	    for(_i=0; _i<_SKIN_COUNT; _i++) // each skin
	    {
	        _dk1 = dm_skins[?hex_str(_i)+STR_Datakey];
	        if(!is_undefined(_dk1))
	        {
	            _str  = "_dk1 = '";
	            _str += _dk1;
	            _str += "';";
	            _str += " // ------------------------------------";
	            sdm(_str);
	            sdm("_skin_idx++;");
	            sdm("dm_skins[?hex_str(_skin_idx)+STR_Datakey] = _dk1;");
	            sdm("dm_skins[?hex_str(_skin_idx)+STR_Name]    = '"+val(dm_skins[?hex_str(_i)+STR_Name])+"';");
	            sdm("dm_skins[?hex_str(_skin_idx)+STR_Creator] = '"+val(dm_skins[?hex_str(_i)+STR_Creator])+"';");
            
	            // palette
	            _val = val(dm_skins[?hex_str(_i)+STR_Palette], "0D362A18"+"0D361618"+"0D36112D")
	            _str  = "dm_skins[?hex_str(_skin_idx)+STR_Palette] = ";
	            _count1 = string_length(_val)>>3;
	            for(_j=0; _j<_count1; _j++)
	            {
	                _str += "'"+string_copy(_val, (_j<<3)+1, 8)+"'";
	                if (_j<_count1-1) _str += "+";
	            }
	            _str += ";";
	            sdm(_str); // palette
            
	            _count1 = val(_dm1[?_dk1+STR_Sprite+STR_Count]);
	            for(_j=0; _j<_count1; _j++) // 
	            {
	                _dk = _dk1+STR_Sprite+hex_str(_j+1)+STR_Datakey;
	                _dk2 = _dm1[?_dk+"A"];
	                _dk3 = _dm1[?_dk+"B"];
	                if(!is_undefined(_dk2) 
	                && !is_undefined(_dk3) 
	                &&  val(_dm1[?_dk2+STR_Placed]) )
	                {
	                    sdm("          _dk2 = _dk1+'"+_dk3+"';");
	                    sdm("dm_skins[?_dk2+STR_Placed+'_xl'] = $"+hex_str(val(_dm1[?_dk2+STR_Placed+"_xl"]))+";");
	                    sdm("dm_skins[?_dk2+STR_Placed+'_yt'] = $"+hex_str(val(_dm1[?_dk2+STR_Placed+"_yt"]))+";");
	                    sdm("dm_skins[?_dk2+'_xoff']          = $"+hex_str(val(_dm1[?_dk2+"_xoff"]))+";");
	                    sdm("dm_skins[?_dk2+'_yoff']          = $"+hex_str(val(_dm1[?_dk2+"_yoff"]))+";");
	                    sdm("dm_skins[?_dk2+'_w']             = $"+hex_str(val(_dm1[?_dk2+"_w"]))+";");
	                    sdm("dm_skins[?_dk2+'_h']             = $"+hex_str(val(_dm1[?_dk2+"_h"]))+";");
	                }
	            }
	        }
	        sdm("");
	    }
    
    
	    ds_list_destroy(_dl1); _dl1=undefined;
	    ds_list_destroy(_dl_h); _dl_h=undefined;
	    ds_map_destroy(_dm1); _dm1=undefined;
	    ds_map_destroy(_dm2); _dm2=undefined;
	}







}
