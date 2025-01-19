/// @description  Challenge_IntermittentPlatformSequence_draw()
function Challenge_IntermittentPlatformSequence_draw() {


	if(!g.rm_brightness 
	&&  HIDDEN_TYPE == TID_HIDE_1&$F )
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	var _i,_j, _x,_y, _w,_h;
	var _val, _spr, _count, _pi;



	if (rm_pal_qual_lit()) _pi = palidx + p.PI_LIT1;
	else                   _pi = palidx + p.PI_DRK1;


	for(_i=0; _i<PLATFORMS; _i++)
	{
	    _x = dg_platform[#_i,2] <<3;
	    _y = dg_platform[#_i,3] <<3;
	    _w = dg_platform[#_i,4] <<3;
	    _h = dg_platform[#_i,5] <<3;
    
    
	    if(!rectInView(_x,_y, _w,_h)) continue; // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
    
    
    
	    switch(dg_platform[#_i,0]) // dg_platform[# 0, _i]: state
	    {
	        // ------------------------------------------------------------
	        // ------------------------------------------------------------
	        case State_SLEEP:{
	        //drawRect(c_red, _x,_y, _w,_h, .8, true);
	        break;}
        
        
        
        
        
        
	        // ------------------------------------------------------------
	        // ------------------------------------------------------------
	        case State_TELL:{
        
	        if!(dg_platform[#_i,1] & $04) break; // timer
        
        
	        if (isVal(dg_platform[#_i,1], 5,6)) _spr = SPR_PLAT_1B;
	        else                                _spr = SPR_PLAT_1C;
	        //drawSprite(_spr, _x,_y, pal_idx);
	        break;}
        
        
        
        
        
        
	        // ------------------------------------------------------------
	        // ------------------------------------------------------------
	        case State_ANIM_IN:{
	                                     _spr = 0;
	        if (dg_platform[#_i,1] < 12) _spr = SPR_PLAT_1C;
	        if (dg_platform[#_i,1] <  9) _spr = SPR_PLAT_1B;
	        if (dg_platform[#_i,1] <  4) _spr = SPR_PLAT_1A; // 1A: Full
        
	        if (_spr)
	        {
	                         _count = dg_platform[#_i,4]>>1;
	            for(_j=0; _j<_count; _j++)
	            {   draw_sprite_(_spr,0, _x+(_j<<4),_y, _pi);  }
	        }
	        break;}
        
        
        
        
        
        
	        // ------------------------------------------------------------
	        // ------------------------------------------------------------
	        case State_FULL:{
        
	        if (dg_platform[#_i,1] >= $40 
	        // || (dg_platform[#_i,1] > $20 && dg_platform[#_i,1] & $10) 
	        ||  dg_platform[#_i,1] &  $08 )
	        {    _spr = SPR_PLAT_1A;  }
	        else _spr = SPR_PLAT_1B;
        
	                     _count = dg_platform[#_i,4]>>1;
	        for(_j=0; _j<_count; _j++)
	        {   draw_sprite_(_spr,0, _x+(_j<<4),_y, _pi);  }
	        break;}
        
        
        
        
        
        
	        // ------------------------------------------------------------
	        // ------------------------------------------------------------
	        case State_ANIM_OUT:{
	                                              _spr = 0;
	        if (dg_platform[#_i,1] > DUR_ANIM-14) _spr = SPR_PLAT_1C;
	        if (dg_platform[#_i,1] > DUR_ANIM-12) _spr = SPR_PLAT_1B;
	        if (dg_platform[#_i,1] > DUR_ANIM-06) _spr = SPR_PLAT_1A;
        
	        if (_spr)
	        {
	                         _count = dg_platform[#_i,4]>>1;
	            for(_j=0; _j<_count; _j++)
	            {   draw_sprite_(_spr,0, _x+(_j<<4),_y, _pi);  }
	        }
	        break;}
	    }
	}







}
