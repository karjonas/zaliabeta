/// @description  PC_update_1c()
function PC_update_1c() {


	GO_update_cs();



	// --------------------------------------------------------------------------------
	// --------------------------------------------------------------------------------
	// --------------------------------------------------------------------------------
	var _i,_j, _idx;

	control = 0;


	var _CLMS = min(ds_grid_width( g.dg_RmTile_Break),ds_grid_width( g.dg_RmTile_Liquid));
	var _ROWS = min(ds_grid_height(g.dg_RmTile_Break),ds_grid_height(g.dg_RmTile_Liquid));
	var _clm  = cp1X>>3;
	var _row  = cp1Y>>3;
	if (is_in_grid(_clm,_row, _CLMS,_ROWS))
	{
	    // E098. INSTA-KILL LIQUID ---------------------------------------------
	    if (g.dg_RmTile_Liquid[#_clm,_row]&$FF == TID_LQUID1 
	    && !(cs&$4) )
	    {   // E0A4
	        aud_play_sound(get_audio_theme_track(STR_PC+STR_Damage));
	        var _damage = get_stat_max(STR_Heart);
        
	        var _FAIRY1 = f.items&ITM_FRY1;
	        if (_FAIRY1)
	        {
	            _damage = Container_AMT<<1;
	        }
        
        
	        if (g.DevTools_state && g.dev_invState&$3) _damage = 0; // g.dev_invState. 2: skip all, 1 skip dmg, 0 regular
        
        
	        adjust_stat(-_damage, 0);
        
	        if (_FAIRY1 
	        &&  f.hp )
	        {
	            RescueFairy_sprite = g.dl_Fairy_SPRITES[|sign(g.counter1&$4)];
	        }
        
        
	        DrownLiquid_y     = _row<<3;
	        DrownLiquid_depth = (g.dg_RmTile_Liquid[#_clm,_row]>>8) &$FF;
	        DrownLiquid_depth =  g.dl_TILE_DEPTHS[|DrownLiquid_depth];
        
        
	        stun_timer = $10;
	        state = state_DROWN;
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
    
    
    
	    // SPIKES ----------------------------------------------------------
	    if (g.dg_RmTile_Spike[#_clm,_row]&$FF == TID_SPIKE1 
	    ||  g.dg_RmTile_Spike[#_clm,_row]&$FF == TID_SPIKE2 )
	    {
	        if(!iframes_timer 
	        && !ogr 
	        &&  cs&$4 )
	        {
	            if(!g.DevTools_state 
	            ||  g.dev_invState&$3!=2 )
	            {
	                PC_take_damage(noone,$10); // Spike Damage
	                exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	            }
	        }
	    }
        
    
    
    
    
    
    
	    // E0FC. CRUMBLE GROUND --------------------------------------
	    if (g.mod_CRUMBLE_TILES==1)
	    { // check both csBtm
	            _clm = csBtm1X>>3;
	            _row = csBtm1Y>>3;
	        if(!is_in_grid(_clm,_row, _CLMS,_ROWS) 
	        || !isVal(g.dg_RmTile_Break[#_clm,_row]&$FF, TID_BREAK2,TID_BREAK4) ){
	            _clm = csBtm2X>>3;
	            _row = csBtm2Y>>3;
	        }
	    }
    
	    if (is_in_grid(_clm,_row, _CLMS,_ROWS) 
	    &&  isVal(g.dg_RmTile_Break[#_clm,_row]&$FF, TID_BREAK2,TID_BREAK4) ) // crumble bridge
	    {   // E102: JSR E292
	        var          _COUNT=ds_grid_width(g.dg_tile_anim);
	        for(_i=0; _i<_COUNT; _i++)
	        //for(_i=g.T_ANIM_MAX_BREAK1; _i<g.T_ANIM_MAX; _i++)
	        {
	            if (isVal(g.dg_tile_anim[#_i,0], TID_BREAK2,TID_BREAK4)  // 0: anim num/type
	            &&       !g.dg_tile_anim[#_i,1] )                        // 1: counter
	            {
	                if (_clm)
	                {
	                    var _clm2 = _clm-1;
	                    while (is_in_grid(_clm2,_row, _CLMS,_ROWS) 
	                       &&  isVal(g.dg_RmTile_Break[#_clm2,_row]&$FF, TID_BREAK2,TID_BREAK4) )
	                    {
	                            _clm2--;
	                        if!(_clm2+1) break;//while
	                    }
	                    _clm2++;
	                    _clm -= (_clm&$1 != _clm2&$1);
	                }
                
	                if (_row)
	                {
	                    var _row2 = _row-1;
	                    while (is_in_grid(_clm,_row2, _CLMS,_ROWS) 
	                       &&  isVal(g.dg_RmTile_Break[#_clm,_row2]&$FF, TID_BREAK2,TID_BREAK4) )
	                    {
	                            _row2--;
	                        if!(_row2+1) break;//while
	                    }
	                    _row2++;
	                    _row -= ((_row&$1) != (_row2&$1));
	                }
                
                
                
	                g.dg_tile_anim[#_i,0] = g.dg_RmTile_Break[#_clm,_row]&$FF;
	                g.dg_tile_anim[#_i,1] = 1; // set counter. starts anim
	                g.dg_tile_anim[#_i,3] = 1; // set frame num
	                g.dg_tile_anim[#_i,5] = (_row<<8) | _clm;
	                g.dg_tile_anim[#_i,6] = g.dl_TILE_DEPTHS[|g.dg_RmTile_Break[#_clm,_row]>>8];
                
	                if (g.dg_RmTile_Break[#_clm,_row]&$FF==TID_BREAK4) // Regenerating tile
	                {
	                    g.dg_tile_anim[#_i,8] = 1; // 1: Anim in reverse once, after initial anim
	                }
                
	                // remove unique right away
	                for(_j=0; _j<4; _j++)
	                {
	                    _clm2 = _clm+(_j&1);
	                    _row2 = _row+(_j>1);
	                    if (is_in_grid(_clm2,_row2, g.rm_clms,g.rm_rows))
	                    {   // E105
	                        g.dg_RmTile_Break[#_clm2,_row2] = 0;
	                        aud_play_sound(get_audio_theme_track(dk_BridgeCrumble));
	                    }
	                }
                
	                break;//_i
	            }
	        }
	    }
    
    
    
    
    
    
    
	    // E0B0. VISCOUS LIQUID (SWAMP WATER) --------------------------------------
	    _clm =  cp1X    >>3;
	    _row = (cp1Y-4) >>3;
	    if (is_in_grid(_clm,_row, _CLMS,_ROWS) 
	    &&  g.dg_RmTile_Liquid[#_clm,_row]&$FF == TID_LQUID2 )
	    {
	        control |= (control_MOVE1 | control_DRAW1 | control_SOUND1);
	    }
	}




















	// --------------------------------------------------------------------
	// ----------------------------  EXIT CHECKS  ------------------------------
	if (state != state_NORMAL) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if (g.exit_leave)          exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	var _exit = noone;
	var _CARRY = is_undefined(colliding_elevator) || !instance_exists(colliding_elevator);
	var _W  = $10;
	var _H  = hh+_CARRY;
	var _XL = x-(_W>>1);
	var _YT = yt;
	with(Exit)
	{
	    if (open 
	    &&  rectInRect(BodyHB_x,BodyHB_y,BodyHB_w,BodyHB_h, _XL,_YT,_W,_H) )
	    {
	        _exit=id;
	        break;//with(Exit)
	    }
	}
	/*
	_exit = pc_collide_exit(_CARRY);

	if (_exit)
	{
	    if(!_exit.open) _exit=noone;
	}
	*/


	if(!_exit 
	&&  g.in_safe_encounter 
	&&  g.exit_enter.exitNum&$F0 == g.EXIT_DIR_MID )
	{   // Shorter walk distance to get back to ow
	    var                      _DIST = $A0;
	    if (x <  g.exit_enter.xc-_DIST 
	    ||  x >= g.exit_enter.xc+_DIST )
	    {
	        with(Exit)
	        {
	            if (exitNum&(g.EXIT_DIR_LEFT|g.EXIT_DIR_RIGHT)){
	                _exit = id;
	                break;//with(Exit)
	            }
	        }
        
	        if (_exit)
	        {
	            hspd = 0;
	            g.exit_leave = _exit;
	            sdm("exit side");
	            exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	        }
	    }
	}


	// Just in case player is outside of exit hb once they get low enough
	if(!_exit 
	&& !g.exit_leave 
	&&  g.exit_leave_pending 
	&&  g.exit_leave_pending.open 
	&&  g.exit_leave_pending.side&$4 )
	{
	    if (yb < cam_yb_max()-$08)
	    {   // Just in case player somehow moves back upward before getting low enough
	        g.exit_leave_pending = noone;
	    }
	    else
	    {
	        if (( pc_is_fairy() && yb>=(cam_yb_max()+$1C)) 
	        ||  (!pc_is_fairy() && yb>=(cam_yb_max()+$38)) )
	        {
	            _exit = g.exit_leave_pending;
	            g.exit_leave = _exit;
	            sdm("exit down");
	            exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	        }
	    }
	}





	if (_exit)
	{
	    updateCSPoints();
    
    
    
	    switch(_exit.exit_type&$F0)
	    {
	        // --------------------------------------------------------------------------------------------------------------------
	        // --------------------------------------------------------------------------------------------------------------------
	        case g.EXIT_TYPE_ELEVATOR:{ //  ELEVATOR -------------------------------------------------------------------------
        
	        if (colliding_elevator 
	        && !g.EnterRoom_control_timer )
	        {
	            var _DIST = ((hh>>2)*3) - 1;
            
	            if ((_exit.side&Input.vHeld && !inRange(yb, cam_yt_min(),cam_yb_max()+_DIST)) 
	            ||  (_exit.side&Input.hHeld && !ocsH4(id)) )
	            {   // D901
	                set_xy(id, $78, y);
                
	                g.exit_leave = _exit;
	                sdm("exit elevator");
	            }
	        }
        
	        break;}//case g.EXIT_TYPE_ELEVATOR:{
        
        
        
        
	        // --------------------------------------------------------------------------------------------------------------------
	        // --------------------------------------------------------------------------------------------------------------------
	        case g.EXIT_TYPE_PIPE:{ // E0C5.  PIPE -----------------------------------------------------------------------
        
	        // Darunia roof chimney exit. 
	        if ( Input.dHeld 
	        && !(Input.held_0 & Input.D)                // Has released 'up' since spawning
	        && !ogr                                     // is on ground
	        &&  wINwAll(x-8,$10, _exit.xl,_exit.ww) )   // MOD. So spr won't stick out sides of chimney
	        {   // E0E2
	            pipe_sink_timer = 37; // timer. Will exit rm at 0
            
	            g.exit_leave = _exit;
	            sdm("exit pipe");
	        }
        
	        break;}//case g.EXIT_TYPE_PIPE:{
        
        
        
        
    
	        // --------------------------------------------------------------------------------------------------------------------
	        // --------------------------------------------------------------------------------------------------------------------
	        case g.EXIT_TYPE_DOOR:{ //  DOORWAY -------------------------------------------------------------------------
        
	        if (Input.Up_held                                 // is holding up
	        && !ogr                                           // is on ground
	        && !(Input.held_0 & Input.U)                      // Has released 'up' since spawning
	        &&  (cp1Y>>3) == ((_exit.yt+_exit.hh)>>3)         // PC level with door bottom
	        &&  inRange(x, _exit.xl+3, _exit.xl+_exit.ww-3) ) // PC center x enough inside door
	        {
	            if (_exit.exit_type & g.EXIT_BIT_TELEPORT)
	            {
	                g.exit_leave = _exit;
	                sdm("exit door");
	            }
	            else
	            {
	                g.exit_leave = _exit;
	                sdm("exit door");
	            }
	        }
        
	        break;}//case g.EXIT_TYPE_DOOR:{
        
        
        
        
        
	        // --------------------------------------------------------------------------------------------------------------------
	        // --------------------------------------------------------------------------------------------------------------------
	        case g.EXIT_TYPE_STANDARD:{ // E14A.  EXIT_TYPE_STANDARD=$0000; // Standard. No condition to use exit
	        // sdm("_exit.side $"+hex_str(_exit.side)+", g.view_lock $"+hex_str(g.view_lock));
	        if (_exit.side&$3) // SIDE (RIGHT & LEFT) ---------------------------
	        {
	            if(!(g.view_lock_boss & (_exit.side&$3)) 
	            && !g.EnterRoom_control_timer )
	            {
	                if(!ocsH4(id)  // !ocsH4: x is outside ocs area width
	                || !inRange(x, 0,g.rm_w-1) )
	                {   // E173
	                    hspd = 0;
                    
	                    g.exit_leave = _exit;
	                    sdm("exit side");
	                }
	            }
            
	            break;//case g.EXIT_TYPE_STANDARD:{
	        }
        
        
        
	        if (_exit.side&$4) // E19E.  BOTTOM ------------------------------
	        {
	            if(!g.exit_leave_pending) g.exit_leave_pending = _exit;
            
	            if (( pc_is_fairy() && yb>=(cam_yb_max()+$1C)) 
	            ||  (!pc_is_fairy() && yb>=(cam_yb_max()+$38)) )
	            {
	                if (g.exit_leave_pending) g.exit_leave = g.exit_leave_pending;
	                else                      g.exit_leave = _exit;
	                sdm("exit down");
	            }
            
	            break;//case g.EXIT_TYPE_STANDARD:{
	        }
        
	        break;}//case g.EXIT_TYPE_STANDARD:{
	    }//switch(_exit.exit_type & $F0)
	}












}
