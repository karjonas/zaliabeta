/// @description  Challenge_SwitchB_update_1a(add or remove)
function Challenge_SwitchB_update_1a(argument0) {


	var _i,_j,_k, _x,_y, _tsrc;

	if (argument0)
	{
	    var _SOLID   = TID_SOLID1;
	    var _TILESET = ts_DungeonA01;
	    //var _TILESET = ts_Man_made_1a_WRB;
	}
	else
	{
	    var _SOLID   = 0;
	    var _TILESET = 0;
	}

	for(_i=0; _i<Blocks_COUNT_Y; _i++)
	{
	    for(_j=0; _j<Blocks_COUNT_X; _j++)
	    {
	        for(_k=0; _k<4; _k++)
	        {
	            _x = (xl+(_j<<4)) + ((_k&1)<<3);
	            _y = (yt+(_i<<4)) + ((_k>1)<<3);
	            _tsrc = str_hex(string_copy(Blocks_TSRC,(_k<<1)+1,2));
	            tile_change_1a(Blocks_DEPTH, _x,_y, _TILESET,_tsrc, _SOLID);
	        }
	    }
	}

	aud_play_sound(Blocks_SND_CHANGE);







}
