/// @description  PlatformCloud_draw_1a()
function PlatformCloud_draw_1a() {


	if (              Cloud_SPR1 
	&&  sprite_exists(Cloud_SPR1) )
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}




	var _i,_j,_idx, _a;

	var _TSRC0  = $C0;
	// var _TSRC1  = _TSRC0
	var _TSRC0_ = hex_str(_TSRC0);
	var _TL0    = _TSRC0;          // TL: TOP LFT
	var _TL1    = _TSRC0+$D;       // TL: TOP LFT
	var _BL0    = _TSRC0+$4;       // BL: BTM LFT
	//                                      // 
	var _TR0    = _TSRC0+$3;       // TR: TOP RGT. Small one
	var _TR1    = _TSRC0+$2;       // TR: TOP RGT
	var _BR0    = _TSRC0+$7;       // BR: BTM RGT
	// var _BR1   = _TSRC0+$4;        // BR: BTM RGT
	//                                      // 
	var _TM0    = _TSRC0+$1;       // TM: TOP MID
	var _TM1    = _TSRC0+$E;       // TM: TOP MID
	//                                      // 
	                      _a=$8;
	var _MT0    = _TSRC0+(_a++);   // MT: MID TOP
	var _MT1    = _TSRC0+(_a++);   // MT: MID TOP
	var _MT2    = _TSRC0+(_a++);   // MT: MID TOP
	var _MT3    = _TSRC0+_a+3;     // MT: MID TOP
	//                                      // 
	                      _a=$B;
	var _MB0    = _TSRC0+(_a++);   // MB: MID BTM
	var _MB1    = _TSRC0+(_a++);   // MB: MID BTM
	//                                      // 
	                      _a=$5;
	var _BM0    = _TSRC0+(_a++);   // BM: BTM MID
	var _BM1    = _TSRC0+(_a++);   // BM: BTM MID
	//                                      // 
	//                                      // 
	var _BM_00  = ( $00<<(0<<3)) + ( $00<<(1<<3)) + (_MB0<<(2<<3)) + (_BM0<<(3<<3));
	var _BM_11  = ( $00<<(0<<3)) + ( $00<<(1<<3)) + (_MB1<<(2<<3)) + (_BM1<<(3<<3));
	//                                      // 
	var _TM_00  = (_TM0<<(0<<3)) + (_MT0<<(1<<3)) + ( $00<<(2<<3)) + ( $00<<(3<<3));
	var _TM_01  = (_TM0<<(0<<3)) + (_MT1<<(1<<3)) + ( $00<<(2<<3)) + ( $00<<(3<<3));
	var _TM_02  = (_TM0<<(0<<3)) + (_MT2<<(1<<3)) + ( $00<<(2<<3)) + ( $00<<(3<<3));
	//                                      // 
	var _TM_10  = (_TM1<<(0<<3)) + (_MT0<<(1<<3)) + ( $00<<(2<<3)) + ( $00<<(3<<3));
	var _TM_11  = (_TM1<<(0<<3)) + (_MT1<<(1<<3)) + ( $00<<(2<<3)) + ( $00<<(3<<3));
	var _TM_12  = (_TM1<<(0<<3)) + (_MT2<<(1<<3)) + ( $00<<(2<<3)) + ( $00<<(3<<3));
	//                                      // 
	//                                      // 
	//                                      // 
	// var _TSIDX_DATA = 
	// var _TSRC_DATA  = 
	// var _RCOFF_DATA = 
	//                                      // 
	/*
	var _ar_TSRC = 0;
	for(_i=CLMS-1; _i>=0; _i--){
	    if (_i&1) _ar_TSRC[_i] = _BM_A2;
	    else      _ar_TSRC[_i] = _BM_A1;
	}
	*/
	//                                      // 
	// RGT end CLMS                         // 
	         _a=CLMS-1;
	_ar_TSRC[_a--] = ( $00<<(0<<3)) + (_TR0<<(1<<3)) + (_BR0<<(2<<3)) + ( $00<<(3<<3));
	_ar_TSRC[_a--] = (_TR0<<(0<<3)) + (_TR1<<(1<<3)) + (_BM0<<(2<<3)) + (_BR0<<(3<<3));
	_ar_TSRC[_a--] = (_TM0<<(0<<3)) + (_MT1<<(1<<3)) + (_MB0<<(2<<3)) + (_BM0<<(3<<3));
	//                                      // 
	// LFT end clms                         // 
	         _a=0;
	_ar_TSRC[_a++] = ( $00<<(0<<3)) + (_TL0<<(1<<3)) + (_BL0<<(2<<3)) + ( $00<<(3<<3));
	_ar_TSRC[_a++] = (_TL0<<(0<<3)) + (_TL1<<(1<<3)) + (_MB0<<(2<<3)) + (_BL0<<(3<<3));
	_ar_TSRC[_a++] = (_TM0<<(0<<3)) + (_MT1<<(1<<3)) + (_MB0<<(2<<3)) + (_BM0<<(3<<3));
	//                                      // 
	//                                      // 
	//                                      // 
	var _ar_MID = 0;
	        _a=0;
	_ar_MID[_a++] = _TM_02 + _BM_00;        // 
	_ar_MID[_a++] = _TM_10 + _BM_11;        // 
	//                                      // 
	_ar_MID[_a++] = _TM_01 + _BM_00;        // 
	_ar_MID[_a++] = _TM_02 + _BM_11;        // 
	//                                      // 
	_ar_MID[_a++] = _TM_00 + _BM_00;        // 
	_ar_MID[_a++] = _TM_12 + _BM_11;        // 
	//                                      // 
	_ar_MID[_a++] = _TM_00 + _BM_00;        // 
	_ar_MID[_a++] = _TM_02 + _BM_11;        // 
	//                                      // 
	_ar_MID[_a++] = _TM_10 + _BM_00;        // 
	_ar_MID[_a++] = _TM_01 + _BM_11;        // 
	//                                      // 
	_ar_MID[_a++] = _TM_00 + _BM_00;        // 
	_ar_MID[_a++] = _TM_12 + _BM_11;        // 
	//                                      // 
	var _COUNT1 = _a;
	var _COUNT2 = (CLMS_MIN>>1);
	for(_i=0; _i<CLMS-CLMS_MIN; _i++)
	// for(_i=(CLMS_MIN>>1); _i<CLMS-(CLMS_MIN>>1); _i++)
	{
	    _idx = _i mod _COUNT1;
	    _ar_TSRC[_i+_COUNT2] = _ar_MID[_idx];
	}
	//                                      // 
	//                                      // 
	var _tsrc_clm,_tsrc, _ts_x,_ts_y;
	//                                      // 
	     CLMS   = array_length_1d(_ar_TSRC);
	     CLMS   = clamp(CLMS, CLMS_MIN,CLMS_MAX);
	var _ROWS   = 4;
	//                                      // 
	var _SURF_W =  CLMS<<3;
	var _SURF_H = _ROWS<<3;
	var _SURF   = surface_create(_SURF_W,_SURF_H);
	surface_set_target(_SURF);
	draw_clear_alpha(c_white,0); // Because previous drawn pixels will still be there.
	//                                      // 
	for(_i=0; _i<CLMS; _i++) // Each clm
	{
	    _tsrc_clm = _ar_TSRC[_i];
	    for(_j=0; _j<_ROWS; _j++) // Each row/tsrc byte
	    {
	            _tsrc = (_tsrc_clm>>(_j<<3)) &$FF;
	        if(!_tsrc) continue;
        
	        _ts_x = ((_tsrc>>0)&$F)<<3;
	        _ts_y = ((_tsrc>>4)&$F)<<3;
        
	        _x    = _i<<3;
	        _y    = _j<<3;
	        draw_background_part(g.ts_Natural1_HMS, _ts_x,_ts_y, 8,8, _x,_y);
	        //draw_background_part_ext(ts_Natural_1a_WRB, _ts_x,_ts_y, 8,8, _x,_y, 1,1, c_white,1);
	    }
	}

	Cloud_SPR1 = sprite_create_from_surface(_SURF,0,0, _SURF_W,_SURF_H, false,false, _SURF_W>>1,_SURF_H>>1);
	sprite_set_offset(Cloud_SPR1, sprite_get_width(Cloud_SPR1)>>1,sprite_get_height(Cloud_SPR1)>>1);
	GO_sprite_init(Cloud_SPR1);
	set_xy(id, xl+(_SURF_W>>1), y);
	BODY_W  = (CLMS<<3) - (abs(BODY_XOFF)<<1);


	draw_clear_alpha(c_white, 0); // Because drawn pixels will still be there.
	surface_reset_target();
	surface_free(_SURF);

	_ar_TSRC = 0;
	_ar_MID  = 0;







}
