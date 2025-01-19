/// @description  Challenge_PushableMatching1_init_1()
function Challenge_PushableMatching1_init_1() {


	Challenge_init();


	var _i, _a, _val, _count, _data;
	var _x,_y, _clm,_row;

	                          _a=1;
	sub_state_IDLE          = _a++;
	sub_state_COMPLETE1     = _a++;
	sub_state_DONE          = _a++;
	sub_state               = sub_state_IDLE;


	DURATION1   = $40;
	DURATION2   = $25; // explode dur
	DRAW_CUE1   = $18;



	Floor_Y = (g.rm_row0+$1A)<<3;



	var _DATA_ROW  = hex_str(Floor_Y>>3);
	var _DATA      = _DATA_ROW+"0E";
	    _DATA     += _DATA_ROW+"15";
	    _DATA     += _DATA_ROW+"29";
	    _DATA     += _DATA_ROW+"30";
	if(!is_undefined(            dk_spawn) 
	&& !is_undefined(g.dm_spawn[?dk_spawn+STR_Data+"01"]) )
	{   _DATA  =     g.dm_spawn[?dk_spawn+STR_Data+"01"];  }


	_count = string_length(_DATA)>>2;
	dg_Switches = ds_grid_create(_count,4);
	for(_i=0; _i<_count; _i++)
	{
	    _data =       string_copy(_DATA, (_i<<2)+1, 4);
	    _x  = str_hex(string_copy(_data, 3,2));
	    _y  = str_hex(string_copy(_data, 1,2));
	    _x  = _x<<3;
	    _y  = _y<<3;
	    dg_Switches[#_i,0] = _x;
	    dg_Switches[#_i,1] = _y;
	}





	Blocks_SPR  = spr_Block_02a;
	Blocks_PI   = PI_BGR_3;



	Door_state          = 1; // 0: Nothing, 1: Norm, 2: Explode,
	Door_timer          = 0;
	Door_XL             = $06<<3;
	Door_YT             =(g.rm_row0+$0C)<<3;
	Door_Blocks_COUNT   = $03;
	//Door_YT             =(g.rm_row0+$0D)<<3;
	//Door_Blocks_COUNT   = $04;







}
