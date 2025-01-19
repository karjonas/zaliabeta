/// @description  BurnableMgr_update()
function BurnableMgr_update() {


	var _i,_j, _idx, _val;
	var _clm = 0;
	var _row = 0;
	var _clm1,_row1;

	can_draw = false;


	for(_i=ds_list_size(g.go_mgr.dl_goc2)-1; _i>=0; _i--)
	{
	    with(g.go_mgr.dl_goc2[|_i])
	    {
	        _clm = x>>3;
	        _row = y>>3;
        
	        if (state==state_NORMAL 
	        &&  type_bits&BIT_FIR1 
	        &&  is_in_grid(_clm,_row, ds_grid_width(other.dg_RmTile_Burnable),ds_grid_height(other.dg_RmTile_Burnable)) 
	        //&&  other.dg_RmTile_Burnable[#_clm,_row] )
	        &&  isVal(other.dg_RmTile_Burnable[#_clm,_row]&$FF,BURNABLE_A,BURNABLE_B) )
	        {   // light tile on fire
	            if (BurnableMgr_update_1a(_clm,_row, true)) // if it got lit
	            {
	                state=0;
	            }
	        }
	    }
	}





	var _COUNT = ds_grid_width(dg_Burnable);
	if(!_COUNT) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




	// cleanup
	if(!dg_Burnable[#_COUNT-1,2]) // main timer
	{   // CLEANUP. Truncate any finished.
	    for(_i=_COUNT-1; _i>=0; _i--)
	    {
	        if (dg_Burnable[#_i,2]) // main timer
	        {
	            ds_grid_resize(dg_Burnable, _i+1, ds_grid_height(dg_Burnable));
	            _COUNT = ds_grid_width(dg_Burnable);
	            break;
	        }
	    }
	}



	var _can_play_sound = false;

	// update main timer & spread
	for(_i=_COUNT-1; _i>=0; _i--)
	{
	    if(!dg_Burnable[#_i,2]) // main timer
	    {
	        dg_Burnable[#_i,3] = 0; // spread timer
	        //dg_Burnable[#_i,8] = 0; // sound timer
	        dg_Burnable[#_i,4] = false; // can draw
	        continue;
	    }
    
	    dg_Burnable[#_i,2]--; // main timer
	    dg_Burnable[#_i,4] = true; // can draw
	    can_draw = true;
	    _can_play_sound = _can_play_sound || dg_Burnable[#_i,2]>=SMALL_SPR_CUE;
    
	    if(!dg_Burnable[#_i,2]) // main timer
	    {
	        // done burning, remove tile
	        _clm = dg_Burnable[#_i,5]>>3;
	        _row = dg_Burnable[#_i,6]>>3;
	        if (dg_Burnable[#_i,0]==BURNABLE_A) _val =  0; // remove solid
	        else                                _val = -1; // dont change solid
	        tile_change_1a(dg_Burnable[#_i,1], _clm<<3,_row<<3, 0,0, _val);
        
        
	        _clm--;
	        _row--;
	        // check surrounding tiles for extra parts of the graphic that need to be removed
	        for(_j=0; _j<9; _j++) // 3x3 grid of tiles
	        {
	            /*
	            if (_j==0  // top left
	            ||  _j==2  // top right
	            ||  _j==4  // center
	            ||  _j==6  // bottom left
	            ||  _j==8 )// bottom right
	            {   continue;  }
	            */
	            if (_j==4) continue; // This is _i tile(the center tile of the 9)
            
	            _clm1 = _clm + (_j mod 3);
	            _row1 = _row + (_j div 3);
	            if (is_in_grid(_clm1,_row1, ds_grid_width(dg_RmTile_Burnable),ds_grid_height(dg_RmTile_Burnable)) 
	            &&  byte(dg_RmTile_Burnable[#_clm1,_row1])==BURNABLE_C )
	            {
	                tile_change_1a(dg_Burnable[#_i,1], _clm1<<3,_row1<<3, 0,0);
	                dg_RmTile_Burnable[#_clm1,_row1]=0;
	            }
	        }
	    }
    
    
	    /*
	    if (dg_Burnable[#_i,8]) // sound timer
	    {
	        dg_Burnable[#_i,8]--;
	        //aud_play_fire(!!dg_Burnable[#_i,8]);
	    }
	    */
    
    
	    if (dg_Burnable[#_i,3]) // spread timer
	    {   dg_Burnable[#_i,3]--;  }
    
	    if(!dg_Burnable[#_i,3]) // spread timer
	    {   // spread fire
	        _clm = (dg_Burnable[#_i,5]>>3) - 1; // x
	        _row = (dg_Burnable[#_i,6]>>3) - 1; // y
        
	        for(_j=0; _j<9; _j++) // 3x3 grid of tiles
	        {   // check surrounding tiles for burnables
	            if (_j==4) continue; // This is _i tile(the center tile of the 9)
            
	            _clm1 = _clm + (_j mod 3);
	            _row1 = _row + (_j div 3);
            
	            if (is_in_grid(_clm1,_row1, ds_grid_width(dg_RmTile_Burnable),ds_grid_height(dg_RmTile_Burnable)) 
	            &&  isVal(byte(dg_RmTile_Burnable[#_clm1,_row1]),BURNABLE_A,BURNABLE_B) )
	            {
	                if (dg_Burnable[#_i,2]<=$10  // main timer. Time running out, guarantee it gets lit.
	                || !irandom(1) )
	                {
	                    BurnableMgr_update_1a(_clm1,_row1); // light tile on fire
	                }
	            }
	        }
	    }
	}


	//aud_play_fire(_can_play_sound);







}
