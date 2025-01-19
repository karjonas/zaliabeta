/// @description  Cloud_1_init()
function Cloud_1_init() {


	var _i,_j,_idx, _a, _val, _count,_num,_num_;
	var _x,_y, _w,_h, _dist;
	var _str, _datakey1,_datakey2;
	var _tsrc;
	var _spr;



	GO_depth_init(g.DEPTH_CLOUD);


	var                   _RM_BGR_COLOR_IDX = p.CI_BLK1;
	if (g.room_type=="A") _RM_BGR_COLOR_IDX = val(g.dm_rm[?g.rm_name+STR_Background_color], _RM_BGR_COLOR_IDX);

	GO_init_palidx(PI_CLOUD_1); // PI_CLOUD_1==PI_BGR_4(@040921).
	if (isVal(_RM_BGR_COLOR_IDX, $01,$02,$03, $08, $09,$0B, $0C, $0D,$1D,$2D))
	{   palidx_permut = 5;  } // 5: SMH(Blue,Red,White)
	// {   palidx_permut = 3;  } // 3: MSH(Red,Blue,White)
	//colour_get_value(p.dl_COLOR[|p.col_idx_bg]);
	//colour_get_value(background_colour);
	if(!is_undefined(dk_spawn))
	{
	    if(!is_undefined( g.dm_rm[?dk_spawn+STR_Data+"01"]))
	    {   palidx_permut=g.dm_rm[?dk_spawn+STR_Data+"01"];  }
	}
	//GO_pal_idx_init(palidx_def); // 



	scr_update   = Cloud_1_Step;
	scr_draw     = Cloud_1_Draw;
	scr_inst_end = Cloud_1_end;


	_val = val(g.dm_rm[?dk_spawn+"_xy"], $0000);
	xl = ((_val>>0)&$FF)<<3;
	yt = ((_val>>8)&$FF)<<3;

	DRAW_XOFF += xl;
	DRAW_YOFF += yt;




	DIST1 = $02<<8; // Dist to travel from start x before reseting to start x.
	DIST2 = $01<<8; // For v1. Vertical dist between yt of each set
	DIST3 = $03<<3; // For v2. Vertical dist between each set


	can_move = !!g.mod_CLOUD_MOVEMENT;


	hspd = -1; // 


	// num of same cloud gets drawn, each 2 pages apart
	COPY_COUNT  = g.rm_pages_x + (g.rm_pages_x&$1);


	// Lower the value, the faster.
	var _DELAY_MOVE_1 = 2; // 1
	var _DELAY_MOVE_2 = 3; // 2
	var _DELAY_MOVE_3 = 4; // 4, 3
	var _DELAY_MOVE_4 = 5;
	var _DELAY_MOVE_5 = 6;
	//if(1){_DELAY_MOVE_2=_DELAY_MOVE_1; _DELAY_MOVE_3=_DELAY_MOVE_1;}


	// ----------------------------------------------------------
	SPR_1A = spr_cloud_1a; // short
	SPR_2A = spr_cloud_2a; // long
	var _dl_SPR = ds_list_create();
	ds_list_add(_dl_SPR, SPR_1A);
	ds_list_add(_dl_SPR, SPR_2A);


	CLOUD_COUNT = 6;
	dg_cloud = ds_grid_create(CLOUD_COUNT,9);
	//                                                              // 
	          _a=0;
	dg_cloud[#_a,0]  = $00<<3;               // x (left edge of image)
	dg_cloud[#_a,1]  = $00<<3;               // y (top  edge of image)
	dg_cloud[#_a,2]  = _DELAY_MOVE_2;        // timer reset(speed)
	dg_cloud[#_a,3]  = dg_cloud[#_a,2];      // timer
	dg_cloud[#_a,4]  = SPR_2A;               // sprite
	dg_cloud[#_a,5]  = sprite_get_width( dg_cloud[#_a,4]); // cloud width
	dg_cloud[#_a,6]  = sprite_get_height(dg_cloud[#_a,4]); // cloud height
	dg_cloud[#_a,7]  = dg_cloud[#_a,0]; // start x
	dg_cloud[#_a,8]  = dg_cloud[#_a,1]; // start y
	//                                                              // 
	/*
	          _a++;
	dg_cloud[#_a,0]  = $30<<3;               // x (left edge of image)
	dg_cloud[#_a,1]  = $02<<3;               // y (top  edge of image)
	dg_cloud[#_a,2]  = _DELAY_MOVE_2;        // timer reset(speed)
	dg_cloud[#_a,3]  = dg_cloud[#_a,2];      // timer
	dg_cloud[#_a,4]  = SPR_1A;               // sprite
	dg_cloud[#_a,5]  = sprite_get_width( dg_cloud[#_a,4]); // cloud width
	dg_cloud[#_a,6]  = sprite_get_height(dg_cloud[#_a,4]); // cloud height
	dg_cloud[#_a,7]  = dg_cloud[#_a,0]; // start x
	dg_cloud[#_a,8]  = dg_cloud[#_a,1]; // start y
	*/
	//                                                              // 
	          _a++;
	dg_cloud[#_a,0]  = $08<<3;               // x (left edge of image)
	dg_cloud[#_a,1]  = $06<<3;               // y (top  edge of image)
	dg_cloud[#_a,2]  = _DELAY_MOVE_3;        // timer reset(speed)
	dg_cloud[#_a,3]  = dg_cloud[#_a,2];      // timer
	dg_cloud[#_a,4]  = SPR_2A;               // sprite
	dg_cloud[#_a,5]  = sprite_get_width( dg_cloud[#_a,4]); // cloud width
	dg_cloud[#_a,6]  = sprite_get_height(dg_cloud[#_a,4]); // cloud height
	dg_cloud[#_a,7]  = dg_cloud[#_a,0]; // start x
	dg_cloud[#_a,8]  = dg_cloud[#_a,1]; // start y
	//                                                              // 
	          _a++;
	dg_cloud[#_a,0]  = $0C<<3;               // x (left edge of image)
	dg_cloud[#_a,1]  = $0A<<3;               // y (top  edge of image)
	dg_cloud[#_a,2]  = _DELAY_MOVE_2;        // timer reset(speed)
	dg_cloud[#_a,3]  = dg_cloud[#_a,2];      // timer
	dg_cloud[#_a,4]  = SPR_1A;               // sprite
	dg_cloud[#_a,5]  = sprite_get_width( dg_cloud[#_a,4]); // cloud width
	dg_cloud[#_a,6]  = sprite_get_height(dg_cloud[#_a,4]); // cloud height
	dg_cloud[#_a,7]  = dg_cloud[#_a,0]; // start x
	dg_cloud[#_a,8]  = dg_cloud[#_a,1]; // start y
	//                                                              // 
	          _a++;
	dg_cloud[#_a,0]  = $1C<<3;               // x (left edge of image)
	dg_cloud[#_a,1]  = $08<<3;               // y (top  edge of image)
	dg_cloud[#_a,2]  = _DELAY_MOVE_1;        // timer reset(speed)
	dg_cloud[#_a,3]  = dg_cloud[#_a,2];      // timer
	dg_cloud[#_a,4]  = SPR_2A;               // sprite
	dg_cloud[#_a,5]  = sprite_get_width( dg_cloud[#_a,4]); // cloud width
	dg_cloud[#_a,6]  = sprite_get_height(dg_cloud[#_a,4]); // cloud height
	dg_cloud[#_a,7]  = dg_cloud[#_a,0]; // start x
	dg_cloud[#_a,8]  = dg_cloud[#_a,1]; // start y
	//                                                              // 
	          _a++;
	dg_cloud[#_a,0]  = $28<<3;               // x (left edge of image)
	dg_cloud[#_a,1]  = $04<<3;               // y (top  edge of image)
	dg_cloud[#_a,2]  = _DELAY_MOVE_3;        // timer reset(speed)
	dg_cloud[#_a,3]  = dg_cloud[#_a,2];      // timer
	dg_cloud[#_a,4]  = SPR_1A;               // sprite
	dg_cloud[#_a,5]  = sprite_get_width( dg_cloud[#_a,4]); // cloud width
	dg_cloud[#_a,6]  = sprite_get_height(dg_cloud[#_a,4]); // cloud height
	dg_cloud[#_a,7]  = dg_cloud[#_a,0]; // start x
	dg_cloud[#_a,8]  = dg_cloud[#_a,1]; // start y
	//                                                              // 
	          _a++;
	dg_cloud[#_a,0]  = $38<<3;               // x (left edge of image)
	dg_cloud[#_a,1]  = $0C<<3;               // y (top  edge of image)
	dg_cloud[#_a,2]  = _DELAY_MOVE_1;        // timer reset(speed)
	dg_cloud[#_a,3]  = dg_cloud[#_a,2];      // timer
	dg_cloud[#_a,4]  = SPR_2A;               // sprite
	dg_cloud[#_a,5]  = sprite_get_width( dg_cloud[#_a,4]); // cloud width
	dg_cloud[#_a,6]  = sprite_get_height(dg_cloud[#_a,4]); // cloud height
	dg_cloud[#_a,7]  = dg_cloud[#_a,0]; // start x
	dg_cloud[#_a,8]  = dg_cloud[#_a,1]; // start y
	//                                                              // 

	// CLOUD_COUNT = ds_grid_width(dg_cloud);



	/*
	var _CLOUD_COUNT_UNIQUE = CLOUD_COUNT;

	dm_cloud = ds_map_create();
	          _datakey1=STR_Count;
	dm_cloud[?_datakey1+STR_Base]   = _CLOUD_COUNT_UNIQUE; // 5 unique, the rest are copies
	dm_cloud[?_datakey1]            = _CLOUD_COUNT_UNIQUE; // The total instances.

	CLOUD_COUNT = (_CLOUD_COUNT_UNIQUE * COPY_COUNT) * g.rm_pages_y;
	for(_i=0; _i<CLOUD_COUNT; _i++)
	{
	    _num      = _i+1;
	    _datakey1 = hex_str(_num);
    
	    _idx = _i mod _CLOUD_COUNT_UNIQUE;
	    _x   = dg_cloud[#_idx,0];
	    dm_cloud[?_datakey1+"_xl"] = _x; // current
	    dm_cloud[?_datakey1+"_XL"] = _x; // starting
    
	    _y   = dg_cloud[#_idx,1];
	    dm_cloud[?_datakey1+"_yt"] = _y;
	    dm_cloud[?_datakey1+"_YT"] = _y;
    
	    _spr = dg_cloud[#_idx,4];
	    // _spr = _dl_SPR[|irandom(ds_list_size(_dl_SPR)-1)];
	    dm_cloud[?_datakey1+STR_Sprite]  = _spr;
	    dm_cloud[?_datakey1+STR_Width]   = sprite_get_width( _spr);
	    dm_cloud[?_datakey1+STR_Height]  = sprite_get_height(_spr);
    
	    // _val = irandom(2)+2; // irandom(2)+2 = 2,3,4
	    dm_cloud[?_datakey1+STR_Timer+STR_Reset] = dg_cloud[#_i,2]; // speed
	    dm_cloud[?_datakey1+STR_Timer]           = _val;
	}
	*/


	ds_list_destroy(_dl_SPR); _dl_SPR=undefined;



	CloudArea_W    = DIST1;
	CloudArea_H    = 0;
	CloudArea_XL   = 0;
	CloudArea_XR   = CloudArea_XL + CloudArea_W;
	CloudArea_YT   = g.rm_h;
	CloudArea_YB   = 0;
	// Y_HIGH  = 0;
	// Y_LOW   = $100;
	for(_i=0; _i<CLOUD_COUNT; _i++) // each cloud
	{
	    if (CloudArea_YT > dg_cloud[#_i,1])
	    {   CloudArea_YT = dg_cloud[#_i,1];  }
    
	    if (CloudArea_YB < dg_cloud[#_i,1]+dg_cloud[#_i,6])
	    {   CloudArea_YB = dg_cloud[#_i,1]+dg_cloud[#_i,6];  }
	}

	CloudArea_H     = CloudArea_YB-CloudArea_YT;
	CloudArea_YT    = ((g.rm_pages_y-1)<<8) + (CloudArea_YT&$FF);
	CloudArea_YB    = CloudArea_YT + CloudArea_H;

	/*
	switch(ver)
	{
	    // ------------------------------------------------------------
	    case 1:{     // ----------------------------------------
    
	    break;
    
    
    
    
    
    
    
	    // ------------------------------------------------------------
	    case 2:{     // ----------------------------------------
	    var _dg_CLOUD = ds_grid_create(1,1);
	    ds_grid_copy(_dg_CLOUD, dg_cloud);
	    ds_grid_clear(dg_cloud,0);
	    for(_i=0; _i<CLOUD_COUNT; _i++) // each cloud
	    {
	        for(_j=0; _j<CLOUD_COUNT; _j++) // each cloud
	        {
	            if (_dg_CLOUD[#_i,1]==CloudArea_YT)
	        }
	    }
    
	    ds_grid_destroy(_dg_CLOUD); _dg_CLOUD = undefined;
    
    
	    // dm_cloud = ds_map_create();
	    break;
	}
	*/



	/*
	// ----------------------------------------------------------
	//  USE TILES -----------------------------
	COPY_COUNT  = g.rm_pages_x + (g.rm_pages_x&1);
	COPY_COUNT  = (COPY_COUNT>>1) + 1;
	TS1 = ts_Natural_1a_WRB;
	//                      top half            btm half
	var _TS_DATA_CLOUD_1 = "0708"+  "0C"   +   "09"  +"0A0B";
	var _TS_DATA_CLOUD_2 = "0708"+"080C"   +   "090A"+"0A0B";


	_count = max(string_length(_TS_DATA_CLOUD_1)>>1,string_length(_TS_DATA_CLOUD_2)>>1);

	dg_cloud = ds_grid_create(5,7+_count);
	//                                                              // 
	dg_cloud[# 0,0] = $140;                 // x
	dg_cloud[# 0,1] = $020;                 // y
	dg_cloud[# 0,2] = _DELAY_MOVE_3;        // timer reset
	dg_cloud[# 0,3] = dg_cloud[# 0,2];      // timer
	dg_cloud[# 0,4] = _TS_DATA_CLOUD_1;     // ts grid xy
	// dg_cloud[# 0,5] = (string_length(dg_cloud[# 0,4]) >>2) <<3; // cloud width
	//                                                              // 
	dg_cloud[# 1,0] = $040;                 // x
	dg_cloud[# 1,1] = $030;                 // y
	dg_cloud[# 1,2] = _DELAY_MOVE_3;        // timer reset
	dg_cloud[# 1,3] = dg_cloud[# 1,2];      // timer
	dg_cloud[# 1,4] = _TS_DATA_CLOUD_2;     // ts grid xy
	// dg_cloud[# 1,5] = (string_length(dg_cloud[# 1,4]) >>2) <<3; // cloud width
	//                                                              // 
	dg_cloud[# 2,0] = $0E0;                 // x
	dg_cloud[# 2,1] = $040;                 // y
	dg_cloud[# 2,2] = _DELAY_MOVE_1;        // timer reset
	dg_cloud[# 2,3] = dg_cloud[# 2,2];      // timer
	dg_cloud[# 2,4] = _TS_DATA_CLOUD_2;     // ts grid xy
	// dg_cloud[# 2,5] = (string_length(dg_cloud[# 2,4]) >>2) <<3; // cloud width
	//                                                              // 
	dg_cloud[# 3,0] = $060;                 // x
	dg_cloud[# 3,1] = $050;                 // y
	dg_cloud[# 3,2] = _DELAY_MOVE_2;        // timer reset
	dg_cloud[# 3,3] = dg_cloud[# 3,2];      // timer
	dg_cloud[# 3,4] = _TS_DATA_CLOUD_1;     // ts grid xy
	// dg_cloud[# 3,5] = (string_length(dg_cloud[# 3,4]) >>2) <<3; // cloud width
	//                                                              // 
	dg_cloud[# 4,0] = $1C0;                 // x
	dg_cloud[# 4,1] = $060;                 // y
	dg_cloud[# 4,2] = _DELAY_MOVE_1;        // timer reset
	dg_cloud[# 4,3] = dg_cloud[# 4,2];      // timer
	dg_cloud[# 4,4] = _TS_DATA_CLOUD_2;     // ts grid xy
	// dg_cloud[# 4,5] = (string_length(dg_cloud[# 4,4]) >>2) <<3; // cloud width
	//                                                              // 

	            CLOUD_COUNT = ds_grid_width(dg_cloud);
	for (_i=0; _i<CLOUD_COUNT; _i++)
	{
	    _a      = 4;
	    _str    = dg_cloud[#_i,_a++];
	    _count  = string_length(_str)>>1;
    
	    // set cloud width
	    dg_cloud[#_i,_a++] = (_count>>1)<<3;
    
	    // set cloud tile count
	    dg_cloud[#_i,_a++] = _count;
    
	    // add tsrc data
	    for (_j=0; _j<_count; _j++) // each tile
	    {
	        dg_cloud[#_i,_a++] = str_hex(_str,_j);
	        // _tsrc = str_hex(_str,_j);
	    }
	}
	*/



	/*
	for (var _i=4; _i>=0; _i--) { for (var _j=4; _j>=0; _j--) ar_clouds[_i, _j] = 0; }

	ar_clouds[0, 0] = $140;                // x
	ar_clouds[0, 1] = $020;                // y
	ar_clouds[0, 2] = _DELAY_MOVE_3;        // timer reset
	ar_clouds[0, 3] = ar_clouds[0, 2];     // timer
	ar_clouds[0, 4] = _TS_DATA_CLOUD_1;        // ts grid xy

	ar_clouds[1, 0] = $040;                // x
	ar_clouds[1, 1] = $030;                // y
	ar_clouds[1, 2] = _DELAY_MOVE_3;        // timer reset
	ar_clouds[1, 3] = ar_clouds[1, 2];     // timer
	ar_clouds[1, 4] = _TS_DATA_CLOUD_2;        // ts grid xy

	ar_clouds[2, 0] = $0E0;                // x
	ar_clouds[2, 1] = $040;                // y
	ar_clouds[2, 2] = _DELAY_MOVE_1;        // timer reset
	ar_clouds[2, 3] = ar_clouds[2, 2];     // timer
	ar_clouds[2, 4] = _TS_DATA_CLOUD_2;        // ts grid xy

	ar_clouds[3, 0] = $060;                // x
	ar_clouds[3, 1] = $050;                // y
	ar_clouds[3, 2] = _DELAY_MOVE_2;        // timer reset
	ar_clouds[3, 3] = ar_clouds[3, 2];     // timer
	ar_clouds[3, 4] = _TS_DATA_CLOUD_1;        // ts grid xy

	ar_clouds[4, 0] = $1C0;                // x
	ar_clouds[4, 1] = $060;                // y
	ar_clouds[4, 2] = _DELAY_MOVE_1;        // timer reset
	ar_clouds[4, 3] = ar_clouds[4, 2];     // timer
	ar_clouds[4, 4] = _TS_DATA_CLOUD_2;        // ts grid xy


	CLOUD_COUNT = array_height_2d(ar_clouds);

	// num of same cloud gets drawn, each 2 pages apart
	COPY_COUNT  = room_width >>8;
	COPY_COUNT += (COPY_COUNT & 1);
	COPY_COUNT  = (COPY_COUNT >>1) + 1;
	*/







}
