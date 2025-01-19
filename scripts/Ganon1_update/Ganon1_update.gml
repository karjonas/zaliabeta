/// @description  Ganon1_update()
function Ganon1_update() {


	x_prev = x;
	y_prev = y;

	if (timer1) timer1--;
	if (timer2) timer2--;


	switch(sub_state)
	{
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_SUMMON1:{ // CAST SUMMON
	    if (timer) break;
    
	    if (f.items&ITM_BTL1  // has bottle
	    &&  val(f.dm_quests[?STR_Bottle+"01"+STR_State])  // has blood
	    &&  g.dl_spell_history[|ds_list_size(g.dl_spell_history)-1]==SPL_SUMM ) // SUMMON was cast
	    {
	        audio_group_stop_all(audiogroup_mus);
	        Audio.can_play_mus_rm_body = false;
	        Audio.can_play_boss_music  = false;
        
	        g.pc_lock = PC_LOCK_ALL & ~PC_LOCK_VSPD;
	        g.pc.xScale = sign_(x>g.pc.x);
        
	        if (g.pc.xl<arena_xl)
	        {   
	            timer     = 0;
	            sub_state = sub_state_PC_WALK1;
	        }
	        else
	        {
	            timer     = 0;
	            sub_state = sub_state_SUMMON2;
	        }
	    }
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_PC_WALK1:{ // CONFIRM PC ON GROUND
	    if (timer) break;
    
	    if(!g.pc.ogr)
	    {
	        var _X = arena_xl+($7<<3);
	        g.pc_lock = PC_LOCK_ALL
	        g.pc.WalkTo_active   = true;
	        g.pc.WalkTo_x        = _X;
	        g.pc.WalkTo_hspd_max = $10;
        
	        if (g.pc.x==_X)
	        //if (walk_pc_to_x(arena_xl+($7<<3), $10))
	        {
	            g.pc.WalkTo_active = false;
	            g.pc.hspd = 0;
	            timer     = 0;
	            sub_state = sub_state_SUMMON2;
	        }
	    }
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    // Not defeated but have been fought
	    case sub_state_PC_POSITION2:{ // CONFIRM PC x far enough
	    Crystal_sprite_state=2; // 2: full
	    if (timer) break;
    
	    if (g.pc.x >= arena_xl+($7<<3))
	    {
	        g.pc_lock = PC_LOCK_ALL & ~PC_LOCK_VSPD;
        
	        timer     = 0;
	        sub_state = sub_state_PC_POSITION3;
	    }
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_PC_POSITION3:{ // CONFIRM PC x far enough
	    Crystal_sprite_state=2; // 2: full
	    if (timer) break;
    
	    if(!g.pc.ogr)
	    {
	        g.pc_lock = PC_LOCK_ALL
        
	        timer     = 0;
	        sub_state = sub_state_SUMMON5;
	    }
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_SUMMON2:{ // CONFIRM PC ON GROUND
	    if (timer) break;
    
	    if(!g.pc.ogr 
	    && !p.Flash_Pal_timer )
	    {
	        PC_set_behavior(g.pc.behavior_IDLE);
	        g.pc_lock = PC_LOCK_ALL;
        
	        timer     = $40;
	        sub_state = sub_state_SUMMON3;
	        /*
	        if (skip_to_battle)
	        {
	            var _i,_j, _x,_y;
	            for(_i=0; _i<DoorBlocks_COUNT; _i++)
	            {
	                for(_j=0; _j<4; _j++)
	                {
	                    _x = (Door_xl>>3)            + (_j&1);
	                    _y =((Door_yt>>3) + (_i<<1)) + (_j>1);
	                    _x = _x<<3;
	                    _y = _y<<3;
	                    tile_change_1a(Door_DEPTH, _x,_y, Door_TS, Door_TSRC+_j, TID_SOLID1);
	                }
	            }
	            aud_play_sound(Audio.SND_BLOK_BRK1);
            
	            timer     = $00;
	            sub_state = sub_state_SUMMON5;
	        }
	        else
	        {
	            timer     = $40;
	            sub_state = sub_state_SUMMON3;
	        }
	        */
	    }
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_SUMMON3:{ // RAISE BOTTLE
	    Bottle_can_draw = !timer || timer&$1;
    
	    if!(g.counter1&$7)
	    {
	            Bottle_x  = x;
	            Bottle_y  = max(Bottle_y-1, Bottle_y_MIN);
	            Bottle_yt = Bottle_y-$08;
	            Bottle_yb = Bottle_y+$08;
	        if (Bottle_y==Bottle_y_MIN)
	        {
	            Blood_h  = 2;
	            Blood_yt = Bottle_yt+$07;
	            Blood_yb = Blood_yt+Blood_h;
	            Blood_yb_MAX = yt+$20;
            
	            timer     = $60;
	            sub_state = sub_state_SUMMON4;
	        }
	    }
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_SUMMON4:{ // FLIP BOTTLE UPSIDE DOWN
	    Bottle_can_draw=true;
	    if (timer) break;
    
	    BottleLiquid_can_draw = true;
	    BottleLiquid_level    = ds_list_size(dl_BottleLiquid_SPRITES);
	    Bottle_sprite      = Bottle_SPRITE1;
	    Bottle_yscale   = -1;
    
	    timer     = 0;
	    sub_state = sub_state_POUR_BLOOD;
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_POUR_BLOOD:{ // POUR BLOOD
	    Bottle_can_draw=true;
	    if (timer) break;
    
	    Blood_can_draw=true;
	    var _TIMING=$08;
	    if!(g.counter1&(_TIMING-1))
	    {
	        if (Blood_yb<Blood_yb_MAX)
	        {
	            Blood_yb += 2;
	        }
        
	        if(!BottleLiquid_level)
	        {
	            BottleLiquid_can_draw=false;
	            Blood_yt += 2;
            
	            if (Blood_h < (Blood_yb_MAX-Bottle_yb)>>2)
	            {   Crystal_sprite_state=2;  } // 2: full
	        }
        
	        if (g.counter1&_TIMING 
	        &&  BottleLiquid_level )
	        {   BottleLiquid_level--;  }
	    }
    
    
	        Blood_h = Blood_yb-Blood_yt;
	    if(!Blood_h)
	    {
	        Blood_can_draw=false;
        
	        timer     = $40;
	        sub_state = sub_state_SUMMON5;
	    }
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_SUMMON5:{ // FADE BOTTLE
	    Bottle_can_draw = timer&$1 && timer>$18;
	    if (timer) break;
    
	    Bottle_can_draw      = false;
	    Crystal_sprite_state = 3; // 3: full & flashing
    
	    var                 _DURATION = p.SpellFlash_DURATION1;
	    p.Flash_Pal_timer = _DURATION;
	    p.Flash_Bgr_timer = _DURATION;
	    aud_play_sound(get_audio_theme_track(STR_Cast+STR_Spell));
    
	    timer     = $80;
	    sub_state = sub_state_SUMMON6;
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_SUMMON6:{ // change palette
	    p.background_color_index = Background_COLOR_IDX1;
	    if (p.Flash_Bgr_timer==$2)
	    {
	        var _PAL = p.CI_BLK1_+p.CI_GRY4_+p.CI_ORG2_+p.CI_BLK1_;
	        var _LEN = string_length(_PAL);
	        var _POS = get_pal_pos(PI_BGR_4+1)-_LEN;
	        change_pal(strReplaceAt(p.pal_rm_new, _POS,_LEN,_PAL));
	    }
	    if (g.counter1&$2) palidx_def=PALIDX1;
	    else               palidx_def=PALIDX2;
	    if (timer) break;
    
	    timer     = $30;
	    sub_state = sub_state_SUMMON7;
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_SUMMON7:{ // DELAY
	    palidx_def=PALIDX2;
	    if (timer) break;
    
	    timer     = $30;
	    sub_state = sub_state_RIVIVING;
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_RIVIVING:{ // GANON RISE UP FROM GROUND
	    var _TIMING=$1<<3;
    
	    if (yb>Ground_y)
	    {
	        g.ScreenShake_timer=$10;
	        g.ScreenShake_strength_x=1;
	        g.ScreenShake_strength_y=1;
        
	        if!(g.counter1&(_TIMING-1))
	        {   aud_play_sound(get_audio_theme_track(dk_BridgeCrumble), 0,false, .7);  }
	    }
    
	    if (timer) break;
    
    
	    if!(g.counter1&(_TIMING-1))
	    {
	        if (g.counter1&_TIMING 
	        &&  DoorBlocks_count<DoorBlocks_COUNT )
	        {   // Add solid blocks to block exit
	            var _i, _x,_y;
	            for(_i=0; _i<4; _i++)
	            {
	                _x = (Door_xl>>3) + (_i&$1);
	                _y =((Door_yt>>3) + (DoorBlocks_count<<1)) + (_i>$1);
	                _x = _x<<3;
	                _y = _y<<3;
	                tile_change_1a(Door_DEPTH, _x,_y, Door_TS, Door_TSRC+((_i>$1)<<4)+(_i&$1), TID_SOLID1);
	                //tile_change_1a(Door_DEPTH, _x,_y, Door_TS, Door_TSRC+_i, TID_SOLID1);
	            }
            
	            DoorBlocks_count++;
	            aud_play_sound(get_audio_theme_track(dk_BlockBreak));
	        }
        
        
        
	        if (yb>Ground_y)
	        {
	            if!(g.counter1&_TIMING)
	            {   aud_play_sound(get_audio_theme_track(dk_BlockBreak),0,false,.2);  }
            
            
	            set_xy(id, x,y-1);
	            Crystal_x = x + Crystal_xoff;
	            Crystal_y = y + Crystal_yoff;
	        }
        
	        if (yb<=Ground_y 
	        &&  DoorBlocks_count>=DoorBlocks_COUNT )
	        {
	            timer     = 0;
	            sub_state = sub_state_PRE_BATTLE;
	        }
	    }
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_DIALOGUE1:{ // Dialogue before battle.. if you want dialogue
	    if (timer) break;
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_PRE_BATTLE:{
	    g.ScreenShake_timer      = 0;
	    g.ScreenShake_strength_x = 0;
	    g.ScreenShake_strength_y = 0;
	    g.pc_lock = 0;
    
	    var _DATAKEY = dk_spawn+STR_Battle+STR_Count+STR_Quest+hex_str(f.quest_num);
	    f.dm_quests[?_DATAKEY] = val(f.dm_quests[?_DATAKEY])+1;
    
	    set_xy(id, x,Ground_y-hh_);
    
	    Boss_play_battle_music();
    
	    timer1      = $C0;
	    BattleState = BattleState_ATTACK1_INIT;
	    timer     = 0;
	    sub_state = sub_state_BATTLE;
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_BATTLE:{ // FORM 1 BATTLE
	    if (timer) break;
	    Ganon1_update_battle();
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_DIALOGUE2:{ // Dialogue after battle.. if you want dialogue
	    if (timer) break;
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_REMOVE_FLOOR1:{ // Cracked Floor
	    if (timer) break;
    
	    var _i,_j,_k, _x,_y;
	    var _CLMS = arena_w>>4;
	    var _ROWS = ds_grid_width(dg_Ground);
	    var _clm,_row;
	    var _TS   = ts_Man_made_7a_WRB; // cracked tile
	    var _TSRC = "8E"+"8F"+"9E"+"9F";
    
	    for(_i=0; _i<_ROWS; _i++) // each block row(16x16)
	    {
	        _row = (GROUND_Y>>3) + (_i<<1);
	        for(_j=0; _j<_CLMS; _j++) // each block clm(16x16)
	        {
	            _clm = (arena_xl>>3) + (_j<<1);
	            for(_k=0; _k<4; _k++)
	            {   // Ground_DEPTH: DEPTH_FG5
	                _x  = (_clm+(_k&1)) <<3;
	                _y  = (_row+(_k>1)) <<3;
	                tile_change_1a(Ground_DEPTH, _x,_y, _TS,str_hex(_TSRC,_k), TID_SOLID1);
	            }
	        }
	    }
	    aud_play_sound(get_audio_theme_track(dk_BlockBreak));
    
	    timer     = $08;
	    sub_state = sub_state_REMOVE_FLOOR2;
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_REMOVE_FLOOR2:{ // Remove Floor
	    if (timer) break;
    
	    var _i,_j,_k, _x,_y;
	    var _CLMS = arena_w>>4;
	    var _ROWS = ds_grid_width(dg_Ground);
	    var _clm,_row;
	    for(_i=0; _i<_ROWS; _i++) // each block row(16x16)
	    {
	        _row = (GROUND_Y>>3) + (_i<<1);
	        for(_j=0; _j<_CLMS; _j++) // each block clm(16x16)
	        {
	            _clm = (arena_xl>>3) + (_j<<1);
	            for(_k=0; _k<4; _k++)
	            {   // Ground_DEPTH: DEPTH_FG5
	                _x  = (_clm+(_k&1)) <<3;
	                _y  = (_row+(_k>1)) <<3;
	                tile_change_1a(Ground_DEPTH, _x,_y, 0,$00, 0);
	            }
	        }
	    }
    
	    timer     = $00;
	    sub_state = sub_state_DONE;
	    break;}
    
    
    
    
    
    
    
	    // ==================================================================
	    // -----------------------------------------------------------
	    case sub_state_DONE:{
	    if (timer) break;
	    break;}
	}



	Ganon2_update_3(); // GO_update_cam_vars(), GO_update_cs(), update_body_hb_1a(), update_EF11()






	if (Collision_VER==2 
	||  Collision_VER==3 )
	{
	    // Trying to make it so Ganon is treated as a solid
	    // *** See solid_clip_adj() and use case 4 for the switch(4) for the cs_btm_inst part(around the top of script)
	    var _x =       g.pc.csLft1X;
	    var _y =       g.pc.csTop1Y;
	    var _PC_HB_W = g.pc.csRgt1X-_x;
	    var _PC_HB_H = g.pc.csBtm1Y-_y;
	    var _C1 = rectInRect(xl,yt,ww,hh, _x,_y,_PC_HB_W,_PC_HB_H);
	    if (pc_is_inside)
	    {
	        pc_is_inside = _C1;
	    }
	    else if (_C1) // if colliding this frame
	    {
	        var _PC_HB_XL_PREV = (g.pc.x_prev-g.pc.ww_)+g.pc.csLft1_xoff;
	        var _PC_HB_YT_PREV = (g.pc.y_prev-g.pc.hh_)+g.pc.csTop1_yoff;
	        if(!rectInRect(x_prev-ww_,y_prev-hh_,ww,hh, _PC_HB_XL_PREV,_PC_HB_YT_PREV,_PC_HB_W,_PC_HB_H)) // if wasn't colliding prev frame
	        {
	            _x = g.pc.x;
	            _y = g.pc.y;
	            if(!wINw(_PC_HB_XL_PREV,_PC_HB_W, x_prev-ww_,ww)) // if pc on prev frame was to the left or right of Ganon
	            {
	                if (g.pc.x_prev<x_prev) _x = clamp(g.pc.x, pc_x_min, max(pc_x_min, xl-(_PC_HB_W>>1)));
	                else                    _x = clamp(g.pc.x, min(pc_x_max, xr+(_PC_HB_W>>1)), pc_x_max);
	            }
	            else
	            {
	                if (g.pc.y_prev<y_prev)
	                {
	                    _y  = yt-g.pc.hh_;
	                    _y += 2; // micro adjustment
	                }
	                else
	                {
	                    var _MAX_Y  = min(get_ground_y(g.pc.csBtm1X,yb,1,g.pc.csBtm1Y),get_ground_y(g.pc.csBtm2X,yb,1,g.pc.csBtm2Y));
	                        _MAX_Y -= g.pc.hh_;
	                        _MAX_Y += 1;
	                    _y = max((yb-2)+g.pc.hh_, g.pc.y);
	                    _y = min(_y,_MAX_Y);
	                }
	            }
            
	            _x = clamp(_x, pc_x_min,pc_x_max);
	            with(g.pc)
	            {
	                var _X_PREV = x;
	                var _Y_PREV = y;
	                set_xy(id, _x,_y);
	                x_change += x-_X_PREV;
	                y_change += y-_Y_PREV;
	                //GO_update_cs();
	                /*
	                if!(cs&$F)
	                {
	                    if (point_in_rect(csRgt1X,csRgt1Y, xl,yt,ww,hh) || point_in_rect(csRgt2X,csRgt2Y, xl,yt,ww,hh)) cs |= $1;
	                    if (point_in_rect(csLft1X,csLft1Y, xl,yt,ww,hh) || point_in_rect(csLft2X,csLft2Y, xl,yt,ww,hh)) cs |= $2;
	                    if (point_in_rect(csBtm1X,csBtm1Y, xl,yt,ww,hh) || point_in_rect(csBtm2X,csBtm2Y, xl,yt,ww,hh)) cs |= $4;
	                    if (point_in_rect(csTop1X,csTop1Y, xl,yt,ww,hh) || point_in_rect(csTop2X,csTop2Y, xl,yt,ww,hh)) cs |= $8;
	                }
	                */
	            }
	        }
	    }
    
    
	    if (Collision_VER==3)
	    {
	        Ganon1_update_battle_2a();
	        //Ganon1_update_battle_2();
	    }
    
    
    
    
	    var _i;
	    var _clm,_row;
	    for(_i=ds_list_size(dl_ONEWAY_RC)-1; _i>=0; _i--)
	    {
	        _clm = (dl_ONEWAY_RC[|_i]>>0) &$FF;
	        _row = (dl_ONEWAY_RC[|_i]>>8) &$FF;
	        if (point_in_rect((_clm<<3)+4,(_row<<3)+4, xl,yt,ww,hh)) g.dg_RmTile_solid[#_clm,_row]=0;
	        else                                                     g.dg_RmTile_solid[#_clm,_row]=TID_ONEWY1;
	        //if (rectInRectAll(xl,yt,ww,hh, _clm<<3,_row<<3,8,8)) g.dg_RmTile_solid[#_clm,_row]=0;
	        //else                                                 g.dg_RmTile_solid[#_clm,_row]=TID_ONEWY1;
	    }
	}




	//GOB_body_collide_pc_sword();







}
