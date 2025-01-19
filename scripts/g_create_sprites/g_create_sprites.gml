/// @description  g_create_sprites()
function g_create_sprites() {


	if(!sprites_created) // A flag so the sprite creation only happens once.
	{
	    var _i;
    
	    var _surf_xoff = 0;
    
	    var _ts;
	    var _ts_idx = 0;
	    var _ts_idx_data = _ts_idx;
    
	    var _tsrc   = $00;
	    var _tsrc1  = $55;
	    var _TSRC2  = $41;
	    var _tsrc_data   = hex_str(_tsrc1+$00);
    
	    var _rcoff_data  = "00";
	    var _flip_data   = "00";
    
    
    
    
    
    
    
    
    
	    /*
	    // ================================================================================
	    // -----------------------------------------------------------------------
	    if (             !Block1_SPR1  // first g_Draw() frame
	    || !sprite_exists(Block1_SPR1) )
	    {
	        _ts_idx = hex_str(max(0, ds_list_find_index(dl_tileset, ts_Man_made_1a_WRB)));
	        _tsrc   = $34; // metal block. the outtie
        
	        // Tile 1
	        _ts_idx_data  = _ts_idx;
	        _tsrc_data    = hex_str(_tsrc+0);
	        _rcoff_data   = "00";
	        _flip_data    = "00";
        
	        // Tile 2
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc+1);
	        _rcoff_data  += "01";
	        _flip_data   += "00";
        
	        // Tile 3
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc+2);
	        _rcoff_data  += "10";
	        _flip_data   += "00";
        
	        // Tile 4
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc+3);
	        _rcoff_data  += "11";
	        _flip_data   += "00";
        
        
	        Block1_SPR1 = sprite_create_with_tiles(_ts_idx_data, _tsrc_data, _rcoff_data, _flip_data);
	    }
    
    
	    // ================================================================================
	    // -----------------------------------------------------------------------
	    if (             !Block2_SPR1  // first g_Draw() frame
	    || !sprite_exists(Block2_SPR1) )
	    {
	        _ts_idx = hex_str(max(0, ds_list_find_index(dl_tileset, ts_Man_made_1a_WRB)));
	        _tsrc   = $38; // metal block. the innie
        
	        // Tile 1
	        _ts_idx_data  = _ts_idx;
	        _tsrc_data    = hex_str(_tsrc+0);
	        _rcoff_data   = "00";
	        _flip_data    = "00";
        
	        // Tile 2
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc+1);
	        _rcoff_data  += "01";
	        _flip_data   += "00";
        
	        // Tile 3
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc+2);
	        _rcoff_data  += "10";
	        _flip_data   += "00";
        
	        // Tile 4
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc+3);
	        _rcoff_data  += "11";
	        _flip_data   += "00";
        
        
	        Block2_SPR1 = sprite_create_with_tiles(_ts_idx_data, _tsrc_data, _rcoff_data, _flip_data);
	    }
	    */
    
    
    
    
    
	    /*
	    // ================================================================================
	    // ================================================================================
	    // ================================================================================
	    //      HEAD MOUNT SPRITES
	    _ts_idx = hex_str(max(0, ds_list_find_index(dl_tileset, ts_Man_made_3a_WRB)));
	    _tsrc   = $60;
    
    
	    // ================================================================================
	    // -----------------------------------------------------------------------
	    if (             !HeadMount1_SPR  // first g_Draw() frame
	    || !sprite_exists(HeadMount1_SPR) )
	    {
	        _tsrc1 = _tsrc+$00;
        
	        // Tile 1
	        _ts_idx_data  = _ts_idx;
	        _tsrc_data    = hex_str(_tsrc1+$00);
	        _rcoff_data   = "00";
	        _flip_data    = "00";
        
	        // Tile 2
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$01);
	        _rcoff_data  += "01";
	        _flip_data   += "00";
        
	        // Tile 3
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$10);
	        _rcoff_data  += "10";
	        _flip_data   += "00";
        
	        // Tile 4
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$11);
	        _rcoff_data  += "11";
	        _flip_data   += "00";
        
        
	        HeadMount1_SPR = sprite_create_with_tiles(_ts_idx_data, _tsrc_data, _rcoff_data, _flip_data);
	    }
    
    
    
	    // ================================================================================
	    // -----------------------------------------------------------------------
	    if (             !HeadMount2_SPR  // first g_Draw() frame
	    || !sprite_exists(HeadMount2_SPR) )
	    {
	        _tsrc1 = _tsrc+$02;
        
	        // Tile 1
	        _ts_idx_data  = _ts_idx;
	        _tsrc_data    = hex_str(_tsrc1+$00);
	        _rcoff_data   = "00";
	        _flip_data    = "00";
        
	        // Tile 2
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$01);
	        _rcoff_data  += "01";
	        _flip_data   += "00";
        
	        // Tile 3
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$10);
	        _rcoff_data  += "10";
	        _flip_data   += "00";
        
	        // Tile 4
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$11);
	        _rcoff_data  += "11";
	        _flip_data   += "00";
        
        
	        HeadMount2_SPR = sprite_create_with_tiles(_ts_idx_data, _tsrc_data, _rcoff_data, _flip_data);
	    }
    
    
    
	    // ================================================================================
	    // -----------------------------------------------------------------------
	    if (             !HeadMount3_SPR  // first g_Draw() frame
	    || !sprite_exists(HeadMount3_SPR) )
	    {
	        _tsrc1 = _tsrc+$04;
        
	        // Tile 1
	        _ts_idx_data  = _ts_idx;
	        _tsrc_data    = hex_str(_tsrc1+$00);
	        _rcoff_data   = "00";
	        _flip_data    = "00";
        
	        // Tile 2
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$01);
	        _rcoff_data  += "01";
	        _flip_data   += "00";
        
	        // Tile 3
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$10);
	        _rcoff_data  += "10";
	        _flip_data   += "00";
        
	        // Tile 4
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$11);
	        _rcoff_data  += "11";
	        _flip_data   += "00";
        
        
	        HeadMount3_SPR = sprite_create_with_tiles(_ts_idx_data, _tsrc_data, _rcoff_data, _flip_data);
	    }
    
    
    
	    // ================================================================================
	    // -----------------------------------------------------------------------
	    if (             !HeadMount4_SPR  // first g_Draw() frame
	    || !sprite_exists(HeadMount4_SPR) )
	    {
	        _tsrc1 = _tsrc+$00;
        
	        // Tile 1
	        _ts_idx_data  = _ts_idx;
	        _tsrc_data    = hex_str(_tsrc1+$00);
	        _rcoff_data   = "00";
	        _flip_data    = "00";
        
	        // Tile 2
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$05);
	        _rcoff_data  += "01";
	        _flip_data   += "00";
        
	        // Tile 3
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$10);
	        _rcoff_data  += "10";
	        _flip_data   += "00";
        
	        // Tile 4
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$11);
	        _rcoff_data  += "11";
	        _flip_data   += "00";
        
        
	        HeadMount4_SPR = sprite_create_with_tiles(_ts_idx_data, _tsrc_data, _rcoff_data, _flip_data);
	    }
    
    
    
	    // ================================================================================
	    // -----------------------------------------------------------------------
	    if (             !HeadMount5_SPR  // first g_Draw() frame
	    || !sprite_exists(HeadMount5_SPR) )
	    {
	        _tsrc1 = _tsrc+$00;
        
	        // Tile 1
	        _ts_idx_data  = _ts_idx;
	        _tsrc_data    = hex_str(_tsrc1+$02);
	        _rcoff_data   = "00";
	        _flip_data    = "00";
        
	        // Tile 2
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$05);
	        _rcoff_data  += "01";
	        _flip_data   += "00";
        
	        // Tile 3
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$10);
	        _rcoff_data  += "10";
	        _flip_data   += "00";
        
	        // Tile 4
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc1+$11);
	        _rcoff_data  += "11";
	        _flip_data   += "00";
        
        
	        HeadMount5_SPR = sprite_create_with_tiles(_ts_idx_data, _tsrc_data, _rcoff_data, _flip_data);
	    }
	    */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
	    // ================================================================================
	    // -----------------------------------------------------------------------
	    if (             !CloudLarge1_SPR1  // first g_Draw() frame
	    || !sprite_exists(CloudLarge1_SPR1) )
	    {
	        _ts_idx = hex_str(max(0, ds_list_find_index(dl_tileset, ts_Natural1_HMS)));
	        //_ts_idx = "00";
	        _tsrc   = $C0;
        
        
	        // Top cloud tiles
	            _tsrc1    = _tsrc;
	        var _TSRC_A0  = hex_str(_tsrc1+$01);
	        var _TSRC_A1  = hex_str(_tsrc1+$0E);
        
	        // Mid-Top cloud tiles
	            _tsrc1    = _tsrc+$08;
	        var _TSRC_B0  = hex_str(_tsrc1+$00);
	        var _TSRC_B1  = hex_str(_tsrc1+$01);
	        var _TSRC_B2  = hex_str(_tsrc1+$02);
        
	        // Mid-Btm cloud tiles
	            _tsrc1    = _tsrc+$0B;
	            //_tsrc1    = $E3; // $E3 3rd color added for extra shading
	        var _TSRC_C0  = hex_str(_tsrc1+$00);
	        var _TSRC_C1  = hex_str(_tsrc1+$01);
        
	        // Btm cloud tiles
	            //_tsrc1    = _tsrc+$05; // reg cloud btm
	            //_tsrc1    = $34; // $34 tree leaves btm
	            _tsrc1    = $E5; // $E5 3rd color added for extra shading
	        var _TSRC_D0  = hex_str(_tsrc1+$01);
	        var _TSRC_D1  = hex_str(_tsrc1+$00);
        
        
        
	        _ts_idx_data  = "";
	        _tsrc_data    = "";
	        _rcoff_data   = "";
	        _flip_data    = "";
        
        
	        // Row 1 ---------------------------------------------
	        // 0100 0101
	        _i=$00;
	        // Tile 1                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_A0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 2                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_A1;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 3                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_A0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 4                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_A0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 5                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_A0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 6                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_A1;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 7                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_A0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 8                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_A1;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        //                                  //
	        // Row 2 ---------------------------------------------
	        // 2012 0201
	        _i=$10;
	        // Tile 1                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_B2;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 2                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_B0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 3                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_B1;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 4                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_B2;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 5                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_B0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 6                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_B2;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 7                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_B0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 8                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_B1;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        //                                  //
	        // Row 3 ---------------------------------------------
	        // 0101 0101
	        _i=$20;
	        // Tile 1                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_C0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 2                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_C1;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 3                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_C0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 4                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_C1;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 5                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_C0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 6                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_C1;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 7                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_C0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 8                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_C1;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        //                                  //
	        // Row 4 ---------------------------------------------
	        // 0101 0101
	        _i=$30;
	        // Tile 1                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_D0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 2                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_D1;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 3                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_D0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 4                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_D1;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 5                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_D0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 6                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_D1;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 7                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_D0;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        // Tile 8                           //
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += _TSRC_D1;
	        _rcoff_data  += hex_str(_i++);
	        _flip_data   += "00";
	        //                                  //
        
        
	        CloudLarge1_SPR1 = sprite_create_with_tiles(_ts_idx_data, _tsrc_data, _rcoff_data, _flip_data);
	    }
    
    
    
    
    
    
    
    
    
	    // ================================================================================
	    // -----------------------------------------------------------------------
	    if (             !TownDoor1_SPR  // first g_Draw() frame
	    || !sprite_exists(TownDoor1_SPR) )
	    {
	        _ts_idx = hex_str(max(0, ds_list_find_index(dl_tileset, ts_Man_made_1a_WRB)));
	        _tsrc   = $D8;
        
	        // Tile 1
	        _ts_idx_data  = _ts_idx;
	        _tsrc_data    = hex_str(_tsrc+0);
	        _rcoff_data   = "00";
	        _flip_data    = "00";
        
	        // Tile 2
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc+0);
	        _rcoff_data  += "01";
	        _flip_data   += "00";
        
	        // Tile 3
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc+0);
	        _rcoff_data  += "10";
	        _flip_data   += "00";
        
	        // Tile 4
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc+0);
	        _rcoff_data  += "11";
	        _flip_data   += "00";
        
        
        
        
	        // Tile 5.  doorknob
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc+1);
	        _rcoff_data  += "20";
	        _flip_data   += "00";
        
	        // Tile 6
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc+0);
	        _rcoff_data  += "21";
	        _flip_data   += "00";
        
	        // Tile 7
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc+0);
	        _rcoff_data  += "30";
	        _flip_data   += "00";
        
	        // Tile 8
	        _ts_idx_data += _ts_idx;
	        _tsrc_data   += hex_str(_tsrc+0);
	        _rcoff_data  += "31";
	        _flip_data   += "00";
        
        
	        TownDoor1_SPR = sprite_create_with_tiles(_ts_idx_data, _tsrc_data, _rcoff_data, _flip_data);
	    }
    
    
    
	    sprites_created = true;
	}







}
