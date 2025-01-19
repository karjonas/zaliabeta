/// @description  dev_randomize_palette_1a(fail return value)
function dev_randomize_palette_1a(argument0) {


	with(p)
	{
	    var  _i;
	    var _val = 0;
	    var _pal_set = PAL_SET1;
	    /*
	    var _dl_list = ds_list_create();
	    ds_list_add(_dl_list, $01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C);
	    ds_list_add(_dl_list, $11,$12,$13,$14,$15,$16,$17,$18,$19,$1A,$1B,$1C);
	    ds_list_add(_dl_list, $00,$0D,$2D);
	    ds_list_shuffle(_dl_list);
	    _val = _dl_list[|0];
	    //_val = choose($00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C);
	    */
    
	    var          _COUNT = COL_PER_SET - (string_length(_pal_set)>>1);
	    for(_i=0; _i<_COUNT; _i++) // each color
	    {
	        // determine row of color grid. 0-3: darkest to brightest
	        switch(_i&3){
	        case 0:{_val=CI_BLK1; break;} // 1st color of each pal is black
	        case 1:{_val=dev_randomize_palette_highlight(); break;} // Highlight
	        case 2:{_val=dev_randomize_palette_midtone();   break;} // Mid-tone
	        case 3:{_val=dev_randomize_palette_shadow();    break;} // Shadow.  increase chance of dark color
	        }
        
	        if (_i&3)
	        {   // move color grid row to 2nd nybble, then determine color grid clm
	            //_val = dev_randomize_palette_1b(_val);
	        }
        
	        // add color idx to palette
	        _pal_set += hex_str(_val);
	    }
    
    
	    // Add dark pal data
	    if(!is_undefined(  pal_rm_dark))
	    {      _pal_set += pal_rm_dark;  }
	    else   _pal_set += pal_rm_dark_DEFAULT;
    
	    return _pal_set;
	}

	    return argument0; 
	//





















	/*
	/// dev_randomize_palette_1a(fail return value)


	with(p)
	{
	    var  _i;
	    var _val = 0;
	    var _pal_set = PAL_SET1;
    
	    var          _COUNT = COL_PER_SET - (string_length(_pal_set)>>1);
	    for(_i=0; _i<_COUNT; _i++) // each color
	    {
	        // determine row of color grid. 0-3: darkest to brightest
	        switch(_i&3){
	        case 0:{_val=CI_BLK1; break;} // 1st color of each pal is black
	        case 1:{_val=dev_randomize_palette_highlight(); break;} // Highlight
	        case 2:{_val=dev_randomize_palette_midtone();   break;} // Mid-tone
	        case 3:{_val=dev_randomize_palette_shadow();    break;} // Shadow.  increase chance of dark color
	        }
        
	        if (_i&3)
	        {   // move color grid row to 2nd nybble, then determine color grid clm
	            //_val = dev_randomize_palette_1b(_val);
	        }
        
	        // add color idx to palette
	        _pal_set += hex_str(_val);
	    }
    
    
	    // Add dark pal data
	    if(!is_undefined(  pal_rm_dark))
	    {      _pal_set += pal_rm_dark;  }
	    else   _pal_set += pal_rm_dark_DEFAULT;
    
	    return _pal_set;
	}

	    return argument0; 
	//
	*/








	/*
	/// dev_randomize_palette_1a(fail return value)


	// if(!g.canRandomizePalette)  return argument0; // toggle: ctrl + 'P'
	if(!defined(p.pal_rm_def))  return argument0;


	var _val;
	var _pal_set = p.PAL_GRP1;
	// var _COUNT   = p.COL_PER_SET - COL_PER_PAL; // remove menu
	var _COUNT   = p.COL_PER_SET - (string_length(_pal_set)>>1);

	for (var _i=0; _i<_COUNT; _i++) // each color
	{
	    // determine color grid row. 0-3: darkest to brightest
	    if (_i&3==3) _val = irandom(2+(irandom($B)==0)); // increase chance of dark color
	    else        _val = irandom(3);
    
	    // move color grid row to 2nd nybble, then determine color grid clm
	                _val = (_val<<4) + irandom($D); // $D: Last color in a column
    
	    // 1st color of each pal is black
	    if (_i&3==0) _val = p.CI_BLK1; // $0D: Black
    
	    // add color idx to palette
	    _pal_set += hex_str(_val);
	}


	// Add rest of data
	return _pal_set;
	// return _pal_set + strR(p.pal_rm_def, string_length(_pal_set)+1);


	// C: Color
	//        BGR1   BGR2   BGR3
	//        CCCC + CCCC + CCCC

	// LNK1   MOB1   MOB2   MOB3
	// CCCC + CCCC + CCCC + CCCC
	*/



}
