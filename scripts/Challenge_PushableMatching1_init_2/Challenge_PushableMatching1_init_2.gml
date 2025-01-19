/// @description  Challenge_PushableMatching1_init_2()
function Challenge_PushableMatching1_init_2() {


	var _i, _a, _val, _data;
	var _x,_y;
	var _clm1,_clm2, _row1,_row2;

	var _complete = false;
	if(!is_undefined(dk_spawn))
	{   _complete = (!!val(f.dm_quests[?dk_spawn+STR_Complete]));  }



	if (_complete)
	{
	    Door_state = 0;
	    sub_state  = sub_state_DONE;
	}
	else
	{
	    Door_state = 1;
	    var _SOLID = TID_SOLID1;
	    var _clm1,_clm2, _row1,_row2;
	        _clm1 = Door_XL>>3;
	        _row1 = Door_YT>>3;
	    for(_i=0; _i<Door_Blocks_COUNT; _i++)
	    {   // Add solid
	        _clm2 = _clm1;
	        _row2 = _row1+(_i<<1);
	        tile_change_1a(0, (_clm2+0)<<3,(_row2+0)<<3, -1,0, _SOLID);
	        tile_change_1a(0, (_clm2+1)<<3,(_row2+0)<<3, -1,0, _SOLID);
	        tile_change_1a(0, (_clm2+0)<<3,(_row2+1)<<3, -1,0, _SOLID);
	        tile_change_1a(0, (_clm2+1)<<3,(_row2+1)<<3, -1,0, _SOLID);
	    }
	}







}
