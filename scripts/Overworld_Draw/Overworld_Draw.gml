/// @description  Overworld_Draw()
function Overworld_Draw() {


	var _C1 = g.room_type=="C" && !exit_grid_xy;
	var _A1 = g.room_type=="A" && g.PAUSE_MENU.canDrawSections>g.PAUSE_MENU.ANIM_FRAMES_DEF;


	if(!_C1 
	&& !_A1 )
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	var _ALLOW_PAUSE_BUFFERING=true;
	var _C2 = _ALLOW_PAUSE_BUFFERING && g.overworld_paused;
	if(!_ALLOW_PAUSE_BUFFERING 
	&&  g.overworld_paused)
	{
	    var _TEXT = "PAUSED!";
	    draw_text_(viewXC()-((string_length(_TEXT)<<3)>>1), viewYC()-4, _TEXT);
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}











	// -------------------------------------------------------------------
	// -------------------------------------------------------------------
	var _DEBUG_ENC = DEV&&0;

	var _i,_j,_k, _idx,_idx1,_idx2, _val,_val1,_val2, _str, _count1,_count2;
	var _x,_y, _x1,_y1, _xoff,_yoff, _xscale,_yscale, _w,_h;
	var _clm,_row, _ow_clm,_ow_row;
	var _spr, _pi, _text, _font_spr;

	var _tid, _tsrc, _anim;

	//var _ADD_MOVE_OFFSET = true;
	var _ADD_MOVE_OFFSET = false;

	//  T_SIZE      is $8 or $10
	// _OFF         is $7 or $F
	//  SHIFT       is  3 or 4
	var _OFF = T_SIZE-1;

	var _SIGN_X = sign(move_x);
	var _SIGN_Y = sign(move_y);

	var _PC_X = ow_pc_xy(0); // pc view x
	var _PC_Y = ow_pc_xy(1); // pc view y

	//  _pcrc   =   pcrc;
	var _pc_clm = ( pcrc>>0)&$FF;
	var _pc_row = ( pcrc>>8)&$FF;
	var _ow_x   = (_pc_clm<<SHIFT) + (T_SIZE>>1);
	var _ow_y   = (_pc_row<<SHIFT) + (T_SIZE>>1);
	    _ow_x  -= DRAW_W_;
	    _ow_y  -= DRAW_H_;
	var _owrc;
	// -------------------------------------------------------------------
	// -------------------------------------------------------------------
	/*// *** This has been moved to Overworld_Step because it doesn't need to be in Draw ***
	if (_C1 
	&& !g.overworld_paused 
	&&  (move_x!=0 || move_y!=0) ) // if movement happened this frame
	{
	    tile_layer_shift(Tile_DEPTH1, move_x,move_y);
    
	    if (g.anarkhyaOverworld_MAIN 
	    &&  g.anarkhyaOverworld_use )
	    {
	        tile_layer_shift(anarkhya_TILE_DEPTH1, move_x,move_y);
	        tile_layer_shift(anarkhya_TILE_DEPTH2, move_x,move_y);
	    }
    
	    // if lined up with the grid this frame after moving, relative to T_SIZE
	    if!(dest_dist&_OFF) Overworld_refresh_tiles(_ow_x,_ow_y);
	}
	*/


	if (0&&_C1 
	&& !g.overworld_paused 
	&&  (move_x!=0 || move_y!=0) ) // if movement happened this frame
	{
	    Overworld_Draw_debug_1a(); // Output existing tile counts
	}
	// -------------------------------------------------------------------
	// -------------------------------------------------------------------
	// -------------------------------------------------------------------



	// -------------------------------------------------------------------
	if (g.room_type=="C" 
	&&  f.items&ITM_BOOT )
	{
	    Overworld_Draw_BootsTileHint();
	}








	// -------------------------------------------------------------------
	if (0&&g.room_type=="C")
	{
	    for(_i=1; _i<=7; _i++)
	    {
	        if (val(f.dm_quests[?STR_Dungeon+hex_str(_i)+"_FullCleared"]))
	        {
	            _owrc = g.dm_dungeon[?STR_Dungeon+hex_str(_i)+STR_OWRC];
	            if(!is_undefined(_owrc))
	            {
	                _x  = ((_owrc>>0)&$FF) <<SHIFT;
	                _y  = ((_owrc>>8)&$FF) <<SHIFT;
	                _x  = _PC_X + (_x-pc_ow_x);
	                _y  = _PC_Y + (_y-pc_ow_y);
	                if (_ADD_MOVE_OFFSET)
	                {
	                    // This is to adjust an unintended 1 pixel offset while pc is moving.
	                    _x += -move_x;
	                    _y += -move_y;
	                }
                
	                //_x  = (_x>>SHIFT)<<SHIFT;
	                //_y  = (_y>>SHIFT)<<SHIFT;
                
	                if (rectInView(_x+T_SIZE,_y+T_SIZE, T_SIZE,T_SIZE))
	                {
	                    draw_background_part(ts_Overworld_1_1_2, $80,$90, T_SIZE,T_SIZE, _x,_y);
	                }
	            }
	        }
	    }
	}








	// -------------------------------------------------------------------
	if (_C1) // _C1:  g.room_type=="C" && !exit_grid_xy
	{
	    var _item_id;
    
    
	    // ITM_MAP1,ITM_MAP2.   Kakusu, HP/MP containers, Life dolls
	    // -------------------------------------------------------------------
	    for(_i=ds_grid_width(dg_map)-1; _i>=0; _i--)
	    {
	        //_item_id   =   dg_map[#_i,$07];
	        _item_type =   dg_map[#_i,$08];
        
	        _x  = _PC_X + (dg_map[#_i,$02]-pc_ow_x); // 2: ow x
	        _y  = _PC_Y + (dg_map[#_i,$03]-pc_ow_y); // 3: ow y
        
	        if (_ADD_MOVE_OFFSET)
	        {
	            // This is to adjust an unintended 1 pixel offset while pc is moving.
	            _x += -move_x;
	            _y += -move_y;
	        }
        
        
	        if(!rectInView((_x>>SHIFT)<<SHIFT,(_y>>SHIFT)<<SHIFT, T_SIZE,T_SIZE))
	        {
	            continue;//_i
	        }
        
        
	        _spr  = spr_0;
	        _yoff = 0;
	        _pi   = PI_MOB_ORG;
        
	        switch(_item_type)
	        {   //-------------------------------------------
	            case STR_Kakusu:{
	            if (g.counter1&$10) _spr=spr_Slime_Small_1a_1;
	            else                _spr=spr_Slime_Small_1b_1;
	            _pi = PI_MOB_ORG;
	            _yoff = -4; // bc graphic is aligned to bottom of img
	            break;}
            
	            //-------------------------------------------
	            case STR_HEART:{
	                           _val = $28; // timing for beating heart anim
	            if (g.counter0&_val==_val) _spr=spr_Heart_1a;
	            else                       _spr=spr_Heart_1b;
	            _pi = PI_MOB_RED;
	            break;}
            
	            //-------------------------------------------
	            case STR_MAGIC:{
	            //sdm("_x $"+hex_str(_x)+" _y $"+hex_str(_y)+", _PC_X $"+hex_str(_PC_X)+" _PC_Y $"+hex_str(_PC_Y)+", dg_map[#_i,$02] $"+hex_str(dg_map[#_i,$02])+" dg_map[#_i,$03] $"+hex_str(dg_map[#_i,$03])+", pc_ow_x $"+hex_str(pc_ow_x)+" pc_ow_y $"+hex_str(pc_ow_y));
	            switch(get_bottle_bubbling_frame()){
	            case 0:{_spr=spr_Bottle_6a_Liquid_1a; break;}
	            case 1:{_spr=spr_Bottle_6a_Liquid_1b; break;}
	            case 2:{_spr=spr_Bottle_6a_Liquid_1c; break;}
	            }
	            _pi = PI_MOB_ORG;
	            _yoff = -1;
	            draw_sprite_(_spr,0, _x,_y+_yoff, _pi); // bubbling liquid
	            _spr=spr_Bottle_6a; // empty bottle
	            break;}
            
	            //-------------------------------------------
	            case STR_1UP:{
	            if (g.counter1&$10) _spr=spr_Item_LifeDoll_1a;
	            else                _spr=spr_Item_LifeDoll_1b;
	            _pi = PI_PC_1;
	            break;}
            
	            //-------------------------------------------
	            case STR_KEY:{
	            _spr = val(g.dm_ITEM[?STR_KEY+STR_Sprite], _spr);
	            _pi = PI_MOB_ORG;
	            break;}
	        }
        
	        draw_sprite_(_spr,0, _x,_y+_yoff, _pi);
	    }
    
    
    
    
    
    
    
    
    
    
	    // BAIT
	    // -------------------------------------------------------------------
	    if (MEAT_timer)
	    {
	        _x  = _PC_X + (MEAT_ow_x-pc_ow_x);
	        _y  = _PC_Y + (MEAT_ow_y-pc_ow_y);
        
	        if (_ADD_MOVE_OFFSET)
	        {
	            // This is to adjust an unintended 1 pixel offset while pc is moving.
	            _x += -move_x;
	            _y += -move_y;
	        }
	        draw_sprite_(MEAT_SPR,0, _x,_y, PI_MOB_ORG);
	    }
    
    
    
    
    
    
    
    
    
	    // Encounter Enemies
	    // -------------------------------------------------------------------
	    if (_DEBUG_ENC){ // debug draw enc trigger hb
	        for(_i=ds_grid_width(dg_enc_inst)-1; _i>=0; _i--){
	            if(!dg_enc_inst[#_i,0]) continue;
	            _x = _PC_X - (ENC_TRIG_HB_W>>1);
	            _y = _PC_Y - (ENC_TRIG_HB_H>>1);
	            draw_sprite_(spr_1x1_WHT,0, _x,_y, -1, ENC_TRIG_HB_W,ENC_TRIG_HB_H, c_orange);
	            break;//_i
	        }
	    }
    
    
    
	    for(_i=ds_grid_width(dg_enc_inst)-1; _i>=0; _i--)
	    {
	        if(!dg_enc_inst[#_i,0]) continue;
        
        
	        _idx = bitNum(dg_enc_inst[#_i,0])-1;
        
	        _x = dg_enc_inst[#_i,1]; // enc obj center x
	        _y = dg_enc_inst[#_i,2]; // enc obj center y
        
	        if (_idx==FAIRY_IDX) _pi = PI_MOB_ORG;
	        else                 _pi = ENC_PI;
        
	        _spr = dg_ENC_SPR[#_idx,sign(g.counter1&$8)];
	        draw_sprite_(_spr,0, _x,_y, _pi);
        
        
	        if (_DEBUG_ENC) drawPointCross(_x,_y, c_aqua,c_fuchsia); // draw obj center
	    }
    
    
    
    
    
    
    
    
    
	    // PC
	    // -------------------------------------------------------------------
	    if (pcrc!=Warp_owrc 
	    || !isVal(Warp_state, Warp_state_VANISH,Warp_state_OWRC_CHANGE,Warp_state_APPEAR) )
	    {
	        drawX = _PC_X;
	        drawY = _PC_Y;
	        // Calculate this frame's offsets
	        drawX_off = 0;
	        drawY_off = PC_DRAWY_OFF; // PC_DRAWY_OFF = -2
	        // Add this frame's offsets
	        drawX += drawX_off;
	        drawY += drawY_off;
        
	        _x = drawX;
	        _y = drawY;
        
	        with(g.pc)
	        {
	            _idx = val(dm_skins[?STR_Current+STR_Idx]);
	            if(!val(dm_skins[?hex_str(_idx)+"_source_is_file"]))
	            {
	                switch(PCSkins_SYS_VER)
	                {
	                    case 1:{
	                    draw_sprite_(Skin_image,$60|(other.pc_sprite_idx&$F), _x,_y, PI_PC_1);
	                    break;}
                    
                    
                    
	                    case 2:{
	                    var _dk = val(dm_skins[?hex_str(_idx)+STR_Datakey]);
	                    _dk += STR_Overworld+hex_str(other.pc_sprite_idx&$F);
	                    _w = dm_skins[?_dk+"_w"];
	                    if(!is_undefined(_w))
	                    {
	                        _h   = val(dm_skins[?_dk+"_h"]);
	                        _xl2 = val(dm_skins[?_dk+STR_Placed+"_xl"]); // relative to spr_PCSkins_Full01
	                        _yt2 = val(dm_skins[?_dk+STR_Placed+"_yt"]); // relative to spr_PCSkins_Full01
	                        _xl1 = _x - (_w>>1);
	                        _yt1 = _y - (_h>>1);
	                        draw_sprite_part_(Skin_image,0, _xl2,_yt2, _w,_h, _xl1,_yt1, PI_PC_1);
	                    }
	                    break;}
	                }
	            }
	            else
	            {
	                var _Sheet_X = Spritesheet_W * other.pc_sprite_idx;
	                var _Sheet_Y = Spritesheet_H * $E;
	                _x -= Spritesheet_W>>1;
	                _y -= Spritesheet_H>>1;
	                draw_sprite_part_(Skin_image,0, _Sheet_X,_Sheet_Y, Spritesheet_W,Spritesheet_H, _x,_y, PI_PC_1);
	            }
	        }
	    }
    
    
    
    
    
    
    
	    // WARP
	    // -------------------------------------------------------------------
	    if (Warp_state)
	    {
	        _spr=0;
	        _xscale=1;
	        switch(Warp_state)
	        {   // -----------------------------------------
	            case Warp_state_FLUTE:{
	            if (flute_timer&$1)
	            {
	                _spr=spr_Tornado01;
	                _xscale=sign_(flute_timer&$10);
	            }
	            break;}
            
	            // -----------------------------------------
	            case Warp_state_SPIN_UP:{
	            _spr=spr_Tornado01;
	            // Duration: $40
	                 if (Warp_timer<$08) _xscale=sign_(Warp_timer&$1);
	            else if (Warp_timer<$14) _xscale=sign_(Warp_timer&$2);
	            else if (Warp_timer<$28) _xscale=sign_(Warp_timer&$4);
	            else                     _xscale=sign_(Warp_timer&$8);
	            /* // Duration: $A0
	                 if (Warp_timer<$18) _xscale=sign_(Warp_timer&$1);
	            else if (Warp_timer<$38) _xscale=sign_(Warp_timer&$2);
	            else if (Warp_timer<$68) _xscale=sign_(Warp_timer&$4);
	            else                     _xscale=sign_(Warp_timer&$8);
	            */
	            break;}
            
	            // -----------------------------------------
	            //case Warp_state_VANISH:{break;}
	            //case Warp_state_APPEAR:{break;}
            
	            // -----------------------------------------
	            case Warp_state_SPIN_DOWN:{
	            if (Warp_timer>$18 
	            ||  Warp_timer&$1 )
	            {
	                _spr=spr_Tornado01;
	            }
	            // Duration: $60
	                 if (Warp_timer>Warp_DURATION1-$0C) _xscale=sign_(Warp_timer&$1);
	            else if (Warp_timer>Warp_DURATION1-$24) _xscale=sign_(Warp_timer&$2);
	            else if (Warp_timer>Warp_DURATION1-$40) _xscale=sign_(Warp_timer&$4);
	            else                                    _xscale=sign_(Warp_timer&$8);
	            /* // Duration: $70
	                 if (Warp_timer>Warp_DURATION1-$10) _xscale=sign_(Warp_timer&$1);
	            else if (Warp_timer>Warp_DURATION1-$26) _xscale=sign_(Warp_timer&$2);
	            else if (Warp_timer>Warp_DURATION1-$48) _xscale=sign_(Warp_timer&$4);
	            else                                    _xscale=sign_(Warp_timer&$8);
	            */
	            /* // Duration: $A0
	                 if (Warp_timer>Warp_DURATION1-$18) _xscale=sign_(Warp_timer&$1);
	            else if (Warp_timer>Warp_DURATION1-$38) _xscale=sign_(Warp_timer&$2);
	            else if (Warp_timer>Warp_DURATION1-$68) _xscale=sign_(Warp_timer&$4);
	            else                                    _xscale=sign_(Warp_timer&$8);
	            */
	            break;}
	        }
        
	        if (_spr 
	        ||  (Warp_state==Warp_state_VANISH && Warp_timer>Warp_DURATION3-$10) 
	        ||  (Warp_state==Warp_state_APPEAR && Warp_timer<$10) )
	        {
	            _x  = ((Warp_owrc>>0)&$FF) <<SHIFT;
	            _y  = ((Warp_owrc>>8)&$FF) <<SHIFT;
	            _x += T_SIZE>>1;
	            _y += T_SIZE>>1;
	            _x  = _PC_X + (_x-pc_ow_x);
	            _y  = _PC_Y + (_y-pc_ow_y);
            
	            if (_ADD_MOVE_OFFSET)
	            {
	                // This is to adjust an unintended 1 pixel offset while pc is moving.
	                _x += -move_x;
	                _y += -move_y;
	            }
            
	            if (_spr)
	            {
	                _pi = PI_MOB_ORG;
	                _pi = p.dg_PI_SEQ[#0,(Warp_timer>>2)&$3] + p.PI_LIT1;
	                draw_sprite_(_spr,0, _x,_y, _pi, _xscale);
                
	                if (Warp_state==Warp_state_FLUTE 
	                ||  Warp_state==Warp_state_SPIN_UP )
	                {
	                    _text = dg_Warp_DESTINATIONS[#Warp_destination_num-1,2];
	                    _count1 = string_length(_text);
	                    _font_spr = spr_Font1;
	                    _val = sprite_get_width(_font_spr);
	                    _x -= (_val*_count1)>>1;
	                    _y -= $A+_val;
	                    draw_text_(_x,_y, _text, _font_spr, PI_GUI_1);
	                }
	            }
	            else
	            {
	                _val  = Warp_timer - Warp_state==Warp_state_VANISH;
	                _val &= $F;
	                     if (_val>$A) _spr=spr_pop01_1; // $B-$F
	                else if (_val>$6) _spr=spr_pop01_2; // $7-$A
	                else              _spr=spr_pop01_3; // $0-$6
	                draw_sprite_(_spr,0, _x,_y, PI_GUI_1);
	            }
	        }
	    }
    
    
    
    
    
    
    
	    if (_ALLOW_PAUSE_BUFFERING 
	    &&  g.overworld_paused)
	    {
	        var _TEXT = "PAUSED!";
	        draw_text_(viewXC()-((string_length(_TEXT)<<3)>>1), viewYC()-4, _TEXT);
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	}









	// -------------------------------------------------------------------
	// -------------------------------------------------------------------
	// -------------------------------------------------------------------
	if (_C1  // _C1:  g.room_type=="C" && !exit_grid_xy
	&&  g.hidden_item_exits_help )
	{
	        hidden_exits_help_counter = (hidden_exits_help_counter+1)&$FF;
	    if (hidden_exits_help_counter&$20)
	    {
	        if(!(hidden_exits_help_counter&$1F))
	        {
	            hidden_exits_help_xoff=choose(0,1,-1);
	            hidden_exits_help_yoff=choose(0,1,-1);
	        }
        
	        _val=hidden_exits_help_counter&$1F;
	        if ( _val<$18 
	        || !(_val&$1) ) // fade effect
	        {
	            for(_i=ds_grid_width(dg_hidden_exits_help)-1; _i>=0; _i--)
	            {
	                _clm=dg_hidden_exits_help[#_i,0];
	                _row=dg_hidden_exits_help[#_i,1];
                
	                _x  = ow_pc_xy(0) + ((_clm<<4)-pc_ow_x);
	                _y  = ow_pc_xy(1) + ((_row<<4)-pc_ow_y);
                
	                if (_ADD_MOVE_OFFSET)
	                {
	                    // This is to adjust an unintended 1 pixel offset while pc is moving.
	                    _x += -move_x;
	                    _y += -move_y;
	                }
                
	                _x += 8;
	                _y += 8;
	                //if(!_val) sdm("_x $"+hex_str(_x)+", _y $"+hex_str(_y));
	                if (rectInView((_x>>4)<<4,(_y>>4)<<4, T_SIZE,T_SIZE))
	                {
	                    _x += hidden_exits_help_xoff;
	                    _y += hidden_exits_help_yoff;
                    
	                         if (_val<$08) _spr=spr_pop01_1;
	                    else if (_val<$10) _spr=spr_pop01_2;
	                    else               _spr=spr_pop01_3;
	                    _xscale=1;
	                    _yscale=1;
	                    if (_val>=$10)
	                    {
	                        if (_val&$04) _xscale=-1;
	                        if (_val&$08) _yscale=-1;
	                    }
                    
	                    draw_sprite_(_spr,0, _x,_y, -1, _xscale,_yscale);
	                }
	            }
	        }
	    }
	    else
	    {
	        if(!(hidden_exits_help_counter&$1F) 
	        && !irandom($1) )
	        {
	            hidden_exits_help_counter = (hidden_exits_help_counter+$10)&$FF;
	        }
	    }
	}





	if (_C1  // _C1:  g.room_type=="C" && !exit_grid_xy
	&&  g.can_mark_acquired_item_locations 
	&&  g.counter1&$40 )
	{   // -------------------------------------------------------------------
	    // Draw check mark over tile if the item has been acquired
	    if (val(f.dm_rando[?STR_Randomize+STR_Item+STR_Locations]) 
	    ||  val(f.dm_rando[?STR_Randomize+STR_PBAG+STR_Locations]) 
	    ||  val(f.dm_rando[?STR_Randomize+STR_Key +STR_Locations]) )
	    {
	        var _item_id, _datakey1, _owrc_;
	        var           _COUNT = val(f.dm_rando[?STR_Total+STR_Location+STR_Count]);
	        for(_i=1; _i<=_COUNT; _i++)
	        {
	            _datakey1 = STR_Location+hex_str(_i);
	            _owrc = val(dm_rando_locations[?_datakey1+STR_OWRC], -1);
	            _item_id = f.dm_rando[?_datakey1+STR_Item+STR_ID+STR_Randomized];
	            if (_owrc!=-1 
	            &&  val(dm_rando_locations[?_datakey1+STR_Acquired]) 
	            && !is_undefined(_item_id) )
	            {
	                _x  = ow_pc_xy(0) + ((byte(_owrc>>0)<<SHIFT)-pc_ow_x);
	                _y  = ow_pc_xy(1) + ((byte(_owrc>>8)<<SHIFT)-pc_ow_y);
	                _x += 8;
	                _y += 8;
                
	                if (_ADD_MOVE_OFFSET)
	                {
	                    // This is to adjust an unintended 1 pixel offset while pc is moving.
	                    _x += -move_x;
	                    _y += -move_y;
	                }
                
	                if (rectInView((_x>>SHIFT)<<SHIFT,(_y>>SHIFT)<<SHIFT, T_SIZE,T_SIZE))
	                {
	                    _owrc_=hex_str(_owrc);
                    
	                         if (val(dm_rando_locations[?_owrc_+STR_Varied])) _spr=spr_CheckMark2_4; // grey
	                    else if (string_pos(STR_PBAG,_item_id)) _spr=spr_CheckMark2_3; // full blue
	                    else if (string_pos(STR_KEY, _item_id)) _spr=spr_CheckMark2_2; // full yellow
	                    else                                    _spr=spr_CheckMark2_1; // full green
	                    draw_sprite_(_spr,0, _x,_y-1);
                    
	                    _count1=val(dm_rando_locations[?_owrc_+STR_Item+STR_Count]);
	                    _count2=val(dm_rando_locations[?_owrc_+STR_Acquired+STR_Count]);
	                    if (_count1>1 
	                    &&  _count2 )
	                    {
	                        _text=string(_count2)+"/"+string(_count1);
	                        _x -= (string_length(_text)*6)>>1;
	                        _y += 5;
	                        draw_text_(_x,_y, _text, spr_Font3_1);
	                    }
	                }
	            }
	            //sdm("ITEM: "+string(val(_item_id))+".  "+"location_num: $"+hex_str(_i)+", _spawn_datakey '"+string(val(_spawn_datakey))+"'");
	        }
	    }
	}









	// Update Tile Animations -----------------------------------
	// ----------------------------------------------------------------------------
	//if (g.counter0&$40) background_assign(ts_Overworld_1,ts_Overworld_1_2);
	//else                background_assign(ts_Overworld_1,ts_Overworld_1_1_2);

	// -------------------------------------------------------------------
	// -------------------------------------------------------------------
	// -------------------------------------------------------------------








	// DEBUG DRAW - ------------------------------------------------------
	if (_C1 
	&&  g.DevTools_state )
	{
	    if (g.can_draw_Exit_hb 
	    ||  g.can_show_t_solid )
	    {
	        var _dk; // dk: Data Key
	        var _owrc, _ts_x,_ts_y;
        
	        for(_i=0; _i<DRAW_ROWS; _i++) // each row
	        {
	            for(_j=0; _j<DRAW_CLMS; _j++) // each clm
	            {
	                _tid = dg_tid[#_j,_i];
	                if(!tile_exists(_tid)) continue;
                
	                _x = tile_get_x(_tid);
	                _y = tile_get_y(_tid);
                
	                if(!rectInView(_x,_y, T_SIZE,T_SIZE)) continue;
                
                
                
	                _ow_clm = (_ow_x + (_j<<SHIFT)) >>SHIFT;
	                _ow_row = (_ow_y + (_i<<SHIFT)) >>SHIFT;
	                _owrc   = (_ow_row<<8) | _ow_clm;
                
	                _x += -_SIGN_X; // FIX. draw is 1 pixel off during movement
	                _y += -_SIGN_Y; // FIX. draw is 1 pixel off during movement
                
                
	                // 'Z' to toggle
	                if (g.can_show_t_solid)
	                {
	                        _tsrc = dg_solid[#_ow_clm, _ow_row];
	                    if (_tsrc)
	                    {
	                        _ts_x = ((_tsrc>>0)&$F) <<SHIFT;
	                        _ts_y = ((_tsrc>>4)&$F) <<SHIFT;
	                        draw_background_part(TILESET_TILEMARKER, _ts_x,_ts_y, T_SIZE,T_SIZE, _x,_y);
	                    }
	                }
                
                
                
	                // 'E' to toggle
	                if (g.can_draw_Exit_hb)
	                {
	                    _dk = hex_str(_owrc);
	                    if(!is_undefined(dm_data[?_dk+STR_RmName])) // if this owrc is an exit
	                    {
	                        if (dm_data[?_dk+STR_Open]) _tsrc = $A0; // $A0. Green
	                        else                        _tsrc = $B4; // $B4. Red
                        
	                        _ts_x = ((_tsrc>>0)&$F) <<SHIFT;
	                        _ts_y = ((_tsrc>>4)&$F) <<SHIFT;
	                        draw_background_part(TILESET_TILEMARKER, _ts_x,_ts_y, T_SIZE,T_SIZE, _x,_y);
	                    }
	                }
	            }
	        }
	    }
	}







}
