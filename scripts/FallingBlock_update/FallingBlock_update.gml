/// @description  FallingBlock_update()
function FallingBlock_update() {


	// ABE9
	stun_timer = 0;

	if (counter) // breaking apart
	{   // ABF2
	    set_xlyt(id, xl, yt+1);
    
	        counter++;
	    if (counter<$11)
	    {   // ABFD: JMP EF11
	        update_EF11();
	    }
	    else
	    {   // ABFA: JMP DD47
	        state = 0;
	    }
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	// ----------------------------------------------------------------------
	// AC00: JSR DEBE: JSR DEC8
	updateY();

	// AC03: JSR EA32
	GO_update_cs();


	// MOD
	if (yt >= cam_yb_max()+$18)
	{
	    GOB_despawn(id);
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	// AC06: JSR E677
	GOB_body_collide_pc_sword();

	if (pc_sword_collided_solid_body)
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	// ----------------------------------------------------------------------
	// AC09: JSR E4D9
	GOB_body_collide_pc_body_1a();

	// AC0C
	if (cs & (CS_BD1|CS_SW1))
	{
	    if (cs & CS_BD1)
	    {   // AC16: JSR E2EF
	        enemy_collide_pc_body();
	    }
    
	    // AC19
	    aud_play_sound(get_audio_theme_track(dk_BlockBreak));
	    counter = 1; // Start breaking process
	}



	// AC1F
	if!(cs&$4)
	{   // ABFD: JMP EF11
	    update_EF11();
	}
	else
	{   // AC2C
	    var _DEPTH_IDX = ds_list_find_index(g.dl_TILE_DEPTHS, LAND_DEPTH);
	    var _CLM = xl>>3;
	    var _ROW = yt>>3;
	    var _TS  = ts_Man_made_1a_WRB;
	    var _TS_DATA = TSRC_BREAK1_A;
    
	    var _i, _x,_y, _tsrc;
	    for(_i=0; _i<4; _i++) // each 8x8 tile of the block graphic
	    {
	        _x = (_CLM+(_i&$1)) <<3;
	        _y = (_ROW+(_i>$1)) <<3;
	        _tsrc = str_hex(_TS_DATA,_i);
	        tile_change_1a(LAND_DEPTH, _x,_y, _TS,_tsrc, TID_SOLID1,TID_BREAK1+(_DEPTH_IDX<<8), TID_HIDE_1&$F);
	    }
    
    
	    // AC29: JSR DD47
	    aud_play_sound(get_audio_theme_track(dk_BridgeCrumble));
	    state = 0;
	}







}
