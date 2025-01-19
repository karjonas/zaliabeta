/// @description  BurnableMgr_update_1a(clm, row, *use big sprite)
function BurnableMgr_update_1a() {

	// Used to light burnable tiles on fire through spread or from fire ball


	with(g.burnable_mgr)
	{
	    var _CLM = argument[0];
	    var _ROW = argument[1];
    
	    var _DATA = dg_RmTile_Burnable[#_CLM,_ROW];
	    if(!_DATA) return false;
	                dg_RmTile_Burnable[#_CLM,_ROW] = 0;
	    //
    
	    // _USE_BIG_SPRITE: when fireball lights the burnable tile
	    var                   _USE_BIG_SPRITE=false;
	    if (argument_count>2) _USE_BIG_SPRITE=argument[2];
    
    
	    var _IDX = ds_grid_width(dg_Burnable);
	    ds_grid_resize(dg_Burnable, _IDX+1, ds_grid_height(dg_Burnable));
    
	    //  burn type                                                       //
	    dg_Burnable[#_IDX,0]  = _DATA&$FF;
	    //  tile depth                                                      //
	    dg_Burnable[#_IDX,1]  = g.dl_TILE_DEPTHS[|(_DATA>>8)&$FF];
	    //  main timer                                                      //
	    dg_Burnable[#_IDX,2]  =         Burnable_DUR1;
	    dg_Burnable[#_IDX,2] += irandom(Burnable_DUR2) * sign_(irandom(1));
	    //  spread timer                                                    //
	    dg_Burnable[#_IDX,3]  = irandom(Burnable_DUR3) + Burnable_DUR2;
	    //dg_Burnable[#_IDX,3] += irandom(Burnable_DUR2) * sign_(irandom(1);
	    //                                                                  //
	    dg_Burnable[#_IDX,4]  = false; // can draw
	    //  x                                                               //
	    dg_Burnable[#_IDX,5]  = (_CLM<<3) + 4;
	    dg_Burnable[#_IDX,5] += irandom(1) * sign_(irandom(1)); // +/- 0,1
	    //  y                                                               //
	    dg_Burnable[#_IDX,6]  = (_ROW<<3) + 4; // 
	    dg_Burnable[#_IDX,6] += irandom(1) * sign_(irandom(1)); // +/- 0,1
	    //                                                                  //
	    if(!irandom(3) 
	    ||  _USE_BIG_SPRITE )
	    {    dg_Burnable[#_IDX,7] = FIRE_SPR1;  } // FIRE_SPR1: 8x16
	    else dg_Burnable[#_IDX,7] = FIRE_SPR2;    // FIRE_SPR2: 8x8
	    //                                                                  //
	    //dg_Burnable[#_IDX,8]  = FireSound_DUR;
	    aud_play_fire(true);
	}



	return true;







}
